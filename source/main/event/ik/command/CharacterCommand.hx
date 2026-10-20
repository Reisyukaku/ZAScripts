package main.event.ik.command;

import cppbindings.Vector3Values as Vector3;
import cppbindings.CD5675BA5 as Quaternion;
import cppbindings.C682D8E4F as SceneApi;
import cppbindings.CDB937D14 as UnitParam;
import cppbindings.C2FE46DCA as BaseChrAccessor;
import cppbindings.C65853BD0 as ChrAccessorForEvent;
import cppbindings.C59FFA743 as CharacterManager;
import cppbindings.C478EFED3 as ActionRequestHandle;
import cppbindings.CC99399C3 as InitialSpec;
import cppbindings.CCEEEB265;
import cppbindings.C56DE81E7;
import cppbindings.CB66BF4D3;
import cppbindings.C100F763C;

@:keep
@:chunk("main")
@:hashAbi("C08B9C9B723383177")
@:expose("C08B9C9B723383177")
class CharacterCommand
{
    @:hashAbi("S81A0B5E23668E4C8")
    public static function CreateNpc(?name:Dynamic, ?sceneName:Dynamic, ?pos:Vector3, ?ang:Dynamic, ?objId:Dynamic, ?varNo:Dynamic, ?isVisible:Dynamic, ?arg7:Dynamic):Dynamic
    {
        if ((arg7 == null)) {
            arg7 = true;
        };
        if ((isVisible == null)) {
            isVisible = true;
        };
        if ((varNo == null)) {
            varNo = 0;
        };
        var chrId:StdTypes.Null<Dynamic> = cppbindings.CCEEEB265.f7AC1FE6B(2, objId, (cast(varNo, StdTypes.Int)));
        var param:cppbindings.CDB937D14 = cppbindings.CDB937D14.f101D811F();
        return main.event.ik.command.CharacterCommand.CreateCharacter(name, sceneName, pos, ang, chrId, param, true, arg7);
    }

    @:hashAbi("S510BEEB1FC4D8ED9")
    public static function CreateNpcPokemon(?name:Dynamic, ?sceneName:Dynamic, ?pos:Vector3, ?ang:Dynamic, ?devNo:Dynamic, ?formNo:Dynamic, ?sexType:Dynamic, ?varNo:Dynamic, ?isVisible:Dynamic, ?isRare:Dynamic, ?isOybn:Dynamic, ?scale:Dynamic, ?isOybnEye:Dynamic, ?arg13:Dynamic, ?arg14:Dynamic):Dynamic
    {
        if ((arg14 == null)) {
            arg14 = false;
        };
        if ((arg13 == null)) {
            arg13 = true;
        };
        if ((isOybnEye == null)) {
            isOybnEye = true;
        };
        if ((scale == null)) {
            scale = 128;
        };
        if ((isOybn == null)) {
            isOybn = false;
        };
        if ((isRare == null)) {
            isRare = false;
        };
        if ((isVisible == null)) {
            isVisible = true;
        };
        if ((varNo == null)) {
            varNo = 0;
        };
        var variation:StdTypes.Int = (cast(varNo, StdTypes.Int));
        if (isOybn) {
            variation = 3;
        } else {
            if (arg14) {
                variation = 1;
            };
        };
        var chrId:StdTypes.Null<Dynamic> = cppbindings.CCEEEB265.f0DC6CEFD(3, (cast(devNo, StdTypes.Int)), (cast(formNo, StdTypes.Int)), (cast(sexType, StdTypes.Int)), isRare, variation);
        var spec:cppbindings.CC99399C3 = cppbindings.CC99399C3.f101D811F();
        {
            var value:StdTypes.Int = (cast devNo);
            spec.f084ED513(value);
            value;
        };
        {
            var value:StdTypes.Int = (cast formNo);
            spec.fFBE85F24(value);
            value;
        };
        {
            var value:UInt = (cast(sexType, StdTypes.Int));
            spec.f88C47BAC(value);
            value;
        };
        {
            var value:UInt = (if ((isRare)) cppbindings.CC99399C3.fE42BFA53() else cppbindings.CC99399C3.f71D1609D());
            spec.f82BDE968(value);
            value;
        };
        var currentSpec:Dynamic = spec;
        untyped (cast currentSpec : Dynamic).f51F17107(isOybn);
        {
            var value:UInt = (cast scale);
            spec.f0292D1B9(value);
            value;
        };
        var param:StdTypes.Null<Dynamic> = cppbindings.C56DE81E7.fF482A4E0(spec);
        return main.event.ik.command.CharacterCommand.CreateCharacter(name, sceneName, pos, ang, chrId, param, isOybnEye, arg13, true);
    }

    @:hashAbi("SC276B4D9A4274248")
    public static function CreateCharacter(?name:Dynamic, ?sceneName:Dynamic, ?pos:Vector3, ?ang:Dynamic, ?chrId:Dynamic, ?param:Dynamic, ?isOybnEye:Dynamic, ?arg7:Dynamic, ?arg8:Dynamic):Dynamic
    {
        if ((arg8 == null)) {
            arg8 = false;
        };
        if ((arg7 == null)) {
            arg7 = true;
        };
        if ((isOybnEye == null)) {
            isOybnEye = true;
        };
        var chrAccessor:cppbindings.C65853BD0 = null;
        var manager:Dynamic = cppbindings.C59FFA743.f544F902B().f6A72C136();
        var addOybnEye:StdTypes.Bool = false;
        if (arg8) {
            var simpleParam:{ public var fCFD269DB(default, null) : () -> StdTypes.Bool; } = cppbindings.CB66BF4D3.f89B3EEBF(param);
            if (simpleParam.fCFD269DB()) {
                addOybnEye = isOybnEye;
            };
        };
        var options:{ public var fF65789B1(default, null) : Dynamic; public var fF37BC8C9(default, null) : Dynamic; public var fC27C2AB4(default, null) : Dynamic; public var fBEAF3BF7(default, null) : Dynamic; public var fB814B40F(default, null) : Dynamic; public var f5D288855(default, null) : Dynamic; public var f15F1C0A9(default, null) : Dynamic; public var f07D93F80(default, null) : Dynamic; } = cppbindings.C100F763C.f101D811F();
        options.fF37BC8C9((cast pos)[1], (cast pos)[2], (cast pos)[3]);
        options.f5D288855(cppbindings.CD5675BA5.fFA44D7AF((((ang / 360.0) * 2) * lua.Math.pi), 0, 0));
        options.fBEAF3BF7(param);
        options.fC27C2AB4(true);
        options.f07D93F80(arg7);
        options.fB814B40F(function(hdl:Dynamic, info:Dynamic):StdTypes.Void {
            if ((chrAccessor != null)) {
                chrAccessor.f02A80C92();
                main.event.ik.command.IkScriptCommand.SetAlwaysFrequencyByHdl(chrAccessor);
            };
            if (addOybnEye) {
                main.event.ik.command.IkScriptCommand.AddTagCommon(name, "Oyabun");
            };
        });
        options.f15F1C0A9(1.0);
        options.fF65789B1(true);
        chrAccessor = untyped (cast manager : Dynamic).f53093720(name, cppbindings.C682D8E4F.fEF94D11D(sceneName), chrId, options);
        return chrAccessor;
    }

    @:hashAbi("SE2DC46F5BC6398AB")
    public static function WaitCreateCharacter(?chrAccessor:Dynamic):Dynamic
    {
        if (chrAccessor != null)
        {
            while (chrAccessor.f3491A2B7() == false)
            {
                IkScriptCommand.Suspend();
                chrAccessor.fE9C29DA1();
            }
            while (chrAccessor.f49AF6CD7() == false)
            {
                IkScriptCommand.Suspend();
                chrAccessor.f49AF6CD7();
            }
            chrAccessor.fE9C29DA1();
        }
        return null;
    }

    @:hashAbi("S8617E1B86007795D")
    public static function EnableInvisible(?accessor:BaseChrAccessor):Dynamic
    {
        if ((accessor != null)) {
            accessor.f39A8C5B0();
        };
        return null;
    }

    @:hashAbi("S8989C495D9A9C2EC")
    public static function RequestLookAt(?accessor:ChrAccessorForEvent, ?animType:Dynamic):Dynamic
    {
        if ((accessor != null)) {
            return accessor.f774E4ABE(animType);
        };
        return null;
    }

    @:hashAbi("SB533A82798AF507B")
    public static function RequestLookAtObject(?accessor:ChrAccessorForEvent, ?target:Dynamic, ?targetNode:Dynamic, ?offset:Vector3):Dynamic
    {
        if ((accessor != null)) {
            return accessor.fB7F7CDEC((cast target : String), (cast targetNode : String), (cast offset)[1], (cast offset)[2], (cast offset)[3]);
        };
        return null;
    }

    @:hashAbi("S482E9C487A3E1C16")
    public static function RequestLookAtPos(?accessor:ChrAccessorForEvent, ?pos:Vector3):Dynamic
    {
        if ((accessor != null)) {
            return accessor.fECA6B839((cast pos)[1], (cast pos)[2], (cast pos)[3]);
        };
        return null;
    }

    @:hashAbi("SBC379F74621B935A")
    public static function UpdateLookAt(?accessor:ChrAccessorForEvent):Dynamic
    {
        if ((accessor != null)) {
            accessor.f39046806();
        };
        return null;
    }

    @:hashAbi("S9A39837884F6D5E4")
    public static function RequestLookAtPos_Eye(?accessor:Dynamic, ?pos:Vector3):Dynamic
    {
        return untyped (cast accessor : Dynamic).f41632A29((cast pos)[1], (cast pos)[2], (cast pos)[3]);
    }

    @:hashAbi("SA7AD641F66798B8B")
    public static function RequestLookAtObj_Eye(?accessor:Dynamic, ?target:Dynamic, ?targetNode:Dynamic, ?offset:Vector3):Dynamic
    {
        return untyped (cast accessor : Dynamic).f21FA619C(target, targetNode, (cast offset)[1], (cast offset)[2], (cast offset)[3]);
    }

    @:hashAbi("S81E51A379E46A770")
    public static function UpdateLookAt_Eye(?accessor:Dynamic):Dynamic
    {
        if (accessor != null)
        {
            accessor.f519AC65D();
        }
        return null;
    }

    @:hashAbi("SCDF763A4C7BDA05E")
    public static function MovePos(?accessor:Dynamic, ?targetX:Dynamic, ?targetY:Dynamic, ?targetZ:Dynamic, ?moveSpeed:Dynamic, ?arg5:Dynamic):Dynamic
    {
        if ((arg5 == null)) {
            arg5 = 15;
        };
        var character:cppbindings.C2FE46DCA = accessor;
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = character.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        return untyped (cast accessor : Dynamic).fB288B9B2(((cast position)[1] + targetX), ((cast position)[2] + targetY), ((cast position)[3] + targetZ), moveSpeed, 0.0, true, 1, false, arg5);
    }

    @:hashAbi("S4095E3EEC5418E41")
    public static function MoveToPos(?accessor:Dynamic, ?targetX:Dynamic, ?targetY:Dynamic, ?targetZ:Dynamic, ?moveSpeed:Dynamic, ?isForce:Dynamic):Dynamic
    {
        if (isForce == null)
        {
            isForce = true;
        }
        return accessor.fB288B9B2(targetX, targetY, targetZ, moveSpeed, 0.0, isForce, 1, false, 15);
    }

    @:hashAbi("S33DC4F61786ECD3D")
    public static function MoveToPos_overrideTolerance(?accessor:Dynamic, ?targetX:Dynamic, ?targetY:Dynamic, ?targetZ:Dynamic, ?moveSpeed:Dynamic, ?overrideToLerance:Dynamic, ?isForce:Dynamic, ?arg7:Dynamic, ?arg8:Dynamic, ?arg9:Dynamic):Dynamic
    {
        if (arg9 == null)
        {
            arg9 = 15;
        }
        if (arg8 == null)
        {
            arg8 = false;
        }
        if (arg7 == null)
        {
            arg7 = 1;
        }
        if (isForce == null)
        {
            isForce = true;
        }
        if (overrideToLerance == null)
        {
            overrideToLerance = 0.0;
        }
        return accessor.fB288B9B2(targetX, targetY, targetZ, moveSpeed, overrideToLerance, isForce, arg7, arg8, arg9);
    }

    @:hashAbi("S57B48B7940399B1D")
    public static function SetPosAng(?accessor:Dynamic, ?pos:Vector3, ?rot:Vector3, ?reset_anm:Dynamic):Dynamic
    {
        if ((reset_anm == null)) {
            reset_anm = false;
        };
        return untyped (cast accessor : Dynamic).f8E0302AC((cast pos)[1], (cast pos)[2], (cast pos)[3], (cast rot)[1], (cast rot)[2], (cast rot)[3], reset_anm);
    }

    @:hashAbi("SD9491972A59BD708")
    public static function SetTurn(?accessor:ChrAccessorForEvent, ?angle:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        return ({
            var rotation:lua.Table<Int, Float> = ((lua.Table.create(([0, -angle, 0] : Array<Float>))));
            var useCurrentForward:StdTypes.Bool = (cast useCurrentForward);
            if ((useCurrentForward == null)) useCurrentForward = false;
            accessor.f7D969B8D((cast rotation)[1], (cast rotation)[2], (cast rotation)[3], useCurrentForward);
        });
    }

    @:hashAbi("S56B9D6C77918B26E")
    public static function ResetAnimation(?accessor:Dynamic):Dynamic
    {
        return accessor.fA6EF2E93(6, 1);
    }

    @:hashAbi("SE5D067F4CB93A3EE")
    public static function ResetAnimation_Force(?accessor:Dynamic):Dynamic
    {
        return accessor.fA6EF2E93(6, 2);
    }

    @:hashAbi("S2517A3CD5623B28E")
    public static function ResetAnimation_Base(?accessor:Dynamic):Dynamic
    {
        return accessor.fA6EF2E93(1, 1);
    }

    @:hashAbi("S53CC98E7516C440E")
    public static function ResetAnimation_Base_Force(?accessor:Dynamic):Dynamic
    {
        return accessor.fA6EF2E93(1, 2);
    }

    @:hashAbi("S86A0FB324C31FB7B")
    public static function PlayAnimation(?accessor:Dynamic, ?animType:Dynamic, ?reset:Dynamic):Dynamic
    {
        if (reset == null)
        {
            reset = true;
        }
        return accessor.f01CD3ECF(animType, 1, 2, 0);
    }

    @:hashAbi("SBCE23A2EF62875FA")
    public static function PlayAnimation_noReset(?accessor:Dynamic, ?animType:Dynamic):Dynamic
    {
        return accessor.f01CD3ECF(animType, 3, 2, 0);
    }

    public static function SC23B17AA2AEF30D7(?accessor:Dynamic, ?animType:Dynamic, ?arg2:Dynamic):Dynamic
    {
        if (arg2 == null)
        {
            arg2 = 0;
        }
        return accessor.f01CD3ECF(animType, 3, 1, arg2);
    }

    public static function S81C31181B4CBD35B(?accessor:Dynamic, ?animType:Dynamic):Dynamic
    {
        return accessor.f01CD3ECF(animType, 1, 1, 2);
    }

    public static function S84B5D24CD68E5DA6(?accessor:Dynamic, ?animType:Dynamic):Dynamic
    {
        return accessor.f01CD3ECF(animType, 1, 1, 3);
    }

    @:hashAbi("S22E24F26D43F153B")
    public static function PlayAnimationImmediately(?accessor:Dynamic, ?animType:Dynamic):Dynamic
    {
        return accessor.fA875E47C(animType, 1, 2, 0);
    }

    @:hashAbi("SB0A9CAB7C9A6DC3F")
    public static function PlayAnimation_Force(?accessor:Dynamic, ?animType:Dynamic):Dynamic
    {
        return accessor.f01CD3ECF(animType, 2, 2, 0);
    }

    @:hashAbi("SA64ABBE5B55E89E0")
    public static function Wait(?handle:ActionRequestHandle, ?timeOut:Dynamic):Dynamic
    {
        if ((timeOut == null)) {
            timeOut = 30.0;
        };
        if ((handle == null)) {
            return null;
        };
        var elapsed:StdTypes.Float = 0.0;
        main.event.ik.command.IkScriptCommand.Suspend();
        while ((handle.fFFAA5D50() == false)) {
            elapsed += main.event.ik.command.IkScriptCommand.Suspend();
            if ((timeOut <= elapsed)) {
                break;
            };
        };
        return null;
    }

    @:hashAbi("S432477666D6D0FE4")
    public static function GetAccessor(?objName:Dynamic):Dynamic
    {
        return cppbindings.C59FFA743.f544F902B().f6A72C136().f02A80C92(objName);
    }

    @:hashAbi("S7D75F545CF25EB19")
    public static function GetAccessorNoScenario(?objName:Dynamic):Dynamic
    {
        return cppbindings.C59FFA743.f544F902B().f6A72C136().fD223B34F(objName);
    }
}
