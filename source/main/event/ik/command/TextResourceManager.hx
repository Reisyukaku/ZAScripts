package main.event.ik.command;

@:keep
@:chunk("main")
@:hashAbi("CF74EC46ADA8DC783")
@:expose("CF74EC46ADA8DC783")
class TextResourceManager
{
    @:hashAbi("S092ACF6F9CAC2BA2")
    public static function LoadTextResource(resource:Dynamic):Void
    {
        cppbindings.C8C3BF576.f49D44378(resource);
    }

    @:hashAbi("S8EE12659B6952775")
    public static function IsCompleteLoadingTextResource(resource:Dynamic):Bool
    {
        return lua.abi.Host.truthy(cppbindings.C8C3BF576.f58A93CBE(resource));
    }

    @:hashAbi("S34645180A2F21B29")
    public static function UnloadTextResource(resource:Dynamic):Void
    {
        cppbindings.C8C3BF576.f4902875F(resource);
    }

    @:hashAbi("S3567CE4CD45AC7D3")
    public static function GetTextResourcePath(path:Dynamic):String
    {
        return ("ik_message/dat/JPN/" + Std.string(path)) + ".dat";
    }
}
