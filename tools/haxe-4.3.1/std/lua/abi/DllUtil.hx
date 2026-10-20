package lua.abi;

import lua.Lua;
import lua.Table;
import lua.PairTools;

typedef LuaTable = Table<Dynamic, Dynamic>;

#if !lua
#error "DllUtil preserves Lua tables/metatables and requires the Lua target."
#end

@:keep
@:expose("DllUtil")
class DllUtil {
    static var createTable:Dynamic;
    static var hidden:LuaTable;
    static var objectMeta:LuaTable;

    public static var core(default, null):LuaTable;

    static inline function table():LuaTable return untyped __lua__("{}");
    static inline function get(value:Dynamic, key:Dynamic):Dynamic
        return untyped __lua__("{0}[{1}]", value, key);
    static inline function set(value:Dynamic, key:Dynamic, field:Dynamic):Void
        untyped __lua__("{0}[{1}] = {2}", value, key, field);
    static inline function truthy(value:Dynamic):Bool
        return untyped __lua__("not not {0}", value);
    static inline function concat(a:Dynamic, b:Dynamic):String
        return untyped __lua__("({0} .. {1})", a, b);

    public static function copyPrototype(destination:LuaTable, prototype:LuaTable):Void {
        if (prototype == null) return;
        var meta = Lua.getmetatable(prototype);
        if (meta != null) copyPrototype(destination, meta.__index);
        PairTools.pairsEach(prototype, function(key, value) destination[key] = value);
    }

    public static function newTable(prototype:LuaTable, ?arraySize:Int, ?hashSize:Int):LuaTable {
        var result:LuaTable;
        if (arraySize != null)
            result = untyped __lua__("{0}({1}, {2})", createTable, arraySize, hashSize);
        else {
            result = table();
            result.__fields__ = table();
        }
        copyPrototype(result, prototype);
        return result;
    }

    // L3_1..L9_1. Deliberately native Lua integers, not Haxe's 32-bit bit API.
    public static function band(a:Dynamic, b:Dynamic):Dynamic return untyped __lua__("({0} & {1})", a, b);
    public static function bor(a:Dynamic, b:Dynamic):Dynamic return untyped __lua__("({0} | {1})", a, b);
    public static function bnot(a:Dynamic):Dynamic return untyped __lua__("(~{0})", a);
    public static function bxor(a:Dynamic, b:Dynamic):Dynamic return untyped __lua__("({0} ~ {1})", a, b);
    public static function lshift(a:Dynamic, b:Dynamic):Dynamic return untyped __lua__("({0} << {1})", a, b);
    public static function rshift(a:Dynamic, b:Dynamic):Dynamic return untyped __lua__("({0} >> {1})", a, b);
    public static function arshift(a:Dynamic, b:Dynamic):Dynamic return untyped __lua__("({0} >> {1})", a, b);

    public static function arrayNewIndex(t:LuaTable, key:Dynamic, value:Dynamic):Void {
        var length:Dynamic = t.length;
        t.length = key >= length ? key + 1 : length;
        Lua.rawset(t, key, value);
    }

    // The supplied decompilation tests only the type, unlike upstream Haxe.
    public static function isArray(value:Dynamic):Bool return Lua.type(value) == "table";

    public static function tabArray(t:LuaTable, length:Int):Dynamic {
        t.length = length;
        return Lua.setmetatable(t, untyped __lua__("_hx_array_mt"));
    }

    public static function printClass(obj:LuaTable, depth:Int):String {
        var first = true;
        var result = "";
        PairTools.pairsEach(obj, function(key, value) {
            if (hidden[key] == null) {
                if (first) first = false; else result += ", ";
                result = concat(concat(result, key), ":") + toString(value, depth + 1);
            }
        });
        return "{ " + result + " }";
    }

    public static function printEnum(obj:LuaTable, depth:Int):String {
        if (obj.length == 2) return obj[0];
        var result = concat(obj[0], "(");
        var i = 2;
        while (i < obj.length) {
            if (i != 2) result += ",";
            result = concat(result, toString(obj[i], depth + 1));
            i++;
        }
        return result + ")";
    }

    /** Literal branch structure of L12_1 at Lua lines 236-418.
     * In particular, tables with toString fall through to nil because isArray
     * accepts every table. This looks like a decompiler defect, but is retained.
     */
    public static function toString(obj:Dynamic, ?depth:Int):String {
        if (depth == null) depth = 0; else if (depth > 5) return "<...>";
        switch (Lua.type(obj)) {
            case "string": return obj;
            case "nil": return "null";
            case "number":
                if (obj == untyped __lua__("_G.math.POSITIVE_INFINITY")) return "Infinity";
                if (obj == untyped __lua__("_G.math.NEGATIVE_INFINITY")) return "-Infinity";
                if (obj == 0) return "0";
                if (obj != obj) return "NaN";
                return Lua.tostring(obj);
            case "boolean": return Lua.tostring(obj);
            case "userdata":
                var meta = Lua.getmetatable(obj);
                if (meta != null) {
                    if (meta.__tostring != null) return Lua.tostring(obj);
                    return null;
                }
                return "<userdata>";
            case "function": return "<function>";
            case "thread": return "<thread>";
            case "table":
                if (get(obj, "__enum__") != null) return printEnum(obj, depth);
                if (get(obj, "toString") != null) {
                    if (!isArray(obj)) return untyped __lua__("{0}:toString()", obj);
                    return null;
                }
                if (isArray(obj)) {
                    if (get(obj, "length") > 5) return "[...]";
                    var result = "";
                    var i = 0;
                    // Keep the source's length-1 evaluation, including errors on nil.
                    var last:Dynamic = get(obj, "length") - 1;
                    while (i <= last) {
                        if (i != 0) result += ",";
                        result = concat(result, toString(get(obj, i), depth + 1));
                        i++;
                    }
                    return "[" + result + "]";
                }
                if (get(obj, "__class__") != null) return printClass(obj, depth);
                var buffer:Table<Int, String> = Table.create();
                var fields:LuaTable = obj;
                if (get(obj, "__fields__") != null) fields = get(obj, "__fields__");
                PairTools.pairsEach(fields, function(key, _) {
                    if (hidden[key] == null)
                        Table.insert(buffer, concat(concat(toString(key, depth + 1), " : "), toString(get(obj, key), depth + 1)));
                });
                return "{ " + Table.concat(buffer, ", ") + " }";
            default:
                Lua.error("Unknown Lua type", 0);
                return "";
        }
    }

    public static function objectNewIndex(t:LuaTable, key:Dynamic, value:Dynamic):Void {
        set(t.__fields__, key, true);
        Lua.rawset(t, key, value);
    }

    // L14_1 captures exactly four values from ... in the supplied text.
    public static function anonymous(?key1:Dynamic, ?value1:Dynamic, ?key2:Dynamic, ?value2:Dynamic):LuaTable {
        var result = table();
        var fields = table();
        result.__fields__ = fields;
        fields[key1] = true;
        result[key1] = value1;
        fields[key2] = true;
        result[key2] = value2;
        return Lua.setmetatable(result, objectMeta);
    }

    public static function emptyObject():LuaTable {
        var result = table();
        result.__fields__ = table();
        return Lua.setmetatable(result, objectMeta);
    }

    public static function wrapObject(obj:LuaTable):LuaTable return Lua.setmetatable(obj, objectMeta);

    public static function newObject(prototype:LuaTable):LuaTable {
        var result = table();
        result.__fields__ = table();
        var meta = table();
        meta.__newindex = objectNewIndex;
        meta.__index = prototype;
        meta.__tostring = toString;
        return Lua.setmetatable(result, meta);
    }

    public static function fieldArray(obj:LuaTable):Array<String> {
        var result = table();
        var index = 0;
        if (obj.__fields__ != null) obj = obj.__fields__;
        PairTools.pairsEach(obj, function(key, _) {
            if (hidden[key] == null) { result[index] = key; index++; }
        });
        return tabArray(result, index);
    }

    // L39_1 is assigned nil and never changed: only the saturating branch runs.
    public static function clampInt32(value:Float):Int {
        if (value < -2147483648.0) return -2147483648;
        if (value > 2147483647.0) return 2147483647;
        return cast (value > 0 ? lua.Math.floor(value) : lua.Math.ceil(value));
    }

    public static function handleError(value:Dynamic):LuaTable {
        var message = Lua.tostring(value);
        var debug:Dynamic = untyped __lua__("_G.debug");
        if (truthy(debug) && truthy(get(debug, "traceback")))
            message = untyped __lua__("{0}.traceback({1}, 2)", debug, message);
        var meta = table();
        meta.__tostring = function() return message;
        return Lua.setmetatable(table(), meta);
    }

    public static function main():Void {
        core = table();
        core.Array = Array;
        core.String = String;
        core.Math = Math;
        core.Std = Std;
        createTable = lua.LuaHelper.createtable;
        hidden = table();
        for (name in ["__id__", "hx__closures", "super", "prototype", "__fields__",
                      "__ifields__", "__class__", "__properties__", "__name__"])
            hidden[untyped name] = true;
        objectMeta = table();
        objectMeta.__newindex = objectNewIndex;
        objectMeta.__tostring = toString;
        untyped __lua__("_hx_array_mt.__newindex = {0}", arrayNewIndex);
        untyped __lua__("_hx_obj_mt.__tostring = {0}", toString);
        untyped __lua__("_hx_is_array = {0}", isArray);
        untyped __lua__("_hx_tab_array = {0}", tabArray);
        untyped __lua__("_hx_print_class = {0}", printClass);
        untyped __lua__("_hx_print_enum = {0}", printEnum);
        untyped __lua__("_hx_tostring = {0}", toString);
        untyped __lua__("_hx_field_arr = {0}", fieldArray);
        untyped __lua__("_hx_bit_clamp = {0}", clampInt32);
        untyped __lua__("_hx_handle_error = {0}", handleError);
        untyped __lua__("_G.__haxe_Exception = {0}", haxe.Exception);
        untyped __lua__("_G.__haxe_NativeStackTrace = {0}", haxe.NativeStackTrace);
        untyped __lua__("_G.__haxe_ValueException = {0}", haxe.ValueException);
        untyped __lua__("_G.__haxe_exceptions_PosException = {0}", haxe.exceptions.PosException);
        untyped __lua__("_G.__haxe_exceptions_NotImplementedException = {0}", haxe.exceptions.NotImplementedException);
        untyped __lua__("_G.__haxe_iterators_ArrayIterator = {0}", haxe.iterators.ArrayIterator);
        untyped __lua__("_G.__haxe_iterators_ArrayKeyValueIterator = {0}", haxe.iterators.ArrayKeyValueIterator);
        untyped __lua__("_G.__lua_Thread = {0}", lua.Thread);
        var loaded:Dynamic = untyped __lua__("package.loaded.luv");
        var luv:Dynamic;
        if (truthy(loaded)) luv = Lua.require("luv"); else {
            var fallback = table();
            fallback.run = function(?mode:Dynamic) return false;
            fallback.loop_alive = function() return false;
            luv = fallback;
        }
        untyped __lua__("_hx_luv = {0}", luv);
        untyped String.__name__ = true;
        untyped Array.__name__ = true;
    }
}
