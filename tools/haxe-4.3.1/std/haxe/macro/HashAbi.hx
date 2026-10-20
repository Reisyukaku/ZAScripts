package haxe.macro;

#if macro
import haxe.Int64;
import haxe.macro.Context;
import haxe.macro.Type;
import haxe.macro.Expr;

/** Validate recovered script names against their recorded ABI hashes. */
class HashAbi {
    public static function digest(name:String):String {
        // Game offset basis ends in 2645 (standard FNV uses 2325).
        var hash = Int64.make(0xcbf29ce4, 0x84222645);
        var prime = Int64.make(0x100, 0x1b3);
        for (i in 0...name.length) hash = (hash ^ Int64.ofInt(name.charCodeAt(i))) * prime;
        return StringTools.hex(hash.high, 8) + StringTools.hex(hash.low, 8);
    }

    static function apply(meta:MetaAccess, name:String, prefix:String, pos:Position):Void {
        var markers = meta.extract(":hashAbi");
        if (markers.length == 0) return;
        if (markers.length != 1 || markers[0].params.length != 1)
            Context.error("hashAbi requires one expected hash", pos);
        var expected = switch (markers[0].params[0].expr) {
            case EConst(CString(value)): value;
            default: Context.error("hashAbi requires a string literal", pos); "";
        };
        // ABI spellings are terminal names. Never hash them a second time.
        var leaf = name.split(".").pop();
        var alreadyHashed = ~/^[CSEF][0-9A-F]{16}$/;
        var cppBinding = ~/^[cf](?:[0-9A-F]{8}|[0-9A-F]{16})$/;
        var actual = (alreadyHashed.match(leaf) || cppBinding.match(leaf)) ? leaf : prefix + digest(name);
        if (actual != expected)
            Context.error('Recovered name $name hashes to $actual, expected $expected', pos);
        meta.remove(":native");
        meta.add(":native", [macro $v{actual}], pos);
    }

    public static function enable():Void {
        // Recovered Lua invokes checked casts through untyped table access.
        // Preserve the implementation even when Haxe cannot see that call.
        Compiler.addMetadata("@:keep", "lua.Boot", "__cast", true);
        Context.onGenerate(function(types) {
            for (type in types) switch (type) {
                case TInst(ref, _):
                    var cls = ref.get();
                    // Abstract bodies compile into a generated implementation class.
                    // Carry its ABI and chunk declarations to that emitted class.
                    switch (cls.kind)
                    {
                        case KAbstractImpl(abstractRef):
                            for (marker in abstractRef.get().meta.get())
                                if ((marker.name == ":hashAbi" || marker.name == ":chunk") && !cls.meta.has(marker.name))
                                    cls.meta.add(marker.name, marker.params, marker.pos);
                        default:
                    }
                    var path = cls.pack.join(".") + "." + cls.name;
                    apply(cls.meta, path, "C", cls.pos);
                    for (field in cls.fields.get())
                    {
                        var slots = field.meta.extract(":abiSlot");
                        if (slots.length == 1)
                        {
                            var index = switch (slots[0].params[0].expr)
                            {
                                case EConst(CInt(value)): value;
                                default: Context.error("abiSlot requires an integer", field.pos); "";
                            };
                            // Not a Lua identifier, so Haxe emits self["@slot:N"]; the finalizer turns it into self[N].
                            field.meta.remove(":native");
                            field.meta.add(":native", [macro $v{"@slot:" + index}], field.pos);
                        }
                        else apply(field.meta, field.name, "F", field.pos);
                    }
                    for (field in cls.statics.get()) apply(field.meta, field.name, "S", field.pos);
                case TEnum(ref, _):
                    var en = ref.get();
                    apply(en.meta, en.pack.join(".") + "." + en.name, "E", en.pos);
                default:
            }
        });
    }
}
#end
