package haxe.macro.abi;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.Printer;
import haxe.Json;
import sys.io.File;
using Lambda;

/** AST-based cleanup: never edits reference material or rewrites source strings. */
class SourceClean
{
    static var classes:Dynamic;
    static var members:Dynamic;
    static var nativeMethods:Dynamic;
    static var nativeFallback:Dynamic;
    static var nativeScalarReturns:Dynamic;
    static var currentOwner:String;
    static var nativeClasses = new Map<String, Bool>();
    static var knownClasses = new Map<String, Bool>();
    static var knownCalls = new Map<String, Int>();
    static var realMembers = new Map<String, Bool>();
    static var printer = new Printer("    ");
    static var temporary = ~/^(?:value\d+(?:_\d+)?|L\d+_\d+|result\d+|returned)$/;
    static var dynamicType:ComplexType = TPath({pack: [], name: "Dynamic"});

    static function unwrap(e:Expr):Expr
    {
        return switch e.expr
        {
            case EUntyped(inner) | EParenthesis(inner): unwrap(inner);
            default: e;
        };
    }

    static function id(e:Expr):String
    {
        if (e == null) return null;
        return switch unwrap(e).expr
        {
            case EConst(CIdent(name)): name;
            default: null;
        };
    }

    static function string(e:Expr):String
    {
        return switch unwrap(e).expr
        {
            case EConst(CString(value, _)): value;
            default: null;
        };
    }

    static function expr(def:ExprDef, at:Expr):Expr
    {
        return {expr: def, pos: at.pos};
    }

    static function path(name:String, at:Expr):Expr
    {
        var parts = name.split(".");
        var out = expr(EConst(CIdent(parts.shift())), at);
        for (part in parts) out = expr(EField(out, part), at);
        return out;
    }

    static function call(name:String, args:Array<Expr>, at:Expr):Expr
    {
        return expr(ECall(path(name, at), args), at);
    }

    static function rendered(e:Expr):String
    {
        return printer.printExpr(unwrap(e));
    }

    static function qualified(e:Expr):String
    {
        return switch unwrap(e).expr
        {
            case EConst(CIdent(name)): name;
            case EField(owner, field):
                var base = qualified(owner);
                base == null ? null : base + "." + field;
            default: null;
        };
    }

    static function nullValue(e:Expr):Bool
    {
        return e != null && id(e) == "null";
    }

    static function boolExpr(e:Expr):Expr
    {
        var clean = unwrap(e);
        return switch clean.expr
        {
            case EConst(CIdent("true" | "false")): clean;
            case EBinop(OpEq | OpNotEq | OpLt | OpLte | OpGt | OpGte | OpBoolAnd | OpBoolOr, _, _): clean;
            case EUnop(OpNot, _, _): clean;
            default: call("lua.abi.Host.truthy", [e], e);
        };
    }

    static function simplify(e:Expr):Expr
    {
        // Lua and/or return operands, not booleans. Rewrite them as boolean
        // operators only when the surrounding expression explicitly asks for truth.
        switch unwrap(e).expr
        {
            case ECall(fn, [argument]) if (qualified(fn) == "lua.abi.Host.truthy"):
                switch unwrap(argument).expr
                {
                    case ECall(native, [template, left, right]) if (id(native) == "__lua__"):
                        var text = string(template);
                        if (text == "({0} and {1})" || text == "({0} or {1})")
                        {
                            var op = text == "({0} and {1})" ? OpBoolAnd : OpBoolOr;
                            return expr(EParenthesis(expr(EBinop(op, boolExpr(simplify(left)), boolExpr(simplify(right))), e)), e);
                        }
                    default:
                }
            default:
        }
        switch e.expr
        {
            case EBinop(OpAssign, lhs, rhs):
                switch unwrap(lhs).expr
                {
                    case EArray(receiver, key) if (string(key) != null):
                        return expr(EBinop(OpAssign, expr(EArray(simplify(receiver), key), lhs), simplify(rhs)), e);
                    default:
                }
            default:
        }
        e = ExprTools.map(e, simplify);
        var clean = unwrap(e);
        switch clean.expr
        {
            case ECall(fn, args):
                switch unwrap(fn).expr
                {
                    case EArray(owner, key) if (string(key) == "new" && qualified(owner) != null && knownClasses.exists(qualified(owner)) && !nativeClasses.exists(qualified(owner))):
                        var parts = qualified(owner).split(".");
                        return expr(ENew({pack: parts.slice(0, -1), name: parts[parts.length - 1]}, args), e);
                    case EField(owner, field) if (qualified(owner) != null && nativeClasses.exists(qualified(owner))):
                        var bindings = Reflect.field(nativeMethods, qualified(owner));
                        if (bindings == null || (!Reflect.hasField(bindings, field) && ![for (key in Reflect.fields(bindings)) Reflect.field(bindings, key).name].contains(field)))
                        {
                            // Unknown latest static entry points keep their exact
                            // Lua key and calling convention, without a receiver.
                            var fallback = nativeFallback == null ? null : Reflect.field(nativeFallback, qualified(owner));
                            var binding = fallback == null ? null : Reflect.field(fallback, field);
                            if (binding != null) return expr(ECall(expr(EField(path(binding, e), field), e), args), e);
                            return expr(ECall(expr(EArray(owner, expr(EConst(CString(field)), e)), e), args), e);
                        }
                    case EField(owner, field) if ((qualified(owner) == null || !knownClasses.exists(qualified(owner))) && ~/^(?:F[0-9A-F]{16}|f[0-9A-F]{8})$/.match(field) && args.length > 0 && rendered(owner) == rendered(args[0])):
                        return expr(ECall(fn, args.slice(1)), e);
                    default:
                }
                var name = qualified(fn);
                if (name == "__lua__" && args.length > 0)
                {
                    var template = string(args[0]);
                    var values = args.slice(1);
                    if (template == "_G" || template == "_ENV") return path("lua.Lua", e); // Replaced by field handling below.
                    if (template == "{}") return call("lua.abi.Host.emptyTable", [], e);
                    if (template == "_hx_tab_array") return path("lua.abi.Host.array", e);
                    if (template == "_hx_bind") return path("lua.abi.Host.bind", e);
                    if (template == "_hx_box_mr") return path("lua.abi.Host.boxResults", e);
                    if (template == "table.pack({0})" && values.length == 1)
                        return call("lua.abi.Host.results", values, e);
                    if (template != null && ~/^table\.pack\(\{0\}\(/.match(template) && values.length > 0)
                        return call("lua.abi.Host.results", [expr(EUntyped(expr(ECall(values[0], values.slice(1)), e)), e)], e);
                    if (template == "do" || template == "end") return expr(EBlock([]), e);
                    if ((template == "(-{0})" || template == "-{0}") && values.length == 1)
                        return expr(EUnop(OpNeg, false, values[0]), e);
                    var operators = [
                        "==" => OpEq, "~=" => OpNotEq, "<" => OpLt, "<=" => OpLte,
                        ">" => OpGt, ">=" => OpGte, "+" => OpAdd, "-" => OpSub,
                        "*" => OpMult, "/" => OpDiv,
                    ];
                    for (token => op in operators)
                    {
                        if ((template == "({0} " + token + " {1})" || template == "{0} " + token + " {1}") && values.length == 2)
                            return expr(EParenthesis(expr(EBinop(op, values[0], values[1]), e)), e);
                    }
                    if ((template == "({0} .. {1})" || template == "{0} .. {1}") && values.length == 2)
                        return call("lua.abi.Host.concat", values, e);
                }
                if (name == "lua.abi.Host.array" && args.length == 2 && rendered(args[1]) == "0")
                {
                    var empty = switch unwrap(args[0]).expr
                    {
                        case ECall(factory, []) if (qualified(factory) == "lua.abi.Host.emptyTable"): true;
                        case ECall(factory, [initial, fields]) if (qualified(factory) == "lua.Table.create" && nullValue(initial)):
                            switch unwrap(fields).expr
                            {
                                case EObjectDecl(entries): entries.foreach(function(field) return field.field == "length" && rendered(field.expr) == "0");
                                default: false;
                            }
                        default: false;
                    };
                    if (empty) return expr(EArrayDecl([]), e);
                }
                if (name == "lua.abi.Host.bind" && args.length == 2 && id(args[0]) == "this")
                {
                    switch unwrap(args[1]).expr
                    {
                        case EField(owner, field) if (id(owner) == "this" && currentOwner != null && knownCalls.exists(currentOwner + "." + field)):
                            return expr(EField(unwrap(owner), field), e);
                        default:
                    }
                }
                if (name == "lua.abi.Host.global" && args.length == 1)
                {
                    var abi = string(args[0]);
                    var real = abi == null ? null : Reflect.field(classes, abi);
                    if (real != null) return path(real, e);
                    var builtins = ["_hx_tab_array" => "lua.abi.Host.array", "_hx_bind" => "lua.abi.Host.bind", "_hx_box_mr" => "lua.abi.Host.boxResults"];
                    if (abi != null && builtins.exists(abi)) return path(builtins.get(abi), e);
                }
                if (name == "lua.abi.Host.truthy" && args.length == 1)
                {
                    var boolean = boolExpr(args[0]);
                    if (rendered(boolean) != rendered(clean)) return boolean;
                }
                if ((name == "lua.Boot.__cast" || name == "lua.abi.Host.checkedCast") && args.length == 2)
                {
                    var typeName = qualified(args[1]);
                    if (typeName != null && ~/^[A-Z]/.match(typeName.split(".").pop()))
                    {
                        var parts = typeName.split(".");
                        var last = parts.pop();
                        return expr(ECast(args[0], TPath({pack: parts, name: last})), e);
                    }
                }
                if ((name != null && knownCalls.exists(name)) || (name != null && StringTools.startsWith(name, "this.") && realMembers.exists(name.substr(5))))
                {
                    var actual = args.copy();
                    var arity = name != null && knownCalls.exists(name) ? knownCalls.get(name) : -1;
                    // Expanded return registers may remain as trailing local reads.
                    // A Haxe function has one result and its declaration fixes the
                    // argument count. Discard only inert reads/literals here.
                    if (arity >= 0 && actual.length > arity && actual.slice(arity).foreach(function(arg) return switch unwrap(arg).expr {case EConst(_): true; default: false;}))
                        actual = actual.slice(0, arity);
                    while (actual.length > 0 && nullValue(actual[actual.length - 1])) actual.pop();
                    if (actual.length != args.length) return expr(ECall(fn, actual), e);
                }
                // Calls through a known Haxe instance no longer need the Lua
                // receiver argument; ordinary Haxe instance calls supply it.
                switch unwrap(fn).expr
                {
                    case EField(receiver, field):
                        if (id(receiver) == "this" && (Reflect.hasField(members, field) || realMembers.exists(field) || ~/^F[0-9A-F]{16}$/.match(field)))
                        {
                            var actual = args.length > 0 && id(args[0]) == "this" ? args.slice(1) : args;
                            return expr(ECall(expr(EField(receiver, Reflect.hasField(members, field) ? Reflect.field(members, field) : field), e), actual), e);
                        }
                    default:
                }
            case EArray(receiver, key):
                var field = string(key);
                if (field != null && ~/^[A-Za-z_]\w*$/.match(field) && field != "new")
                {
                    var owner = rendered(receiver);
                    if (nativeClasses.exists(owner))
                    {
                        var bindings = Reflect.field(nativeMethods, owner);
                        if (bindings == null || !Reflect.hasField(bindings, field))
                        {
                            var fallback = nativeFallback == null ? null : Reflect.field(nativeFallback, owner);
                            var binding = fallback == null ? null : Reflect.field(fallback, field);
                            if (binding != null) return expr(EField(path(binding, e), field), e);
                            return e;
                        }
                    }
                    var resolved = field;
                    if (id(receiver) != "this" && (~/^[A-Za-z_][\w.]*\.[A-Z]\w*$/.match(owner) || ~/^[C][0-9A-F]{16}$/.match(owner)))
                    {
                        var name = Reflect.field(members, field);
                        if (name != null) resolved = name;
                    }
                    return expr(EUntyped(expr(EField(receiver, resolved), e)), e);
                }
            case EField(receiver, field):
                var owner = qualified(receiver);
                if (owner != "this" && owner != null && Reflect.hasField(members, field))
                {
                    if (knownClasses.exists(owner)) return expr(EUntyped(expr(EField(receiver, Reflect.field(members, field)), e)), e);
                }
                if (owner != null && nativeMethods != null && Reflect.hasField(nativeMethods, owner))
                {
                    var binding = Reflect.field(Reflect.field(nativeMethods, owner), field);
                    if (binding != null) return expr(EField(receiver, binding.name), e);
                }
                if (owner == "lua.Lua")
                {
                    var globals = ["coroutine" => "lua.Coroutine", "math" => "lua.Math", "table" => "lua.Table", "string" => "lua.NativeStringTools"];
                    var known = globals.get(field);
                    if (known != null) return path(known, e);
                    return call("lua.abi.Host.global", [expr(EConst(CString(field)), e)], e);
                }
            case EUntyped(inner):
                if (switch inner.expr {case EUntyped(_): true; default: false;}) return inner;
            default:
        }
        return e;
    }

    static function readCounts(e:Expr):Map<String, Int>
    {
        var counts = new Map<String, Int>();
        function visit(node:Expr):Void
        {
            var identifier = id(node);
            if (identifier != null)
            {
                counts.set(identifier, (counts.exists(identifier) ? counts.get(identifier) : 0) + 1);
                return;
            }
            switch unwrap(node).expr
            {
                case EBinop(OpAssign, lhs, rhs) if (id(lhs) != null): visit(rhs);
                case EVars(vars): for (variable in vars) if (variable.expr != null) visit(variable.expr);
                default: ExprTools.iter(node, visit);
            }
        }
        visit(e);
        return counts;
    }

    static function occurrences(e:Expr, name:String):Int
    {
        var count = id(e) == name ? 1 : 0;
        if (count == 1) return count;
        ExprTools.iter(e, function(child) count += occurrences(child, name));
        return count;
    }

    static function hasClosure(e:Expr):Bool
    {
        if (switch e.expr {case EFunction(_, _): true; default: false;}) return true;
        var found = false;
        ExprTools.iter(e, function(child) if (hasClosure(child)) found = true);
        return found;
    }

    static function pure(e:Expr):Bool
    {
        return switch unwrap(e).expr
        {
            case EConst(_) | EFunction(_, _): true;
            case EField(owner, _): pure(owner);
            case EArray(owner, key): pure(owner) && pure(key);
            case EBinop(OpAssign | OpAssignOp(_), _, _) | ECall(_, _) | ENew(_, _) | EThrow(_): false;
            default:
                var safe = true;
                ExprTools.iter(e, function(child) if (!pure(child)) safe = false);
                safe;
        };
    }

    static function definition(e:Expr):{name:String, value:Expr}
    {
        return switch unwrap(e).expr
        {
            case EBinop(OpAssign, lhs, rhs):
                var name = id(lhs);
                name == null ? null : {name: name, value: rhs};
            case EVars([v]) if (v.expr != null): {name: v.name, value: v.expr};
            default: null;
        };
    }

    static function reads(e:Expr, name:String):Int
    {
        return switch unwrap(e).expr
        {
            case EBinop(OpAssign, lhs, rhs) if (id(lhs) == name): occurrences(rhs, name);
            case EVars(vars):
                var count = 0;
                for (v in vars) if (v.expr != null) count += occurrences(v.expr, name);
                count;
            default: occurrences(e, name);
        };
    }

    static function substitute(e:Expr, name:String, rhs:Expr):Expr
    {
        if (id(e) == name) return expr(EParenthesis(rhs), e);
        switch unwrap(e).expr
        {
            case EBinop(OpAssign, lhs, value) if (id(lhs) != null):
                var changed = expr(EBinop(OpAssign, lhs, substitute(value, name, rhs)), e);
                return switch e.expr {case EUntyped(_): expr(EUntyped(changed), e); default: changed;};
            default:
        }
        return ExprTools.map(e, function(child) return substitute(child, name, rhs));
    }

    static function capturedUse(e:Expr, name:String):Bool
    {
        return switch unwrap(e).expr
        {
            case EFunction(_, _): occurrences(e, name) > 0;
            default:
                var captured = false;
                ExprTools.iter(e, function(child) if (capturedUse(child, name)) captured = true);
                captured;
        };
    }

    static function safeTarget(e:Expr, name:String):Bool
    {
        if (capturedUse(e, name)) return false;
        return switch unwrap(e).expr
        {
            case EIf(condition, _, _): occurrences(condition, name) == reads(e, name);
            case EWhile(_, _, _) | EFor(_, _) | ESwitch(_, _, _): false;
            default: true;
        };
    }

    static function mutations(e:Expr):Map<String, Bool>
    {
        var result = new Map<String, Bool>();
        function visit(node:Expr):Void
        {
            switch unwrap(node).expr
            {
                case EFunction(_, _): return;
                case EBinop(OpAssign | OpAssignOp(_), lhs, _) if (id(lhs) != null): result.set(id(lhs), true);
                case EUnop(OpIncrement | OpDecrement, _, operand) if (id(operand) != null): result.set(id(operand), true);
                default:
            }
            ExprTools.iter(node, visit);
        }
        visit(e);
        return result;
    }

    static function executedCall(e:Expr):Bool
    {
        return switch unwrap(e).expr
        {
            case EFunction(_, _): false;
            case ECall(fn, _) if (qualified(fn) == "lua.abi.Host.emptyTable"): false;
            case ECall(_, _) | ENew(_, _): true;
            default:
                var found = false;
                ExprTools.iter(e, function(child) if (executedCall(child)) found = true);
                found;
        };
    }

    static function stable(e:Expr):Bool
    {
        return switch unwrap(e).expr
        {
            case EConst(_): true;
            case EField(owner, field): (qualified(owner) != null && knownClasses.exists(qualified(owner))) && (Reflect.hasField(members, field) || realMembers.exists(field));
            case EFunction(_, _): true;
            case ECall(fn, args) if (qualified(fn) == "lua.Table.create"):
                var safe = true;
                for (arg in args) if (!pure(arg)) safe = false;
                safe;
            default: false;
        };
    }

    static function scalar(e:Expr):Bool
    {
        return switch unwrap(e).expr
        {
            case ECall(fn, _):
                var name = qualified(fn);
                if (name != null && knownCalls.exists(name) && name != "ti.Coroutine.yield") return true;
                switch unwrap(fn).expr
                {
                    case EField(owner, field) if (~/^F[0-9A-F]{16}$/.match(field)): return true;
                    case EField(_, field) if (nativeScalarReturns != null && Reflect.hasField(nativeScalarReturns, field)): return true;
                    case EField(owner, field) if (qualified(owner) != null && nativeMethods != null && Reflect.hasField(nativeMethods, qualified(owner))):
                        for (key in Reflect.fields(Reflect.field(nativeMethods, qualified(owner))))
                        {
                            var binding = Reflect.field(Reflect.field(nativeMethods, qualified(owner)), key);
                            if ((key == field || binding.name == field) && Reflect.field(binding, "return") != "Void" && !StringTools.contains(Reflect.field(binding, "return"), "MultiReturn")) return true;
                        }
                    default:
                }
                ["lua.abi.Host.checkedCast", "Std.string", "lua.abi.Host.object", "lua.abi.Host.anonymous",
                 "lua.abi.Host.array", "lua.abi.Host.bind", "main.event.ik.command.IkScriptCommand.EaseCameraType._new"].indexOf(name) >= 0
                || switch unwrap(fn).expr {case EArray(owner, key): (qualified(owner) != null && knownClasses.exists(qualified(owner))) && string(key) == "new"; default: false;};
            case ENew(_, _) | ECast(_, _): true;
            default: false;
        };
    }

    static function scalarReads(e:Expr, name:String):Expr
    {
        switch unwrap(e).expr
        {
            case EArray(owner, index) if (id(owner) == name && ~/^\d+$/.match(rendered(index))):
                return id(index) == null && rendered(index) == "1" ? owner : expr(EConst(CIdent("null")), e);
            default:
        }
        return ExprTools.map(e, function(child) return scalarReads(child, name));
    }

    static function optimize(e:Expr):Expr
    {
        e = ExprTools.map(e, optimize);
        switch e.expr
        {
            case EBlock(original):
                var statements:Array<Expr> = [];
                for (statement in original)
                {
                    var loopMarker = switch unwrap(statement).expr {
                        case ECall(fn, [name, _]): qualified(fn) == "lua.abi.Host.setGlobal" && string(name) != null && StringTools.startsWith(string(name), "_hx_do_first_");
                        default: false;
                    };
                    if (loopMarker) continue;
                    // The decompiler emits do/end wrappers around result spills.
                    switch unwrap(statement).expr
                    {
                        case EBlock(items) if (items.length > 0 && !items.exists(function(item) return switch item.expr {case EVars(vars): vars.exists(function(v) return !~/^result\d+$/.match(v.name)); default: false;})):
                            for (item in items) statements.push(item);
                        case EBlock([]):
                        default: statements.push(statement);
                    }
                }
                // Typed casts and Haxe constructors return exactly one value.
                // Replace their decompiler-created result packets with that value.
                for (i in 0...statements.length)
                {
                    var def = definition(statements[i]);
                    if (def == null) continue;
                    switch unwrap(def.value).expr
                    {
                        case ECall(fn, [value]) if (qualified(fn) == "lua.abi.Host.results" && scalar(value)):
                            switch unwrap(statements[i]).expr
                            {
                                case EVars(vars): vars[0].expr = value;
                                case EBinop(OpAssign, lhs, _): statements[i] = expr(EBinop(OpAssign, lhs, value), statements[i]);
                                default:
                            }
                            for (j in i + 1...statements.length)
                            {
                                var next = definition(statements[j]);
                                statements[j] = scalarReads(statements[j], def.name);
                                if (next != null && next.name == def.name) break;
                            }
                        default:
                    }
                }
                var folded = new Map<Int, Bool>();
                for (i in 0...statements.length)
                {
                    var def = definition(statements[i]);
                    if (def == null || qualified(unwrap(def.value)) != null) continue;
                    var empty = switch unwrap(def.value).expr {case ECall(fn, []): qualified(fn) == "lua.abi.Host.emptyTable"; default: false;};
                    if (!empty) continue;
                    var numbered = new Map<Int, Expr>();
                    var fields:Array<ObjectField> = [];
                    var end = i + 1;
                    while (end < statements.length)
                    {
                        var item = unwrap(statements[end]);
                        var field:String = null;
                        var number:Null<Int> = null;
                        var value:Expr = null;
                        switch item.expr
                        {
                            case EBinop(OpAssign, lhs, rhs):
                                switch unwrap(lhs).expr
                                {
                                    case EArray(owner, key) if (id(owner) == def.name):
                                        field = string(key);
                                        number = field == null ? Std.parseInt(rendered(key)) : null;
                                        value = rhs;
                                    case EField(owner, key) if (id(owner) == def.name): field = key; value = rhs;
                                    default:
                                }
                            default:
                        }
                        if (value == null || !pure(value) || occurrences(value, def.name) > 0) break;
                        if (number != null && numbered.exists(number)) break;
                        if (field != null && fields.exists(function(f) return f.field == field)) break;
                        if (number != null) numbered.set(number, value);
                        else if (field != null) fields.push({field: field, expr: value});
                        else break;
                        end++;
                    }
                    if (end == i + 1) continue;
                    var replacement:Expr = null;
                    if (!numbered.exists(0) && numbered.iterator().hasNext())
                    {
                        var max = 0;
                        for (key in numbered.keys()) if (key > max) max = key;
                        if (max <= 32)
                        {
                            var values = [for (key in 1...max + 1) numbered.exists(key) ? numbered.get(key) : expr(EConst(CIdent("null")), def.value)];
                            var arguments = [expr(EArrayDecl(values), def.value)];
                            if (fields.length > 0) arguments.push(expr(EObjectDecl(fields), def.value));
                            replacement = call("lua.Table.create", arguments, def.value);
                        }
                    }
                    else if (!numbered.iterator().hasNext())
                        replacement = call("lua.Table.create", [expr(EConst(CIdent("null")), def.value), expr(EObjectDecl(fields), def.value)], def.value);
                    else if (numbered.exists(0) && fields.length == 1 && fields[0].field == "length" && end < statements.length)
                    {
                        // A zero-based builder used only by _hx_tab_array is a
                        // Haxe array literal, not a native one-based vector.
                        var size:Null<Int> = null;
                        function replaceWrapper(node:Expr):Expr
                        {
                            switch unwrap(node).expr
                            {
                                case ECall(fn, [table, length]) if (qualified(fn) == "lua.abi.Host.array" && id(table) == def.name):
                                    var count = Std.parseInt(rendered(length));
                                    if (count != null && count >= 0 && count <= 256)
                                    {
                                        size = count;
                                        return expr(EConst(CIdent(def.name)), node);
                                    }
                                default:
                            }
                            return ExprTools.map(node, replaceWrapper);
                        }
                        var wrapped = replaceWrapper(statements[end]);
                        if (size != null)
                        {
                            statements[end] = wrapped;
                            replacement = expr(EArrayDecl([for (key in 0...size) numbered.exists(key) ? numbered.get(key) : expr(EConst(CIdent("null")), def.value)]), def.value);
                        }
                    }
                    if (replacement != null)
                    {
                        switch unwrap(statements[i]).expr
                        {
                            case EVars(vars): vars[0].expr = replacement;
                            case EBinop(OpAssign, lhs, _): statements[i] = expr(EBinop(OpAssign, lhs, replacement), statements[i]);
                            default:
                        }
                        for (j in i + 1...end) folded.set(j, true);
                    }
                }
                statements = [for (i in 0...statements.length) if (!folded.exists(i)) statements[i]];
                var declared = new Map<String, Bool>();
                for (statement in statements)
                    switch unwrap(statement).expr
                    {
                        case EVars(vars): for (variable in vars) declared.set(variable.name, true);
                        default:
                    }
                var changed = true;
                var passes = 0;
                while (changed && passes++ < 20)
                {
                    changed = false;
                    var refs = new Map<String, Array<{index:Int, count:Int}>>();
                    var writes = new Map<String, Array<Int>>();
                    var possibleWrites = new Map<String, Array<Int>>();
                    var barriers:Array<Int> = [0];
                    for (i in 0...statements.length)
                    {
                        for (name in mutations(statements[i]).keys())
                        {
                            if (!possibleWrites.exists(name)) possibleWrites.set(name, []);
                            possibleWrites.get(name).push(i);
                        }
                        var counts = readCounts(statements[i]);
                        for (name => count in counts)
                        {
                            if (!refs.exists(name)) refs.set(name, []);
                            refs.get(name).push({index: i, count: count});
                        }
                        var def = definition(statements[i]);
                        if (def != null)
                        {
                            if (!writes.exists(def.name)) writes.set(def.name, []);
                            writes.get(def.name).push(i);
                        }
                        var barrier = executedCall(statements[i]);
                        barriers.push(barriers[i] + (barrier ? 1 : 0));
                    }
                    var removed = new Map<Int, Bool>();
                    for (i in 0...statements.length)
                    {
                        var def = definition(statements[i]);
                        if (def == null || !temporary.match(def.name) || !refs.exists(def.name)) continue;
                        // A self-dependent store can carry state into the next loop iteration.
                        if (reads(def.value, def.name) != 0) continue;
                        if (nullValue(def.value) && !~/^result\d+$/.match(def.name) && switch unwrap(statements[i]).expr {case EVars(_): true; default: false;}) continue;
                        var until = statements.length;
                        for (index in writes.get(def.name)) if (index > i) { until = index; break; }
                        if (!declared.exists(def.name) && until == statements.length) continue;
                        var uses = 0;
                        var target = -1;
                        for (ref in refs.get(def.name))
                        {
                            if (ref.index > i && ref.index <= until && !removed.exists(ref.index))
                            {
                                uses += ref.count;
                                if (target < 0) target = ref.index;
                            }
                        }
                        if (uses == 0 && until < statements.length && !capturedUse(e, def.name))
                        {
                            switch unwrap(statements[i]).expr
                            {
                                case EVars(vars): vars[0].expr = null;
                                default:
                                    if (pure(def.value)) removed.set(i, true);
                                    else statements[i] = def.value;
                            }
                            changed = true;
                            continue;
                        }
                        if (uses != 1 || target < 0 || reads(statements[target], def.name) != 1 || !safeTarget(statements[target], def.name)) continue;
                        // Moving a call into a condition can make it conditional;
                        // moving it into an argument can reorder sibling calls.
                        // Keep the store unless the target is its direct return.
                        if (!pure(def.value) && !switch unwrap(statements[target]).expr
                        {
                            case EReturn(value): value != null && id(value) == def.name;
                            default: false;
                        }) continue;
                        if (!stable(def.value) && barriers[target] != barriers[i + 1]) continue;
                        var conditionalWrite = false;
                        if (possibleWrites.exists(def.name))
                            for (index in possibleWrites.get(def.name)) if (index > i && index < target) conditionalWrite = true;
                        if (conditionalWrite) continue;
                        var dependencies = readCounts(def.value);
                        var overwritten = false;
                        for (dependency in dependencies.keys())
                        {
                            if (possibleWrites.exists(dependency))
                                for (index in possibleWrites.get(dependency)) if (index > i && index < target) overwritten = true;
                        }
                        if (overwritten) continue;
                        statements[target] = substitute(statements[target], def.name, def.value);
                        removed.set(i, true);
                        changed = true;
                    }
                    statements = [for (i in 0...statements.length) if (!removed.exists(i)) statements[i]];
                }
                // Discard unreachable suffixes, not arbitrary null returns.
                var live:Array<Expr> = [];
                for (statement in statements)
                {
                    live.push(statement);
                    switch unwrap(statement).expr
                    {
                        case EReturn(_) | EThrow(_) | EBreak | EContinue: break;
                        default:
                    }
                    if (switch unwrap(statement).expr {case EReturn(_) | EThrow(_) | EBreak | EContinue: true; default: false;}) break;
                }
                statements = live;
                // Delete unused declarations and dead pure temporary stores.
                var used = new Map<String, Int>();
                for (statement in statements)
                {
                    for (name => count in readCounts(statement))
                        used.set(name, (used.exists(name) ? used.get(name) : 0) + count);
                }
                statements = [for (statement in statements) {
                    var def = definition(statement);
                    if (def != null && temporary.match(def.name) && declared.exists(def.name) && !used.exists(def.name) && !pure(def.value))
                        def.value;
                    else statement;
                }];
                statements = statements.filter(function(statement)
                {
                    return switch unwrap(statement).expr
                    {
                        case EVars(vars):
                            var written = mutations(e);
                            var keep = vars.filter(function(v) return !temporary.match(v.name) || written.exists(v.name) || (used.exists(v.name) && used.get(v.name) > 0) || (v.expr != null && !pure(v.expr)));
                            if (keep.length == 0) false;
                            else { statement.expr = EVars(keep); true; }
                        default:
                            var def = definition(statement);
                            def == null || !temporary.match(def.name) || !declared.exists(def.name) || (used.exists(def.name) && used.get(def.name) > 0) || !pure(def.value);
                    };
                });
                return expr(EBlock(statements), e);
            default:
        }
        return e;
    }

    static function locals(statements:Array<Expr>):Array<String>
    {
        var names:Array<String> = [];
        for (statement in statements)
        {
            switch unwrap(statement).expr
            {
                case EVars(vars): for (v in vars) if (names.indexOf(v.name) < 0) names.push(v.name);
                default:
            }
            var def = definition(statement);
            if (def != null && temporary.match(def.name) && names.indexOf(def.name) < 0) names.push(def.name);
        }
        return names;
    }

    static function stripNestedUntyped(e:Expr):Expr
    {
        return switch e.expr
        {
            case EFunction(_, _): e;
            case EUntyped(inner): stripNestedUntyped(inner);
            default: ExprTools.map(e, stripNestedUntyped);
        };
    }

    static function trim(e:Expr):Expr
    {
        e = ExprTools.map(e, trim);
        return switch e.expr
        {
            case EBlock(statements):
                var live:Array<Expr> = [];
                for (statement in statements)
                {
                    live.push(statement);
                    if (switch unwrap(statement).expr {case EReturn(_) | EThrow(_) | EBreak | EContinue: true; default: false;}) break;
                }
                expr(EBlock(live), e);
            case EUntyped(inner):
                var unwrapped = stripNestedUntyped(unwrap(inner));
                if (unwrapped != inner) return expr(EUntyped(unwrapped), e);
                switch inner.expr
                {
                    case EUntyped(_): inner;
                    case EConst(_): inner;
                    default: e;
                }
            case EParenthesis(inner):
                switch inner.expr
                {
                    case EParenthesis(_) | EConst(_) | EField(_, _) | EArray(_, _) | ECall(_, _) | ENew(_, _): inner;
                    default: e;
                }
            default: e;
        };
    }

    static function rename(e:Expr, mapping:Map<String, String>):Expr
    {
        e = ExprTools.map(e, function(child) return rename(child, mapping));
        switch e.expr
        {
            case EConst(CIdent(name)) if (mapping.exists(name)): e.expr = EConst(CIdent(mapping.get(name)));
            case EVars(vars): for (v in vars) if (mapping.exists(v.name)) v.name = mapping.get(v.name);
            case EFunction(_, fn): for (arg in fn.args) if (mapping.exists(arg.name)) arg.name = mapping.get(arg.name);
            default:
        }
        return e;
    }

    static function nativeBinding(owner:String, field:String):Dynamic
    {
        var methods = nativeMethods == null ? null : Reflect.field(nativeMethods, owner);
        if (methods == null) return null;
        if (Reflect.hasField(methods, field)) return {abi: field, info: Reflect.field(methods, field)};
        for (abi in Reflect.fields(methods))
        {
            var info = Reflect.field(methods, abi);
            if (info.name == field) return {abi: abi, info: info};
        }
        return null;
    }

    static function repairTypes(e:Expr):Expr
    {
        e = ExprTools.map(e, repairTypes);
        switch e.expr
        {
            case EUntyped(inner):
                switch unwrap(inner).expr
                {
                    case EField(owner, _):
                        var name = qualified(owner);
                        if (name != null && !knownClasses.exists(name) && name != "this") return inner;
                        if (id(owner) == "this" && switch unwrap(inner).expr {case EField(_, field): !~/^F[0-9A-F]{16}$/.match(field); default: false;}) return inner;
                    default:
                }
            case ECall(fn, args):
                switch unwrap(fn).expr
                {
                    case EField(owner, field):
                        var name = qualified(owner);
                        var binding = name == null ? null : nativeBinding(name, field);
                        if (binding != null && binding.info.arity != null && args.length > binding.info.arity)
                        {
                            // Preserve arguments present in the latest scripts.
                            var fallbacks = nativeFallback == null ? null : Reflect.field(nativeFallback, name);
                            var fallback = fallbacks == null ? null : Reflect.field(fallbacks, binding.abi);
                            if (fallback != null) return expr(ECall(expr(EField(path(fallback, e), binding.abi), e), args), e);
                        }
                    default:
                }
                var name = qualified(fn);
                if (name == "lua.Math.fmod" && args.length == 2) return expr(EBinop(OpMod, args[0], args[1]), e);
                if (name == "Std.string" && args.length > 1 && args.slice(1).foreach(nullValue)) return expr(ECall(fn, [args[0]]), e);
            case ENew(type, args):
                var name = type.pack.concat([type.name]).join(".");
                if (knownClasses.exists(name) && !nativeClasses.exists(name))
                {
                    var actual = args.copy();
                    while (actual.length > 0 && nullValue(actual[actual.length - 1])) actual.pop();
                    return expr(ENew(type, actual), e);
                }
            default:
        }
        return e;
    }

    static function protectPrecedence(e:Expr):Expr
    {
        e = ExprTools.map(e, protectPrecedence);
        function compound(child:Expr):Expr
        {
            return switch child.expr
            {
                case EBinop(_, _, _) | ETernary(_, _, _) | EUntyped(_): expr(EParenthesis(child), child);
                default: child;
            };
        }
        switch e.expr
        {
            case EUnop(op, post, child): e.expr = EUnop(op, post, compound(child));
            case EBinop(op, left, right):
                if (op != OpAssign) e.expr = EBinop(op, compound(left), compound(right));
            default:
        }
        return e;
    }

    public static function run(input:String, output:String):Void
    {
        var config:Dynamic = Json.parse(File.getContent(input));
        classes = config.classes;
        members = config.members;
        nativeMethods = config.nativeMethods;
        nativeScalarReturns = config.nativeScalarReturns;
        nativeFallback = config.nativeFallback;
        if (config.nativeClasses != null)
            for (key in Reflect.fields(config.nativeClasses))
            {
                var name = Reflect.field(config.nativeClasses, key);
                nativeClasses.set(name, true);
                Reflect.setField(classes, key, name);
            }
        for (key in Reflect.fields(classes)) knownClasses.set(Reflect.field(classes, key), true);
        for (key in Reflect.fields(members)) realMembers.set(Reflect.field(members, key), true);
        var requests:Array<Dynamic> = config.requests;
        var signatures:Array<Dynamic> = config.signatures == null ? requests : config.signatures;
        var ownersByFile = new Map<String, String>();
        for (key in Reflect.fields(config.files)) ownersByFile.set(Reflect.field(config.files, key), Reflect.field(classes, key));
        for (request in signatures)
        {
            var owner:String = request.owner == null ? ownersByFile.get(request.file) : request.owner;
            if (owner != null) knownCalls.set(owner + "." + request.name, request.arity == null ? -1 : request.arity);
        }
        var results:Array<Dynamic> = [];
        var completed = 0;
        for (request in requests)
        {
            if (completed++ % 100 == 0) Sys.println("Cleaning function " + completed + "/" + requests.length + ": " + request.file);
            try
            {
                currentOwner = request.owner == null ? ownersByFile.get(request.file) : request.owner;
                var ast = Context.parse(request.expression, Context.currentPos());
                if (request.mechanical && config.shallow != true)
                {
                    for (_ in 0...5)
                    {
                        ast = simplify(ast);
                        ast = optimize(ast);
                        ast = trim(ast);
                    }
                }
                var args:Map<String, String> = new Map();
                var intent:Array<String> = request.params;
                switch ast.expr
                {
                    case EFunction(_, fn):
                        for (i in 0...fn.args.length)
                        {
                            if (i < intent.length && intent[i] != "self" && ~/^[A-Za-z_]\w*$/.match(intent[i]) && ~/^arg\d+$/.match(fn.args[i].name) && occurrences(ast, intent[i]) == 0)
                                args.set(fn.args[i].name, intent[i]);
                        }
                    default:
                }
                ast = trim(rename(ast, args));
                if (config.repair == true) ast = repairTypes(ast);
                results.push({file: request.file, start: request.start, end: request.end, code: printer.printExpr(protectPrecedence(ast)), name: request.name});
            }
            catch (error:Dynamic)
            {
                results.push({file: request.file, start: request.start, end: request.end, error: Std.string(error) + "\n" + haxe.CallStack.toString(haxe.CallStack.exceptionStack()), name: request.name});
            }
        }
        File.saveContent(output, Json.stringify(results));
        Sys.println("Parsed and cleaned " + results.length + " function ASTs");
    }
}
#end
