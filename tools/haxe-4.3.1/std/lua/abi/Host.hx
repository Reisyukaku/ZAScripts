package lua.abi;

@:access(lua.Boot)
class Host {
    public static inline function emptyTable():Dynamic
        return untyped __lua__("{}");

    public static inline function anonymous():Dynamic
        return untyped __lua__("_hx_e()");

    public static inline function object(value:Dynamic):Dynamic
        return untyped __lua__("_hx_o({0})", value);

    public static inline function newTable(prototype:Dynamic):Dynamic
        return untyped __lua__("_hx_new({0})", prototype);

    public static function checkedCast(value:Dynamic, type:Dynamic):Dynamic
        return untyped lua.Boot.__cast(value, type);

    public static inline function concat(left:Dynamic, right:Dynamic):String
        return untyped __lua__("{0} .. {1}", left, right);

    public static inline function setGlobal(name:String, value:Dynamic):Void
        untyped __lua__("_G[{0}] = {1}", name, value);

    public static function truthy(value:Dynamic):Bool
        return value != null && value != false;

    public static inline function global(name:String):Dynamic
        return untyped __lua__("_G[{0}]", name);
}
