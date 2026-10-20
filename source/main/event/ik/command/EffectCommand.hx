package main.event.ik.command;

import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.C6C285ADF as SRT;
import cppbindings.CE8D61D7D as ParticleComponent;

@:keep
@:chunk("main")
@:hashAbi("CE48F11A155B1B53B")
@:expose("CE48F11A155B1B53B")
class EffectCommand
{
    @:hashAbi("SB5EF06C2E5192EA9")
    public static function GetBasePath(?p:Dynamic):String
    {
        return "ik_effect/data/" + Std.string(p) + ".ptcl";
    }

    @:hashAbi("S988D7D0A4EEF693D")
    public static function Create(?path:Dynamic, ?key:String, ?sceneName:String):Dynamic
    {
        cppbindings.C56DE81E7.fDD9F5C10(main.event.ik.command.EffectCommand.GetBasePath(path), key, sceneName, null);
        return null;
    }

    @:hashAbi("S1B5D979503D409FF")
    public static function CreateLocater(?path:Dynamic, ?key:String, ?sceneName:String, ?ownerObjName:String):Dynamic
    {
        cppbindings.C56DE81E7.fDD9F5C10(main.event.ik.command.EffectCommand.GetBasePath(path), key, sceneName, ownerObjName);
        return null;
    }

    @:hashAbi("SF15CBF636DB27D26")
    public static function IsSetUp(?key:String):Bool
    {
        return cppbindings.C56DE81E7.fEA619D49(key);
    }

    @:hashAbi("SEA4C6DFD3D68E0A3")
    public static function Play(?key:String, isAutoKill:Bool = false):Dynamic
    {
        {
            var isAutoKill:StdTypes.Bool = isAutoKill;
            if ((isAutoKill == null)) isAutoKill = false;
            cppbindings.C56DE81E7.f77FBE431(key, isAutoKill);
        };
        return null;
    }

    @:hashAbi("S338A50689CEDF233")
    public static function Fade(?key:String):Dynamic
    {
        cppbindings.C56DE81E7.fF3979B0B(key);
        return null;
    }

    @:hashAbi("S8A7E99C1BFB76FD9")
    public static function Kill(?key:String):Dynamic
    {
        cppbindings.C56DE81E7.f688F8D0F(key);
        return null;
    }

    @:hashAbi("S4AB25A77C263E5BD")
    public static function Remove(?key:String):Dynamic
    {
        cppbindings.C56DE81E7.fBFD9AC4D(key);
        return null;
    }

    @:hashAbi("S7115EC28F6160984")
    public static function RemoveAllTag():Dynamic
    {
        cppbindings.C56DE81E7.f4AB3CD3D();
        return null;
    }

    @:hashAbi("SB3A93D2A8F1C4F8D")
    public static function SetLocater(?key:String, ?locater:String):Dynamic
    {
        cppbindings.C56DE81E7.fF539C73F(key, locater);
        return null;
    }

    @:hashAbi("S451EE8A830B4E77E")
    public static function GetParticleComp(?key:String):ParticleComponent
    {
        return cppbindings.C56DE81E7.f736E91B1(key);
    }

    @:hashAbi("S2007C313B2A115BE")
    public static function SetWorldPosition(?key:String, ?x:Float, ?y:Float, ?z:Float):Dynamic
    {
        main.event.ik.command.EffectCommand.SetPos(key, ((lua.Table.create(([x, y, z] : Array<Float>)))), false);
        return null;
    }

    @:hashAbi("S6B195CFEC4F9236D")
    public static function SetLocalPosition(?key:String, ?x:Float, ?y:Float, ?z:Float):Dynamic
    {
        main.event.ik.command.EffectCommand.SetPos(key, ((lua.Table.create(([x, y, z] : Array<Float>)))), true);
        return null;
    }

    @:hashAbi("S0E7190F04DBC09B3")
    public static function SetPos(?key:String, ?pos:Vector3, isLocal:Bool = false):Dynamic
    {
        var srt:cppbindings.C6C285ADF = ({
            var isLocal:StdTypes.Bool = isLocal;
            if ((isLocal == null)) isLocal = false;
            cppbindings.C56DE81E7.f5C5906B2(key, isLocal);
        });
        var scale:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = srt.fA443F22C();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var rotation:cppbindings.CD5675BA5 = srt.fEFCC7C01();
        var result:cppbindings.C6C285ADF = ({
            var vectorValues3:cppbindings.C6C285ADF;
            vectorValues3 = cppbindings.C6C285ADF.f7AC1FE6B((cast scale)[1], (cast scale)[2], (cast scale)[3], rotation, (cast pos)[1], (cast pos)[2], (cast pos)[3]);
            cast (cast vectorValues3);
        });
        {
            var isLocal:StdTypes.Bool = isLocal;
            if ((isLocal == null)) isLocal = false;
            cppbindings.C56DE81E7.f2347B5C5(key, result, isLocal);
        };
        return null;
    }

    @:hashAbi("SB2DBA92A12482E2B")
    public static function SetWorldRotation(?key:String, ?x:Float, ?y:Float, ?z:Float):Dynamic
    {
        main.event.ik.command.EffectCommand.SetRot(key, main.event.ik.command.EffectCommand.EulerAngleToQuaternion(((lua.Table.create(([x, y, z] : Array<Float>))))), false);
        return null;
    }

    @:hashAbi("SC4C06B89848C9BE0")
    public static function SetLocalRotation(?key:String, ?x:Float, ?y:Float, ?z:Float):Dynamic
    {
        main.event.ik.command.EffectCommand.SetRot(key, main.event.ik.command.EffectCommand.EulerAngleToQuaternion(((lua.Table.create(([x, y, z] : Array<Float>))))), true);
        return null;
    }

    @:hashAbi("SFC6E3FF043568610")
    public static function SetRot(?key:String, ?rot:Quaternion, isLocal:Bool = false):Dynamic
    {
        var srt:cppbindings.C6C285ADF = ({
            var isLocal:StdTypes.Bool = isLocal;
            if ((isLocal == null)) isLocal = false;
            cppbindings.C56DE81E7.f5C5906B2(key, isLocal);
        });
        var scale:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = srt.fA443F22C();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var translation:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = srt.f4F794CCF();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            };
        });
        var result:cppbindings.C6C285ADF = ({
            var vectorValues5:cppbindings.C6C285ADF;
            vectorValues5 = cppbindings.C6C285ADF.f7AC1FE6B((cast scale)[1], (cast scale)[2], (cast scale)[3], rot, (cast translation)[1], (cast translation)[2], (cast translation)[3]);
            cast (cast vectorValues5);
        });
        {
            var isLocal:StdTypes.Bool = isLocal;
            if ((isLocal == null)) isLocal = false;
            cppbindings.C56DE81E7.f2347B5C5(key, result, isLocal);
        };
        return null;
    }

    @:hashAbi("SC2AD6648D6FED118")
    public static function ToDegreeEulerAngle(?rot:Quaternion):Vector3
    {
        var first:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = rot.f643B5D6F();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var x:StdTypes.Float = (((cast first)[1] / (2 * lua.Math.pi)) * 360.0);
        var second:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = rot.f643B5D6F();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            };
        });
        var y:StdTypes.Float = (((cast second)[2] / (2 * lua.Math.pi)) * 360.0);
        var third:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = rot.f643B5D6F();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues5:lua.Table<Int, Float>;
                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues5);
            };
        });
        var z:StdTypes.Float = (((cast third)[3] / (2 * lua.Math.pi)) * 360.0);
        return ((lua.Table.create(([x, y, z] : Array<Float>))));
    }

    @:hashAbi("SFCF8729D12C26228")
    public static function EulerAngleToQuaternion(?ea_rot:Vector3):Quaternion
    {
        return cppbindings.CD5675BA5.fFA44D7AF(((((cast ea_rot)[2] / 360.0) * 2) * lua.Math.pi), ((((cast ea_rot)[1] / 360.0) * 2) * lua.Math.pi), ((((cast ea_rot)[3] / 360.0) * 2) * lua.Math.pi));
    }

    @:hashAbi("SA007180A7F68B05D")
    public static function SetWorldScale(?key:String, ?scale:Float):Dynamic
    {
        SetScale(key, scale, false);
        return null;
    }

    @:hashAbi("S4356E69EEDEDC748")
    public static function SetLocalScale(?key:String, ?scale:Float):Dynamic
    {
        SetScale(key, scale, true);
        return null;
    }

    @:hashAbi("S52DB4EAAAD6AC29B")
    public static function SetScale(?key:String, ?scale:Float, isLocal:Bool = false):Dynamic
    {
        var srt:cppbindings.C6C285ADF = ({
            var isLocal:StdTypes.Bool = isLocal;
            if ((isLocal == null)) isLocal = false;
            cppbindings.C56DE81E7.f5C5906B2(key, isLocal);
        });
        var rotation:cppbindings.CD5675BA5 = srt.fEFCC7C01();
        var translation:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = srt.f4F794CCF();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var result:cppbindings.C6C285ADF = ({
            var scale:lua.Table<Int, Float> = ((lua.Table.create(([scale, scale, scale] : Array<Float>))));
            var vectorValues5:cppbindings.C6C285ADF;
            vectorValues5 = cppbindings.C6C285ADF.f7AC1FE6B((cast scale)[1], (cast scale)[2], (cast scale)[3], rotation, (cast translation)[1], (cast translation)[2], (cast translation)[3]);
            cast (cast vectorValues5);
        });
        {
            var isLocal:StdTypes.Bool = isLocal;
            if ((isLocal == null)) isLocal = false;
            cppbindings.C56DE81E7.f2347B5C5(key, result, isLocal);
        };
        return null;
    }

    @:hashAbi("S55C6870D40306E2A")
    public static function GetWorldPosition(?key:String):Vector3
    {
        return main.event.ik.command.EffectCommand.GetPos(key, false);
    }

    @:hashAbi("SBFBCA5575FA057E1")
    public static function GetLocalPosition(?key:String):Vector3
    {
        return main.event.ik.command.EffectCommand.GetPos(key, true);
    }

    @:hashAbi("SAA3F191C3771A337")
    public static function GetPos(?key:String, isLocal:Bool = false):Vector3
    {
        return ({
            var _this:cppbindings.C6C285ADF = ({
                var isLocal:StdTypes.Bool = isLocal;
                if ((isLocal == null)) isLocal = false;
                cppbindings.C56DE81E7.f5C5906B2(key, isLocal);
            });
            {
                var v:cppbindings.Vec3 = _this.f4F794CCF();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            };
        });
    }

    @:hashAbi("S624850472E7C907F")
    public static function GetWorldRotation(?key:String):Vector3
    {
        return main.event.ik.command.EffectCommand.GetRot(key, false);
    }

    @:hashAbi("S69D77EB8CD74843C")
    public static function GetLocalRotation(?key:String):Vector3
    {
        return main.event.ik.command.EffectCommand.GetRot(key, true);
    }

    @:hashAbi("S98A7B01C2D6715AC")
    public static function GetRot(?key:String, isLocal:Bool = false):Vector3
    {
        return main.event.ik.command.EffectCommand.ToDegreeEulerAngle(({
            var isLocal:StdTypes.Bool = isLocal;
            if ((isLocal == null)) isLocal = false;
            cppbindings.C56DE81E7.f5C5906B2(key, isLocal);
        }).fEFCC7C01());
    }

    @:hashAbi("SA8DA6A15E435F2F1")
    public static function GetWorldScale(?key:String):Float
    {
        return GetScale(key, false);
    }

    @:hashAbi("SE6C4C46142D280F4")
    public static function GetLocalScale(?key:String):Float
    {
        return GetScale(key, true);
    }

    @:hashAbi("S451048BDC054CF97")
    public static function GetScale(?key:String, isLocal:Bool = false):Float
    {
        return ({
            var vectorValues:lua.Table<Int, Float> = ({
                var _this:cppbindings.C6C285ADF = ({
                    var isLocal:StdTypes.Bool = isLocal;
                    if ((isLocal == null)) isLocal = false;
                    cppbindings.C56DE81E7.f5C5906B2(key, isLocal);
                });
                {
                    var v:cppbindings.Vec3 = _this.fA443F22C();
                    {
                        var x:StdTypes.Float = v.x;
                        var y:StdTypes.Float = v.y;
                        var z:StdTypes.Float = v.z;
                        var vectorValues2:lua.Table<Int, Float>;
                        vectorValues2 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast vectorValues2;
                    };
                };
            });
            (cast vectorValues)[1];
        });
    }
}
