package lua;

/** Engine-provided table allocator. The host supplies lua_helper at runtime. */
@:native("lua_helper")
extern class LuaHelper {
    public static function createtable(arraySize:Int, hashSize:Int):Dynamic;
}
