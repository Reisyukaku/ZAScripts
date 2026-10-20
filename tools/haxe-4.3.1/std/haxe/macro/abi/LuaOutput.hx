package haxe.macro.abi;
#if macro
import haxe.macro.Compiler;
import haxe.macro.Context;

class LuaOutput {
    public static function enable():Void {
        Context.onAfterGenerate(function() {
            var path = Context.resolvePath("haxe/macro/abi/LuaOutput.hx");
            var script = haxe.io.Path.directory(path) + "/finalize.py";
            var process = new sys.io.Process("python3", [script, Compiler.getOutput()]);
            var diagnostic = process.stderr.readAll().toString();
            var status = process.exitCode();
            process.close();
            if (status != 0) Context.error("Lua finalization failed: " + diagnostic, Context.currentPos());
        });
    }
}
#end
