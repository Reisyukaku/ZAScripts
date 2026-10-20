from dataclasses import dataclass
from pathlib import Path
import argparse
import re
import sys
import tempfile
import os


@dataclass(frozen=True)
class Token:
    text: str
    start: int
    end: int
    kind: str = "code"


def tokens(source):
    position = 0
    while position < len(source):
        start = position
        char = source[position]
        if char.isspace():
            position += 1
            continue
        comment = source.startswith("--", position)
        bracket_at = position + 2 if comment else position
        opening = re.match(r"\[(=*)\[", source[bracket_at:bracket_at + 128])
        if opening:
            terminator = "]" + opening[1] + "]"
            close = source.find(terminator, bracket_at + opening.end())
            if close < 0:
                raise ValueError("Unterminated Lua long string or comment")
            position = close + len(terminator)
            if not comment:
                yield Token(source[start:position], start, position, "string")
            continue
        if comment:
            end = source.find("\n", position)
            position = len(source) if end < 0 else end
            continue
        if char in "\"'":
            position += 1
            while position < len(source):
                if source[position] == "\\":
                    position += 2
                elif source[position] == char:
                    position += 1
                    break
                else:
                    position += 1
            else:
                raise ValueError("Unterminated Lua quoted string")
            yield Token(source[start:position], start, position, "string")
            continue
        word = re.match(r"[A-Za-z_][A-Za-z_0-9]*|[0-9]+", source[position:position + 512])
        position += word.end() if word else 1
        yield Token(source[start:position], start, position)


RUNTIME = """local _za_create_table = lua_helper.createtable
local function _hx_new(prototype, arrayCapacity, hashCapacity)
    local instance
    if arrayCapacity == nil then
        instance = {__fields__ = {}}
    else
        instance = _za_create_table(arrayCapacity, hashCapacity)
    end
    local ancestors = {}
    while prototype ~= nil do
        ancestors[#ancestors + 1] = prototype
        local parent = getmetatable(prototype)
        if parent == nil then
            prototype = nil
        else
            prototype = parent.__index
        end
    end
    for level = #ancestors, 1, -1 do
        for key, value in pairs(ancestors[level]) do
            instance[key] = value
        end
    end
    return instance
end
local function _hx_bit_band(a, b) return a & b end
local function _hx_bit_bor(a, b) return a | b end
local function _hx_bit_bnot(a) return ~a end
local function _hx_bit_bxor(a, b) return a ~ b end
local function _hx_bit_lshift(a, b) return a << b end
local function _hx_bit_rshift(a, b) return a >> b end
local function _hx_bit_arshift(a, b) return a >> b end
local _G = _G

"""


class LuaAbiOutput:
    def __init__(self, source):
        self.source = source
        self.items = list(tokens(source))
        self.edits = []
        self.closing = {}
        stack = []
        for index, item in enumerate(self.items):
            if item.kind != "code":
                continue
            if item.text in ("(", "{", "["):
                stack.append(index)
            elif item.text in (")", "}", "]"):
                if not stack or self.items[stack[-1]].text != {")": "(", "}": "{", "]": "["}[item.text]:
                    raise ValueError("Unbalanced Lua delimiters")
                self.closing[stack.pop()] = index
        if stack:
            raise ValueError("Unclosed Lua delimiter")

    def edit(self, start, end, replacement):
        self.edits.append((start, end, replacement))

    def share_classes(self):
        
        
        lines = self.source.splitlines(keepends=True)
        offset = 0
        active = False
        protected = {"Array", "Lambda", "Math", "Reflect", "String", "Std", "Type"}
        code_starts = {item.start for item in self.items if item.kind == "code"}
        for line in lines:
            if active:
                if not line.strip():
                    break
                declaration = re.match(r"local ([A-Za-z_][A-Za-z_0-9]*)\b", line)
                if declaration and offset in code_starts and not any(declaration[1].startswith(name) for name in protected):
                    self.edit(offset, offset + 6, "")
                elif offset in code_starts and re.match(r"__(?:lua|haxe)[A-Za-z_0-9]*\s*=", line):
                    self.edit(offset, offset, "local ")
            elif offset in code_starts and re.match(r"local _hx_exports\s*=\s*_hx_exports\b", line):
                active = True
            offset += len(line)

    def rewrite_calls(self):
        items = self.items
        for index, item in enumerate(items):
            if item.kind != "code":
                continue
            if item.text == "_hx_new" and index >= 2 and [x.text for x in items[index-2:index]] == ["local", "function"]:
                self.edit(item.start, item.end, "_za_unused_haxe_allocator")
            if item.text == "_hx_bit" and index + 3 < len(items):
                dot, method, opening = items[index+1:index+4]
                if dot.text == "." and opening.text == "(" and method.text in {
                    "band", "bor", "bnot", "bxor", "lshift", "rshift", "arshift"
                }:
                    self.edit(item.start, method.end, "_hx_bit_" + method.text)
            if item.text != "_hx_tab_array" or index + 2 >= len(items):
                continue
            if items[index+1].text != "(" or items[index+2].text != "{":
                continue
            table = index + 2
            self.edit(items[table].end, items[table].end, "length=0,")

    def rewrite_slots(self):
        for index, item in enumerate(self.items):
            slot = re.fullmatch(r"[\"']@slot:(\d+)[\"']", item.text)
            if (slot and index > 0 and index+1 < len(self.items)
                and self.items[index-1].text == "[" and self.items[index+1].text == "]"):
                self.edit(item.start, item.end, slot[1])

    def render(self):
        self.share_classes()
        self.rewrite_calls()
        self.rewrite_slots()
        output = [RUNTIME]
        previous = 0
        for start, end, replacement in sorted(self.edits):
            if start < previous:
                raise ValueError("Overlapping Lua output edits")
            output.extend((self.source[previous:start], replacement))
            previous = end
        output.append(self.source[previous:])
        return "".join(output)


def transform(source):
    return LuaAbiOutput(source).render()


def lua_post_process(lua_input_path, lua_output_path):
    temporary = None
    try:
        source = Path(lua_input_path).read_text(encoding="utf-8")
        result = transform(source)
        destination = Path(lua_output_path)
        mode = destination.stat().st_mode if destination.exists() else None
        with tempfile.NamedTemporaryFile(mode="w", encoding="utf-8", dir=destination.parent, delete=False) as stream:
            temporary = Path(stream.name)
            stream.write(result)
        if mode is not None:
            temporary.chmod(mode)
        os.replace(temporary, destination)
        return True
    except (OSError, ValueError) as error:
        print(f"Lua ABI finalization failed: {error}", file=sys.stderr)
        return False
    finally:
        if temporary is not None:
            temporary.unlink(missing_ok=True)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    options = parser.parse_args()
    sys.exit(0 if lua_post_process(options.input, options.output) else 1)
