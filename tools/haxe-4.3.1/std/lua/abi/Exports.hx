package lua.abi;

class Exports {
    public static function install():Void {
        untyped __lua__("for name, value in pairs(_hx_exports) do if type(name) == 'string' and string.match(name, '^[CE]%x+$') then _G[name] = value end end");
    }
}
