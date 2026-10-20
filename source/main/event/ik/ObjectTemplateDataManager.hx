package main.event.ik;

@:keep
@:chunk("main")
@:hashAbi("CE3A3A45F0BDA7426")
@:expose("CE3A3A45F0BDA7426")
class ObjectTemplateDataManager
{
    @:hashAbi("S2667B2096330FFCB")
    public static var S2667B2096330FFCB:Array<main.event.ik.ObjectTemplateData> = [];

    @:hashAbi("S988D7D0A4EEF693D")
    public static function Create(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic):Dynamic
    {
        var object = new main.event.ik.ObjectTemplateData();
        S2667B2096330FFCB.push(object);
        object.Init(arg0, arg1, arg2, arg3);
        return null;
    }

    public static function S81BA08EE110AAE62():Dynamic
    {
        for (object in S2667B2096330FFCB)
        {
            if (!lua.abi.Host.truthy(object.slot3))
            {
                return false;
            }
        }
        return true;
    }

    public static function S2568F9C27164B747():Dynamic
    {
        for (object in S2667B2096330FFCB)
        {
            object.FE1C4760380E2F0FC();
        }
        return null;
    }

    public static function S3E36C5EB9EFAF0F8():Dynamic
    {
        for (object in S2667B2096330FFCB)
        {
            object.Destroy();
        }
        S2667B2096330FFCB.resize(0);
        return null;
    }
}
