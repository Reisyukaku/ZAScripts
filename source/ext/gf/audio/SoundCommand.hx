package ext.gf.audio;

import lua.Table;

@:keep
@:chunk("main")
@:hashAbi("C8B9E8071BDDC08BB")
@:expose("C8B9E8071BDDC08BB")
class SoundCommand
{
    @:hashAbi("SE93AC72DF55B9424")
    public static var INVALID_AUDIO_PLAYING_ID:Dynamic = 0;

    @:hashAbi("SC6181320B46854EE")
    public static function PostEventGlobal(eventName:String):Dynamic
    {
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        var result:Dynamic = (if ((audio == null)) {
            null;
        } else {
            audio.f10214888(eventName);
        });
        return (if ((result == null)) {
            0;
        } else {
            result;
        });
    }

    @:hashAbi("S1B0B64C42CCA2263")
    public static function PostEvent2D(eventName:String):Dynamic
    {
        return PostEventGlobal(eventName);
    }

    @:hashAbi("S96584FB18B5F6991")
    public static function PostEvent3DLocation(eventName:String, location:Table<Int, Float>):Dynamic
    {
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        return ({
            var location:lua.Table<Int, Float> = (cast location);
            audio.fB44C9585(eventName, (cast location)[1], (cast location)[2], (cast location)[3]);
        });
    }

    @:hashAbi("S6F64CFAE76841DC9")
    public static function PostEvent3DObject(eventName:String, sceneObject:Dynamic):Dynamic
    {
        var component:StdTypes.Null<cppbindings.CAA7097FF> = cppbindings.CAA7097FF.fB41FD22F(sceneObject);
        if ((component != null)) {
            return ({
                var priority:StdTypes.Int = 100;
                if ((priority == null)) priority = 100;
                component.fB0CA2B80(eventName, priority);
            });
        };
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        var object:cppbindings.C016374C1 = sceneObject;
        return ({
            var location:lua.Table<Int, Float> = ({
                var v:cppbindings.Vec3 = object.f7360ED03();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast vectorValues;
                };
            });
            audio.fB44C9585(eventName, (cast location)[1], (cast location)[2], (cast location)[3]);
        });
    }

    @:hashAbi("SA564E888BC5A581E")
    public static function IsActivePlayingId(playingId:Dynamic):Dynamic
    {
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        var result:Dynamic = (if ((audio == null)) {
            null;
        } else {
            audio.f7674027D(playingId);
        });
        return (if ((result == null)) {
            false;
        } else {
            result;
        });
    }

    @:hashAbi("S7FECE1243B23B9FB")
    public static function SetRTPCGlobal(name:String, value:Float, ?extra:Dynamic):Dynamic
    {
        if ((extra == null)) {
            extra = 0;
        };
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        return ({
            var interpolationMs:StdTypes.Int = (cast extra);
            if ((interpolationMs == null)) interpolationMs = 0;
            audio.fF1270040(name, value, interpolationMs);
        });
    }

    @:hashAbi("S0447962DA9E61E54")
    public static function SetState(group:String, state:String):Dynamic
    {
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        var result:Dynamic = (if ((audio == null)) {
            null;
        } else {
            audio.f13673A82(group, state);
        });
        return (if ((result == null)) {
            false;
        } else {
            result;
        });
    }

    @:hashAbi("S03FECD8EAF534C70")
    public static function StopPlayingID(playingId:Dynamic, ?fadeTime:Dynamic):Dynamic
    {
        if ((fadeTime == null)) {
            fadeTime = 0;
        };
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        return ({
            var fadeTime:StdTypes.Float = (cast fadeTime);
            if ((fadeTime == null)) fadeTime = 0;
            audio.fD09DDCAA((cast playingId), fadeTime);
        });
    }

    @:hashAbi("SC12ED186C14D0473")
    public static function ExecuteBGMCommand(commandName:String):Void
    {
        var manager:StdTypes.Null<cppbindings.C6E61D36A> = cppbindings.C6E61D36A.fA925EE56();
        if ((manager != null)) {
            manager.f2717D622(commandName);
        };
    }

    @:hashAbi("SCA4F0DE15CF52983")
    public static function get_ListenerPosition():Table<Int, Float>
    {
        var audio:StdTypes.Null<cppbindings.CB66A3C78> = cppbindings.CB66A3C78.fA925EE56();
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = audio.f6DFB4FBB();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        return lua.Table.create([(cast position)[1], (cast position)[2], (cast position)[3]]);
    }

    @:hashAbi("S240FF550C4A15CD8")
    public static function get_AudioEngine():Dynamic
    {
        return cppbindings.CB66A3C78.fA925EE56();
    }
}
