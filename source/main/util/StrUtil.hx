package main.util;

import lua.Table;

@:keep
@:chunk("main")
@:hashAbi("C23E5342B132D5323")
@:expose("C23E5342B132D5323")
class StrUtil
{
    @:hashAbi("S042B860498E558B2")
    public static function Format(format:String, ?a:Dynamic, ?b:Dynamic, ?c:Dynamic, ?d:Dynamic):String
    {
        return lua.NativeStringTools.format(format, a, b, c, d);
    }

    @:hashAbi("S8CED43592045F1F1")
    public static function FormatVec3(vector:Table<Int, Float>, ?format:String):String
    {
        if (format == null)
        {
            format = "%4.3f";
        }
        return Format(format + ", " + format + ", " + format, vector[1], vector[2], vector[3]);
    }
}
