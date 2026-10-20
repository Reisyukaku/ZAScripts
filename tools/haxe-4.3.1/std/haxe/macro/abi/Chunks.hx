package haxe.macro.abi;
#if macro
import haxe.macro.Context;
import haxe.macro.Type;
import haxe.macro.Expr;

class Chunks {
    public static function include(chunk:String):Void {
        var root = haxe.io.Path.directory(Context.resolvePath("main/event/ik/base/BaseEvent.hx"));
        for (_ in 0...4) root = haxe.io.Path.directory(root);
        var marker = new EReg('@:chunk\\s*\\(\\s*"' + chunk + '"\\s*\\)', "");
        function visit(directory:String, pack:String):Void {
            var entries = sys.FileSystem.readDirectory(directory);
            entries.sort(Reflect.compare);
            for (entry in entries) {
                var path = directory + "/" + entry;
                if (sys.FileSystem.isDirectory(path)) {
                    visit(path, pack + entry + ".");
                } else if (StringTools.endsWith(entry, ".hx") && marker.match(sys.io.File.getContent(path))) {
                    Context.getType(pack + entry.substr(0, entry.length - 3));
                }
            }
        }
        visit(root, "");
    }

    public static function select(chunk:String):Void {
        Context.onGenerate(function(types) {
            for (type in types) {
                var base:BaseType = switch (type) {
                    case TInst(ref, _): ref.get();
                    case TEnum(ref, _): ref.get();
                    default: null;
                };
                if (base == null) continue;
                for (marker in base.meta.extract(":chunk")) {
                    var owner = switch (marker.params[0].expr) {
                        case EConst(CString(name)): name;
                        default: Context.error("chunk requires a string", marker.pos); "";
                    };
                    if (owner != chunk) {
                        if (!base.meta.has(":nativeGen")) base.meta.add(":hxGen", [], base.pos);
                        base.exclude();
                    }
                }
            }
        }, false);
    }
}
#end
