package main.util.ik;

@:keep
@:chunk("main")
@:hashAbi("CA7FCE3EFB3D22661")
@:expose("CA7FCE3EFB3D22661")
class DebugLog
{
    @:hashAbi("S90BEBFB0190E1A45")
    public static function Info(?message:String):Void
    {
        if (message == null) message = "";
    }
    @:hashAbi("SFEFD1B4A2E69DCCF")
    public static function Warning(?message:String):Void
    {
        if (message == null) message = "";
    }
    @:hashAbi("SD42C0BE3A089E971")
    public static function Error(?message:String):Void
    {
        if (message == null) message = "";
    }
}
