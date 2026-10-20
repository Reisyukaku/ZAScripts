package main.event.ik.command;

import cppbindings.Vector3Values as Vector3;
import cppbindings.C2FE46DCA as BaseChrAccessor;
import cppbindings.C65853BD0 as ChrAccessorForEvent;
import cppbindings.C37BF542A as EventContextMenu;
import cppbindings.CBA58795C as EventMessageWindow;

@:keep
@:chunk("main")
@:hashAbi("C0C062DE5AED06885")
@:expose("C0C062DE5AED06885")
class IkScriptCommand
{
    @:hashAbi("SEED5C57DB4A3CB5D")
    public static var ChrAccessorForEventHandles:Dynamic = new Array<Dynamic>();

    @:hashAbi("SE5BEE5238E211E65")
    public static var CreateChrAccessorForEventHandles:Dynamic = new Array<Dynamic>();

    @:hashAbi("S18F76D95C9BE984F")
    public static var ActionRequestHandles:Dynamic = new Array<Dynamic>();

    @:hashAbi("S57FB71F213E377FD")
    public static var OneShotActionRequestHandles:Dynamic = new Array<Dynamic>();

    @:hashAbi("SAD42D12DAF00627C")
    public static var UpdateList:Dynamic = new haxe.ds.StringMap<Dynamic>();

    @:hashAbi("SD1C4F9BD764D7073")
    public static var CacheFacialTemplateList:Dynamic = new haxe.ds.StringMap<Dynamic>();

    @:hashAbi("SB6DAB9B03B2AC9C1")
    public static var DynamicCreateNpcMap:Dynamic = new haxe.ds.StringMap<Dynamic>();

    @:hashAbi("SBB6184C08E9DFAC3")
    public static var fallingCoroutines:Dynamic = new Array<Dynamic>();

    @:hashAbi("S7F59DD7D38BDD2C1")
    public static var S7F59DD7D38BDD2C1:Dynamic = new Array<Dynamic>();

    @:hashAbi("SCF36F99F677C074B")
    public static var SCF36F99F677C074B:Dynamic = new haxe.ds.StringMap<Dynamic>();

    @:hashAbi("S1B6086E44D635A23")
    public static var k_TimeOutTime:Dynamic = 30.0;

    @:hashAbi("S255258458FA5C878")
    public static var cacheTravelBagSceneName:Dynamic = "";

    @:hashAbi("S6C938298B9FEE73A")
    public static var isSuspendInputFieldCamrea:Dynamic = false;

    @:hashAbi("S913DCC803F2066F6")
    public static var isSuspendCollisionFieldCamrea:Dynamic = false;

    @:hashAbi("SEA61BF1CEF0543F9")
    public static var isPlayADemo:Dynamic = false;

    @:hashAbi("SC333A6CC72EA0DF4")
    public static var EventCamera_INOUT_SINE_VALUE:Dynamic = 3;

    @:hashAbi("S551B6399F2D0234C")
    public static var S551B6399F2D0234C:Dynamic = 30.0;

    @:hashAbi("SC14B992B10892AC9")
    public static var kLipSyncSeconds:Dynamic = 2.0;

    @:hashAbi("SBE0B441BD5C39AA3")
    public static var m_textResourceFileName:Dynamic = "";

    @:hashAbi("SA754F9CFA5FCF7B5")
    public static function LogError(?_msg:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S0DA3AEF0C3C42403")
    public static function LogWarning(?_msg:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S2C08B3718BC65B49")
    public static function LogInfo(?_msg:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S0001E7A91F3857A7")
    public static function __SetActionRequestHaldes(?hdl:Dynamic, ?objName:Dynamic, ?actionName:Dynamic):Dynamic
    {
        var handles:Array<main.event.ik.command.ActionHandle> = ActionRequestHandles;
        handles.push(new main.event.ik.command.ActionHandle(hdl, objName, actionName));
        return null;
    }

    @:hashAbi("SEB6685558281F194")
    public static function Update():Dynamic
    {
        var updates:haxe.ds.StringMap<()->Dynamic> = UpdateList;
        for (key in updates.keys())
        {
            if (updates.exists(key))
            {
                var update = updates.get(key);
                if (update != null)
                {
                    update();
                }
            }
        }
        return null;
    }

    @:hashAbi("S96B4C3266FC0614A")
    public static function End(?arg0:Dynamic):Dynamic
    {
        if (lua.abi.Host.truthy(arg0)) {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        cppbindings.C56DE81E7.f79C4BC33(true);
        var requests:haxe.ds.List<Dynamic> = new haxe.ds.List();
        var cache:Dynamic = main.event.ik.command.IkScriptCommand.CacheFacialTemplateList;
        var keys:StdTypes.Iterator<String> = untyped (cast cache : Dynamic).keys();
        while (keys.hasNext()) {
            var key:String = keys.next();
            untyped (cast cache : Dynamic).get(key);
            var accessors:StdTypes.Iterable<cppbindings.C2FE46DCA> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
            if (Lambda.exists(accessors, function(accessor:cppbindings.C2FE46DCA):StdTypes.Bool {
                return (accessor.fE9C29DA1() == key);
            })) {
                var accessor:StdTypes.Null<{ public var fE9C29DA1(default, null) : () -> String; public var fA6EF2E93(default, null) : Dynamic; }> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(key);
                if ((((accessor != null) && cppbindings.C56DE81E7.fBA22EECD(accessor.fE9C29DA1())) && cppbindings.C56DE81E7.f4C7B9250(accessor.fE9C29DA1()))) {
                    requests.push(accessor.fA6EF2E93(5, 1));
                    requests.push(accessor.fA6EF2E93(9, 1));
                    requests.push(accessor.fA6EF2E93(10, 1));
                    requests.push(accessor.fA6EF2E93(11, 1));
                    accessor.fE9C29DA1();
                };
            };
        };
        if (!requests.isEmpty()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.DestructionCharacterAccessorEvent();
        var updates:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.UpdateList;
        updates.clear();
        var facialTemplates:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.CacheFacialTemplateList;
        facialTemplates.clear();
        var dynamicNpcs:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.DynamicCreateNpcMap;
        dynamicNpcs.clear();
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.TerminateCafeObjAll();
        main.event.ik.command.IkScriptCommand.S3E36C5EB9EFAF0F8();
        var falling:Array<Dynamic> = main.event.ik.command.IkScriptCommand.fallingCoroutines;
        falling.resize(0);
        var pending:Array<Dynamic> = main.event.ik.command.IkScriptCommand.S7F59DD7D38BDD2C1;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < pending.length)) {
                var handle:Dynamic = pending[arrayIndex];
                ++arrayIndex;
                main.event.ik.command.IkScriptCommand.S621855390FC99D8F(handle);
            };
        };
        var currentPending:Array<Dynamic> = main.event.ik.command.IkScriptCommand.S7F59DD7D38BDD2C1;
        currentPending.resize(0);
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.isSuspendInputFieldCamrea)) {
            main.event.ik.command.IkScriptCommand.SetSuspendInputFieldCamera(false);
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.isSuspendCollisionFieldCamrea)) {
            main.event.ik.command.IkScriptCommand.SetSuspendCollisionFieldCamera(false);
        };
        return null;
    }

    @:hashAbi("SE8D2859AF428195E")
    public static function SetUpdateList(?key:Dynamic, ?value:Dynamic, ?noLog:Dynamic):Dynamic
    {
        var updates:haxe.ds.StringMap<()->Dynamic> = UpdateList;
        if (!updates.exists(key))
        {
            updates.set(key, value);
        }
        return null;
    }

    @:hashAbi("SD789CC9DB4FFBF2B")
    public static function DelUpdateList(?key:Dynamic):Dynamic
    {
        var updates:haxe.ds.StringMap<()->Dynamic> = UpdateList;
        if (updates.exists(key))
        {
            updates.remove(key);
        }
        return null;
    }

    @:hashAbi("S302566A0E030D23E")
    public static function DebugKeyWait():Dynamic
    {
        return null;
    }

    @:hashAbi("S0C69FAF053907AC7")
    public static function FObj_WaitSetup(?objName:Dynamic, ?found_wait:Dynamic):Dynamic
    {
        if ((found_wait == null)) {
            found_wait = 0.3;
        };
        main.event.ik.command.IkScriptCommand.SB70BF7116F3080EE(objName);
        var elapsed:StdTypes.Float = 0.0;
        while ((cppbindings.C56DE81E7.f4C7B9250(objName) == false)) {
            elapsed += main.event.ik.command.IkScriptCommand.Suspend();
            if ((found_wait <= elapsed)) {
                return false;
            };
        };
        elapsed = 0.0;
        while ((cppbindings.C56DE81E7.fBA22EECD(objName) == false)) {
            elapsed += main.event.ik.command.IkScriptCommand.Suspend();
            if ((elapsed >= main.event.ik.command.IkScriptCommand.k_TimeOutTime)) {
                cppbindings.C56DE81E7.fC312554A();
                return false;
            };
        };
        return true;
    }

    @:hashAbi("S26AFEDDA5974B0D5")
    public static function FObj_MoveXYZ(?objName:Dynamic, ?targetX:Dynamic, ?targetY:Dynamic, ?targetZ:Dynamic, ?moveSpeed:Dynamic):Dynamic
    {
        if (moveSpeed == null)
        {
            moveSpeed = 2.0;
        }
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        SFF7E51F5E20896D3(objName);
        var handle = CharacterCommand.MovePos(accessor, targetX, targetY, targetZ, moveSpeed);
        __SetActionRequestHaldes(handle, objName, "FObj_MoveXYZ");
        return handle;
    }

    @:hashAbi("S70F427551783C3CA")
    @:analyzer(no_local_dce)
    public static function FObj_Move_To_PosXYZ(?objName:Dynamic, ?targetX:Dynamic, ?targetY:Dynamic, ?targetZ:Dynamic, ?moveSpeed:Dynamic, ?tolerance:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic):Dynamic
    {
        if ((arg7 == null)) {
            arg7 = 0;
        };
        if ((arg6 == null)) {
            arg6 = 1;
        };
        if ((moveSpeed == null)) {
            moveSpeed = 2.0;
        };
        var accessor:StdTypes.Null<{ public var f3417EB8F(default, null) : Dynamic; public var f1F5887DF(default, null) : () -> cppbindings.CDB937D14; }> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.IkScriptCommand.SFF7E51F5E20896D3(objName);
        var isWalking:StdTypes.Bool = (moveSpeed < 2.0);
        if ((tolerance == null)) {
            tolerance = (if (isWalking) {
                0.4;
            } else {
                0.8;
            });
            if (lua.abi.Host.truthy(accessor.f3417EB8F())) {
                var parameter:cppbindings.CDB937D14 = accessor.f1F5887DF();
                if ((parameter != null)) {
                    tolerance = main.event.ik.command.IkScriptCommand.GetPokeTolerance(parameter.f0DE6FCA9(), isWalking);
                };
            } else {
                tolerance = main.event.ik.command.IkScriptCommand.SBE7CE4D7B1EBFEB9(objName, isWalking);
            };
            if ((isWalking && (moveSpeed > 0))) {
                tolerance *= moveSpeed;
            };
        };
        if ((arg7 == 0)) {
            arg7 = (if (isWalking) {
                7;
            } else {
                5;
            });
            if (lua.abi.Host.truthy(accessor.f3417EB8F())) {
                var parameter:cppbindings.CDB937D14 = accessor.f1F5887DF();
                if ((parameter != null)) {
                    arg7 = main.event.ik.command.IkScriptCommand.SB98C829EF1886C24(parameter.f0DE6FCA9(), isWalking);
                };
            } else {
                arg7 = main.event.ik.command.IkScriptCommand.SB37199E34F4C80DC(objName, isWalking);
            };
            if (isWalking) {
                var stride:StdTypes.Float = (cast(arg7, StdTypes.Float));
                if ((moveSpeed > 0)) {
                    arg7 = (lua.Math.floor((stride * moveSpeed)) + 1);
                };
            };
        };
        var strideText:String;
        if ((arg7 == null)) {
            strideText = "null";
        } else {
            var unsignedStride:UInt = arg7;
            var promotedStride:StdTypes.Float = ({
                var int:StdTypes.Int = (cast (cast unsignedStride));
                if ((int < 0)) {
                    4294967296.0 + int;
                } else {
                    int + 0.0;
                };
            });
            strideText = Std.string(promotedStride);
        };
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.MoveToPos_overrideTolerance(accessor, targetX, targetY, targetZ, moveSpeed, tolerance, true, arg6, !isWalking, arg7);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Move_To_PosXYZ");
        return handle;
    }

    public static function SF32D79FFE5D79967(?objName:Dynamic, ?value:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        accessor.f99FC34DC(value);
        return null;
    }

    public static function SBE7CE4D7B1EBFEB9(?objName:Dynamic, ?isWalk:Dynamic):Dynamic
    {
        var result = lua.abi.Host.truthy(isWalk) ? 0.4 : 0.8;
        var dataKey = TryConvertDynamicNpcIdToDataKey(objName);
        if (dataKey == "")
        {
            dataKey = objName;
        }
        if (dataKey == "npc_main_hotel_manager")
        {
            result = 0.4;
        }
        else if (dataKey == "npc_zigarude_cell")
        {
            result = 0.05;
        }
        return result;
    }

    @:hashAbi("S5149B2236C437C61")
    public static function GetPokeTolerance(?devID:Dynamic, ?isWalk:Dynamic):Dynamic
    {
        return lua.abi.Host.truthy(isWalk) ? 0.7 : 0.8;
    }

    public static function SB37199E34F4C80DC(?objName:Dynamic, ?isWalk:Dynamic):Dynamic
    {
        var result = lua.abi.Host.truthy(isWalk) ? 7 : 5;
        var dataKey = TryConvertDynamicNpcIdToDataKey(objName);
        if (dataKey == "")
        {
            dataKey = objName;
        }
        if (dataKey == "npc_main_hotel_manager")
        {
            result = 15;
        }
        else if (dataKey == "npc_zigarude_cell")
        {
            result = 6;
        }
        return result;
    }

    public static function SB98C829EF1886C24(?devID:Dynamic, ?isWalk:Dynamic):Dynamic
    {
        return lua.abi.Host.truthy(isWalk) ? 20 : 5;
    }

    @:hashAbi("S334F62DFF62E526B")
    public static function FObj_Move_To_PosXYZ_Navi(?objName:Dynamic, ?targetX:Dynamic, ?targetY:Dynamic, ?targetZ:Dynamic, ?moveSpeed:Dynamic, ?tolerance:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic, ?arg8:Dynamic):Dynamic
    {
        if ((arg8 == null)) {
            arg8 = 15;
        };
        if ((arg7 == null)) {
            arg7 = false;
        };
        if ((arg6 == null)) {
            arg6 = 1;
        };
        if ((tolerance == null)) {
            tolerance = 1.0;
        };
        if ((moveSpeed == null)) {
            moveSpeed = 2.0;
        };
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.IkScriptCommand.SFF7E51F5E20896D3(objName);
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.MoveToPos_overrideTolerance(accessor, targetX, targetY, targetZ, moveSpeed, tolerance, false, arg6, arg7, arg8);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Move_To_PosXYZ_Navi");
        return handle;
    }

    @:hashAbi("S1E754A51A2622120")
    public static function FObj_Set_Pos(?objName:Dynamic, ?posX:Dynamic, ?posY:Dynamic, ?posZ:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetPosAng(accessor, ((lua.Table.create(([(cast posX), (cast posY), (cast posZ)] : Array<Float>)))), ((lua.Table.create(([0, 0, 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Pos");
        return handle;
    }

    @:hashAbi("S9CE2E7515918459E")
    public static function FObj_Set_Ang(?objName:Dynamic, ?angle:Dynamic):Dynamic
    {
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = accessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetPosAng(accessor, position, ((lua.Table.create(([0, (cast angle), 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Ang");
        return handle;
    }

    @:hashAbi("S96D48505638D0B7B")
    public static function FObj_Set_Pos_Ang(?objName:Dynamic, ?posX:Dynamic, ?posY:Dynamic, ?posZ:Dynamic, ?angle:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetPosAng(accessor, ((lua.Table.create(([(cast posX), (cast posY), (cast posZ)] : Array<Float>)))), ((lua.Table.create(([0, (cast angle), 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Pos_Ang");
        return handle;
    }

    @:hashAbi("S9EBB12147154696C")
    public static function FObj_Set_Pos_Ang_with_Reset(?objName:Dynamic, ?posX:Dynamic, ?posY:Dynamic, ?posZ:Dynamic, ?angle:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetPosAng(accessor, ((lua.Table.create(([(cast posX), (cast posY), (cast posZ)] : Array<Float>)))), ((lua.Table.create(([0, (cast angle), 0] : Array<Float>)))), true);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Pos_Ang_with_Reset");
        return handle;
    }

    @:hashAbi("SD224A12AE9EC76D8")
    public static function FObj_Set_Ang_To_Obj(?fromObjName:Dynamic, ?toObjName:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        var fromAccessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(fromObjName);
        var toAccessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(toObjName);
        if (((fromAccessor == null) || (toAccessor == null))) {
            return null;
        };
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = fromAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var lookFrom:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = fromAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            };
        });
        var lookTo:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = toAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues5:lua.Table<Int, Float>;
                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues5);
            };
        });
        var angle:StdTypes.Float = main.event.ik.command.IkScriptCommand.GetLookAtTargetAngle(lookFrom, lookTo);
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetPosAng(fromAccessor, position, ((lua.Table.create(([0, angle, 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, fromObjName, "FObj_Set_Ang_To_Obj");
        return handle;
    }

    @:hashAbi("SF986A92A6F3637A3")
    public static function FObj_Set_Ang_To_Pos(?objName:Dynamic, ?target:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = accessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var lookFrom:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = accessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            };
        });
        var angle:StdTypes.Float = main.event.ik.command.IkScriptCommand.GetLookAtTargetAngle(lookFrom, target);
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetPosAng(accessor, position, ((lua.Table.create(([0, angle, 0] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Ang_To_Pos");
        return handle;
    }

    @:hashAbi("S097AE2DAC3739069")
    public static function FObj_Set_Turn(?objName:Dynamic, ?angle:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.IkScriptCommand.SFF7E51F5E20896D3(objName);
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetTurn(accessor, angle, useCurrentForward);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Turn");
        return handle;
    }

    @:hashAbi("S0B952031B43AF0ED")
    public static function FObj_Set_Turn_To_Obj(?fromObjName:Dynamic, ?toObjName:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        var fromAccessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(fromObjName);
        var toAccessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(toObjName);
        if (((fromAccessor == null) || (toAccessor == null))) {
            return null;
        };
        main.event.ik.command.IkScriptCommand.SFF7E51F5E20896D3(fromObjName);
        var lookFrom:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = fromAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var lookTo:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = toAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            };
        });
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetLookAtTargetAngle(lookFrom, lookTo);
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetTurn(fromAccessor, angle, useCurrentForward);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, fromObjName, "FObj_Set_Turn_To_Obj");
        return handle;
    }

    @:hashAbi("S899CA0316A9A30F2")
    public static function FObj_Set_Turn_To_Pos(?objName:Dynamic, ?target:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.IkScriptCommand.SFF7E51F5E20896D3(objName);
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = accessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetLookAtTargetAngle(position, target);
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetTurn(accessor, angle, useCurrentForward);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Turn_To_Pos");
        return handle;
    }

    @:hashAbi("S36E82E23B98413D0")
    public static function FObj_Set_Turn_To_Obj_LookAt(?fromObjName:Dynamic, ?toObjName:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        var fromAccessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(fromObjName);
        var toAccessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(toObjName);
        if (((fromAccessor == null) || (toAccessor == null))) {
            return null;
        };
        var target:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = toAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        if (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.SDC6EBFBAD25B5CC2(fromAccessor, target))) {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(fromObjName, toObjName, "head");
            return null;
        };
        main.event.ik.command.IkScriptCommand.SFF7E51F5E20896D3(fromObjName);
        var from:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = fromAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            };
        });
        var to:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = toAccessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues5:lua.Table<Int, Float>;
                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues5);
            };
        });
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetTurn(fromAccessor, main.event.ik.command.IkScriptCommand.GetLookAtTargetAngle(from, to), useCurrentForward);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, fromObjName, "FObj_Set_Turn_To_Obj_LookAt");
        return handle;
    }

    @:hashAbi("S16C00C41F74B1949")
    public static function FObj_Set_Turn_To_Pos_LookAt(?objName:Dynamic, ?target:Dynamic, ?useCurrentForward:Dynamic):Dynamic
    {
        if ((useCurrentForward == null)) {
            useCurrentForward = false;
        };
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        if (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.SDC6EBFBAD25B5CC2(accessor, target))) {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(objName, target);
            return null;
        };
        main.event.ik.command.IkScriptCommand.SFF7E51F5E20896D3(objName);
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = accessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.SetTurn(accessor, main.event.ik.command.IkScriptCommand.GetLookAtTargetAngle(position, target), useCurrentForward);
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(handle, objName, "FObj_Set_Turn_To_Pos_LookAt");
        return handle;
    }

    public static function SDC6EBFBAD25B5CC2(?accessor:BaseChrAccessor, ?target:Vector3):Dynamic
    {
        var forward:lua.Table<Int, Float> = ({
            var _this:cppbindings.CD5675BA5 = accessor.f64857644();
            var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 1] : Array<Float>))));
            {
                var v:cppbindings.Vec3 = _this.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            };
        });
        var position:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = accessor.f7360ED03();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues5:lua.Table<Int, Float>;
                vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues5);
            };
        });
        var direction:lua.Table<Int, Float> = ({
            var rhs:lua.Table<Int, Float> = ((lua.Table.create(([((cast target)[1] - (cast position)[1]), ((cast target)[2] - (cast position)[2]), ((cast target)[3] - (cast position)[3])] : Array<Float>))));
            {
                var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((cast rhs)[1], (cast rhs)[2], (cast rhs)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues9:lua.Table<Int, Float>;
                    vectorValues9 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues9);
                };
            };
        });
        var angle:StdTypes.Int = main.util.Math.GetVectorAngle(direction, forward);
        return (((angle / (2 * lua.Math.pi)) * 360.0) > main.event.ik.command.IkScriptCommand.S551B6399F2D0234C);
    }

    @:hashAbi("S2DC64EE5B3D1D2DF")
    public static function FObj_Reset_Animation(?objName:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        var handle = CharacterCommand.ResetAnimation(accessor);
        __SetActionRequestHaldes(handle, objName, "FObj_Reset_Animation");
        return handle;
    }

    @:hashAbi("SAB02A37A49A39553")
    public static function FObj_Reset_Animation_Force(?objName:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        var handle = CharacterCommand.ResetAnimation_Force(accessor);
        __SetActionRequestHaldes(handle, objName, "FObj_Reset_Animation_Force");
        return handle;
    }

    @:hashAbi("S503F79F8BD1D92A5")
    public static function FObj_Reset_Animation_Base(?objName:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        return CharacterCommand.ResetAnimation_Base(accessor);
    }

    @:hashAbi("S06F17BDDDD858E15")
    public static function FObj_Reset_Animation_Base_Force(?objName:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        return CharacterCommand.ResetAnimation_Base_Force(accessor);
    }

    @:hashAbi("SE6FEE378CF9128CA")
    public static function FObj_Reset_AnimationAll(?objName:Dynamic):Dynamic
    {
        var handle = FObj_Reset_Animation(objName);
        FObj_Reset_Animation_Base(objName);
        return handle;
    }

    @:hashAbi("S64AD521A4557D4C8")
    public static function FObj_Set_Animation(?objName:Dynamic, ?animType:Dynamic, ?noReset:Dynamic):Dynamic
    {
        if (noReset == null)
        {
            noReset = false;
        }
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        var handle = noReset == false
            ? CharacterCommand.PlayAnimation(accessor, animType)
            : CharacterCommand.PlayAnimation_noReset(accessor, animType);
        __SetActionRequestHaldes(handle, objName, "FObj_Set_Animation");
        return handle;
    }

    public static function S83CD71CD25CA742A(?objName:Dynamic, ?animType:Dynamic, ?noReset:Dynamic):Dynamic
    {
        if (noReset == null)
        {
            noReset = false;
        }
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        var handle = noReset == false
            ? CharacterCommand.PlayAnimation(accessor, animType)
            : CharacterCommand.PlayAnimation_noReset(accessor, animType);
        return handle;
    }

    @:hashAbi("SC2E67F4B3F157211")
    public static function FObj_Set_Animation_Immediately(?objName:Dynamic, ?animType:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        var handle = CharacterCommand.PlayAnimationImmediately(accessor, animType);
        __SetActionRequestHaldes(handle, objName, "FObj_Set_Animation_Immediately");
        return handle;
    }

    @:hashAbi("SC1C784C90087C934")
    public static function FObj_Set_Animation_Force(?objName:Dynamic, ?animType:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        var handle = CharacterCommand.PlayAnimation_Force(accessor, animType);
        __SetActionRequestHaldes(handle, objName, "FObj_Set_Animation_Force");
        return handle;
    }

    @:hashAbi("SA6C8A4ABDF6A82FF")
    public static function FObj_Set_Animation_OneShot(?objName:Dynamic, ?animType:Dynamic, ?resetType:Dynamic, ?resetTime:Dynamic, ?noReset:Dynamic):Dynamic
    {
        if ((noReset == null)) {
            noReset = false;
        };
        if ((resetTime == null)) {
            resetTime = 2.0;
        };
        if ((resetType == null)) {
            resetType = 6;
        };
        var removeHandle:(String, main.event.ik.command.OneShotAnimeHandle) -> StdTypes.Bool = function(key:String, handle:main.event.ik.command.OneShotAnimeHandle):StdTypes.Bool {
            main.event.ik.command.IkScriptCommand.DelUpdateList(key);
            var handles:Array<main.event.ik.command.OneShotAnimeHandle> = main.event.ik.command.IkScriptCommand.OneShotActionRequestHandles;
            return handles.remove(handle);
        };
        var accessor:StdTypes.Null<StdTypes.Null<{ public var fA6EF2E93(default, null) : (StdTypes.Null<Dynamic>, StdTypes.Int) -> cppbindings.C478EFED3; }>> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        var oneShotHandle:main.event.ik.command.OneShotAnimeHandle = new main.event.ik.command.OneShotAnimeHandle();
        if ((accessor == null)) {
            oneShotHandle.isFinished = true;
            return oneShotHandle;
        };
        var existing:main.event.ik.command.OneShotAnimeHandle = null;
        var handles:Array<main.event.ik.command.OneShotAnimeHandle> = main.event.ik.command.IkScriptCommand.OneShotActionRequestHandles;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < handles.length)) {
                var handle:main.event.ik.command.OneShotAnimeHandle = handles[arrayIndex];
                ++arrayIndex;
                if ((handle.objName == objName)) {
                    if ((handle.animType == animType)) {
                        oneShotHandle.isFinished = true;
                        return oneShotHandle;
                    };
                    existing = handle;
                    break;
                };
            };
        };
        var key:String = ((Std.string(objName) + "_FObj_Set_Animation_OneShot_") + Std.string(animType));
        if ((existing != null)) {
            removeHandle(key, existing);
        };
        var action:cppbindings.C478EFED3 = (if ((noReset == false)) {
            main.event.ik.command.CharacterCommand.PlayAnimation(accessor, animType);
        } else {
            main.event.ik.command.CharacterCommand.PlayAnimation_noReset(accessor, animType);
        });
        main.event.ik.command.IkScriptCommand.__SetActionRequestHaldes(action, objName, "FObj_Set_Animation_OneShot");
        oneShotHandle.objName = objName;
        oneShotHandle.animType = animType;
        var pending:Array<main.event.ik.command.OneShotAnimeHandle> = main.event.ik.command.IkScriptCommand.OneShotActionRequestHandles;
        pending.push(oneShotHandle);
        var timer:cppbindings.C7F7A5192 = cppbindings.C7F7A5192.f101D811F();
        timer.fF5E28294();
        main.event.ik.command.IkScriptCommand.SetUpdateList(key, function():Dynamic {
            timer.f92A1FFA7();
            if ((timer.fC0E2CAD0() < resetTime)) {
                return null;
            };
            if (action.fFFAA5D50()) {
                var character:StdTypes.Null<StdTypes.Null<{ public var fA6EF2E93(default, null) : (StdTypes.Null<Dynamic>, StdTypes.Int) -> cppbindings.C478EFED3; }>> = accessor;
                if ((character != null)) {
                    if ((oneShotHandle.resetHandle != null)) {
                        if (oneShotHandle.resetHandle.fFFAA5D50()) {
                            oneShotHandle.isFinished = true;
                            removeHandle(key, oneShotHandle);
                        };
                    } else {
                        oneShotHandle.resetHandle = character.fA6EF2E93(resetType, 1);
                        oneShotHandle.isResetRequested = true;
                    };
                };
            };
            return null;
        });
        return oneShotHandle;
    }

    @:hashAbi("S989A0E3628A6378F")
    public static function FObj_Reset_Facial(?objName:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        accessor.fA6EF2E93(5, 1);
        accessor.fA6EF2E93(9, 1);
        accessor.fA6EF2E93(10, 1);
        accessor.fA6EF2E93(11, 1);
        return null;
    }

    public static function S1B35E8E6D3B2A662(?objName:Dynamic, ?eye:Dynamic, ?mouth:Dynamic, ?eyebrow:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        accessor.fA6EF2E93(5, 1);
        if (lua.abi.Host.truthy(eye))
        {
            accessor.fA6EF2E93(9, 1);
        }
        if (lua.abi.Host.truthy(mouth))
        {
            accessor.fA6EF2E93(10, 1);
        }
        if (lua.abi.Host.truthy(eyebrow))
        {
            accessor.fA6EF2E93(11, 1);
        }
        return null;
    }

    @:hashAbi("S6F2DD303E4B3C8DA")
    public static function FObj_Set_Facial(?objName:Dynamic, ?eye:Dynamic, ?mouth:Dynamic, ?eyebrow:Dynamic):Dynamic
    {
        if (eyebrow == null)
        {
            eyebrow = 401;
        }
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        FObj_Set_AutoBlink(objName, true);
        CharacterCommand.S81C31181B4CBD35B(accessor, eyebrow);
        CharacterCommand.S81C31181B4CBD35B(accessor, eye);
        CharacterCommand.S81C31181B4CBD35B(accessor, mouth);
        return null;
    }

    public static function SA5ECE0BD4390D1D5(?objName:Dynamic, ?eye:Dynamic, ?mouth:Dynamic, ?eyebrow:Dynamic):Dynamic
    {
        if (eyebrow == null)
        {
            eyebrow = 401;
        }
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        FObj_Set_AutoBlink(objName, true);
        CharacterCommand.S84B5D24CD68E5DA6(accessor, eyebrow);
        CharacterCommand.S84B5D24CD68E5DA6(accessor, eye);
        CharacterCommand.S84B5D24CD68E5DA6(accessor, mouth);
        return null;
    }

    public static function SD4A65D417E1E87B3(?objName:Dynamic, ?animType:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        CharacterCommand.S81C31181B4CBD35B(accessor, animType);
        return null;
    }

    @:hashAbi("S183AD8D1B4B514A6")
    public static function FObj_CloseEye(?objName:Dynamic):Dynamic
    {
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        CharacterCommand.S81C31181B4CBD35B(accessor, 362);
        FObj_Set_AutoBlink(objName, false);
        return null;
    }

    @:hashAbi("SA3AD78B4E0BA3644")
    public static function FObj_Start_LipSync(?objName:Dynamic, ?lipSyncType:Dynamic):Dynamic
    {
        if (lipSyncType == null)
        {
            lipSyncType = 467;
        }
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        CharacterCommand.SC23B17AA2AEF30D7(accessor, lipSyncType, 3);
        return null;
    }

    @:hashAbi("S8564C16169F9479E")
    public static function FObj_Stop_LipSync(?objName:Dynamic, ?stopMouthType:Dynamic):Dynamic
    {
        if (stopMouthType == null)
        {
            stopMouthType = 451;
        }
        var accessor = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        if (stopMouthType == 451)
        {
            accessor.fA6EF2E93(11, 1);
        }
        else
        {
            CharacterCommand.SC23B17AA2AEF30D7(accessor, stopMouthType, 3);
        }
        return null;
    }

    @:hashAbi("S09650F7513B02189")
    public static function SetFacialTemplate(npcId:String, facialType:String, dataKey:String = "", alternate:Bool = false):Dynamic
    {
        var cache:haxe.ds.StringMap<Dynamic> = CacheFacialTemplateList;
        cache.set(npcId, facialType);
        if (facialType == "normal")
        {
            FObj_Reset_Facial(npcId);
            return null;
        }
        if (dataKey == "")
        {
            dataKey = TryConvertDynamicNpcIdToDataKey(npcId);
        }
        var data = GetFacialTemplateData(ConvertFacialDataKey(npcId, dataKey), facialType);
        if (data.f1FB8E82D() == 0 || data.f79F0BB0B() == 0 || data.fDD7C9DC5() == 0 || data.f0CBDFA79() == 0)
        {
            data.f1FB8E82D();
            data.f79F0BB0B();
            data.fDD7C9DC5();
            data.f0CBDFA79();
            return null;
        }
        if (alternate)
        {
            SA5ECE0BD4390D1D5(npcId, cast(data.f79F0BB0B(), Int), cast(data.fDD7C9DC5(), Int), cast(data.f1FB8E82D(), Int));
        }
        else
        {
            FObj_Set_Facial(npcId, cast(data.f79F0BB0B(), Int), cast(data.fDD7C9DC5(), Int), cast(data.f1FB8E82D(), Int));
        }
        return null;
    }

    public static function SDF7733B3BCABC76A(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic):Dynamic
    {
        if (null == arg2)
        {
            arg2 = "";
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(arg0, arg1, arg2, true);
        return null;
    }

    @:hashAbi("S2253AAE8A7885C6F")
    public static function ConvertFacialDataKey(?npcId:Dynamic, ?dataKey:Dynamic):Dynamic
    {
        return dataKey == "" ? npcId : dataKey;
    }

    @:hashAbi("S84EC0298DA72DB6D")
    public static function GetFacialTemplateData(?npcId:Dynamic, ?facialType:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f2EAD82FC(cast(GetNpcObjectTemplateId(npcId), Int), facialType);
    }

    public static function SB0C5B91E6DF243A1(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var accessor:Dynamic = GetCharacterAccessorEvent(arg0);
        if (accessor == null)
        {
            return null;
        }
        var cachedValues:haxe.ds.StringMap<Dynamic> = SCF36F99F677C074B;
        if (!cachedValues.exists(arg0))
        {
            var currentValue = accessor.fA0466594();
            if (currentValue == null)
            {
                return null;
            }
            cachedValues = SCF36F99F677C074B;
            cachedValues.set(arg0, currentValue);
        }
        accessor.f8EF48F76(arg1);
        return null;
    }

    @:hashAbi("S10A25E1BCEA2D263")
    public static function FObj_Set_CollisionAndGravity(?npcId:Dynamic, ?isEnable:Dynamic):Dynamic
    {
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(npcId);
        if ((accessor == null)) {
            return null;
        };
        var updateKey:String = (Std.string(npcId) + Std.string("UpdateDisableCollisionAndGravity"));
        if (lua.abi.Host.truthy(isEnable)) {
            var updates:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.UpdateList;
            if (updates.exists(updateKey)) {
                main.event.ik.command.IkScriptCommand.DelUpdateList(updateKey);
            };
        } else {
            main.event.ik.command.IkScriptCommand.SetUpdateList(updateKey, function():Dynamic {
                if ((accessor != null)) {
                    accessor.f3B751749();
                };
                return null;
            });
        };
        return null;
    }

    @:hashAbi("S9928C499A8923900")
    public static function FObj_Set_Gravity(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var accessor:Dynamic = GetCharacterAccessorEvent(arg0);
        if (accessor == null)
        {
            return null;
        }
        var updateKey = Std.string(arg0) + Std.string("UpdateDisableGravity");
        if (lua.abi.Host.truthy(arg1))
        {
            var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
            if (updates.exists(updateKey))
            {
                DelUpdateList(updateKey);
            }
        }
        else
        {
            SetUpdateList(updateKey, function():Dynamic
            {
                if (accessor != null)
                {
                    accessor.f770040BF();
                }
                return null;
            });
        }
        return null;
    }

    @:hashAbi("SCED1F137EAF6D45A")
    public static function FObj_Set_DisableWallCollision(?npcId:Dynamic, ?isEnable:Dynamic):Dynamic
    {
        var accessor:Dynamic = GetCharacterAccessorEvent(npcId);
        if (accessor == null)
        {
            return null;
        }
        var updateKey = Std.string(npcId) + Std.string("UpdateDisableWallCollision");
        if (lua.abi.Host.truthy(isEnable))
        {
            var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
            if (updates.exists(updateKey))
            {
                DelUpdateList(updateKey);
            }
        }
        else
        {
            SetUpdateList(updateKey, function():Dynamic
            {
                if (accessor != null)
                {
                    accessor.fF9956BB1();
                }
                return null;
            });
        }
        return null;
    }

    @:hashAbi("S7FE881B4A4957127")
    public static function LoadTravelBagScene(?bagPos:Dynamic, ?isOpen:Dynamic):Dynamic
    {
        if ((isOpen == null)) {
            isOpen = false;
        };
        var field:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D("field");
        if ((field == null)) {
            return null;
        };
        main.event.ik.command.IkScriptCommand.cacheTravelBagSceneName = "travel_bag";
        main.event.ik.command.IkScriptCommand.cacheTravelBagSceneName = (Std.string(main.event.ik.command.IkScriptCommand.cacheTravelBagSceneName) + Std.string((if (lua.abi.Host.truthy(isOpen)) {
            "_open";
        } else {
            "_close";
        })));
        var scene:StdTypes.Null<cppbindings.CA042DA13> = field.f1FC07C91((Std.string((Std.string((Std.string((Std.string("world/ik_scene/parts/event/") + Std.string(main.event.ik.command.IkScriptCommand.cacheTravelBagSceneName))) + Std.string("_/"))) + Std.string(main.event.ik.command.IkScriptCommand.cacheTravelBagSceneName))) + Std.string(".trscn")));
        if ((scene == null)) {
            return null;
        };
        scene.f0EF10D0C();
        while ((!scene.f9D8BC178() || !scene.f48F8C7FF())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var bag:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7((if (lua.abi.Host.truthy(isOpen)) {
            "ob0003_01_bag";
        } else {
            "ob0003_00_bag";
        }));
        if ((bag == null)) {
            return null;
        };
        while ((!bag.f9D8BC178() || !bag.f48F8C7FF())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var model:StdTypes.Null<cppbindings.CECB91E31> = cppbindings.CECB91E31.fB41FD22F(bag);
        if ((model == null)) {
            return null;
        };
        model.f6754453E(true);
        var position:lua.Table<Int, Float> = bagPos;
        var bagObject:Dynamic = bag;
        untyped (cast bagObject : Dynamic).f8F2B0552((cast position)[1], (cast position)[2], (cast position)[3]);
        return null;
    }

    @:hashAbi("SC2913A044990762E")
    public static function TerminateTravelBagScene():Dynamic
    {
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D(main.event.ik.command.IkScriptCommand.cacheTravelBagSceneName);
        if ((scene == null)) {
            return null;
        };
        scene.f5C99C0AC();
        return null;
    }

    public static function S40ACEF14A8745A74(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic):Dynamic
    {
        var key = Std.string(arg1) + Std.string("CreateRotomPhoneLooseWait");
        var executor = new main.event.ik.CoroutineExecutor(function():Dynamic
        {
            main.event.ik.ObjectTemplateDataManager.Create(arg0, arg1, arg2, arg3);
            return null;
        });
        SetUpdateList(key, function():Dynamic
        {
            if (lua.abi.Host.truthy(executor.Update()))
            {
                DelUpdateList(key);
            }
            return null;
        });
        return null;
    }

    public static function SBE4399F61C307041():Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(main.event.ik.ObjectTemplateDataManager.S81BA08EE110AAE62()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return null;
    }

    public static function S5AED1F1B5B2A7020():Dynamic
    {
        main.event.ik.ObjectTemplateDataManager.S2568F9C27164B747();
        return null;
    }

    public static function S3E36C5EB9EFAF0F8():Dynamic
    {
        main.event.ik.ObjectTemplateDataManager.S3E36C5EB9EFAF0F8();
        return null;
    }

    public static function SFF7E51F5E20896D3(?arg0:Dynamic):Dynamic
    {
        while (true)
        {
            var handles:Array<OneShotAnimeHandle> = OneShotActionRequestHandles;
            if (!Lambda.exists(handles, function(handle:OneShotAnimeHandle):Bool
            {
                return !lua.abi.Host.truthy(handle.isFinished) && handle.objName == arg0;
            }))
            {
                break;
            }
            Suspend();
        }
        return null;
    }

    @:hashAbi("S8DAC0EF0AF4AFAA4")
    public static function PlayAnimeFieldObj(?sceneName:Dynamic, ?objName:Dynamic, ?animeName:Dynamic, ?animeParamType:Dynamic, ?animeParamValue:Dynamic, ?seName:Dynamic):Dynamic
    {
        if ((null == seName))
        {
            seName = "";
        };
        if ((null == animeParamValue))
        {
            animeParamValue = "";
        };
        cppbindings.C56DE81E7.f57BA4C44(sceneName, objName, animeName, animeParamType, animeParamValue, seName);
        return null;
    }

    @:hashAbi("S5E6095DB2C316492")
    public static function CreateRotomPhone(?charaId:Dynamic, ?modelLabel:Dynamic):Dynamic
    {
        if ((null == modelLabel))
        {
            modelLabel = "";
        };
        main.event.ik.RotomPhoneManager.CreateRotomPhone(charaId, modelLabel);
        return null;
    }

    @:hashAbi("SFDA8853CE5A8A9F5")
    public static function CreateRotomPhoneLooseWait(?charaId:Dynamic, ?modelLabel:Dynamic):Dynamic
    {
        if (modelLabel == null)
        {
            modelLabel = "";
        }
        main.event.ik.RotomPhoneManager.CreateRotomPhone(charaId, modelLabel, true);
        var key = Std.string(charaId) + Std.string("CreateRotomPhoneLooseWait");
        var executor = new main.event.ik.CoroutineExecutor(function():Dynamic
        {
            while (!lua.abi.Host.truthy(main.event.ik.RotomPhoneManager.UpdateCreateRotomPhone(charaId)))
            {
                Suspend();
            }
            return null;
        });
        SetUpdateList(key, function():Dynamic
        {
            if (lua.abi.Host.truthy(executor.Update()))
            {
                DelUpdateList(key);
            }
            return null;
        });
        return null;
    }

    @:hashAbi("SA1E02BA2E15BCC87")
    public static function WaitCreateRotomPhone(?charaId:Dynamic):Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(main.event.ik.RotomPhoneManager.IsFinishedCreateRotomPhone(charaId)))
            {
                break;
            };
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("S9492CFD4A3860AA2")
    public static function TerminateRotomPhoneAll():Dynamic
    {
        main.event.ik.RotomPhoneManager.TerminateAll();
        return null;
    }

    @:hashAbi("SBA1391F447C63D27")
    public static function AttachRotomPhone(?charaId:Dynamic, ?targetAttachChara:Dynamic):Dynamic
    {
        if ((targetAttachChara == null)) {
            targetAttachChara = "";
        };
        if ((targetAttachChara == "")) {
            main.event.ik.RotomPhoneManager.AttachOwner(charaId);
        } else {
            var accessor:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(targetAttachChara);
            if ((accessor == null)) {
                return null;
            };
            var object:StdTypes.Null<cppbindings.C016374C1> = accessor.fEBA8F794();
            if ((object != null)) {
                main.event.ik.RotomPhoneManager.AttachOther(charaId, object);
            };
        };
        return null;
    }

    @:hashAbi("S4FF915710BF4DFC1")
    public static function DetachRotomPhone(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.Detach(charaId);
        return null;
    }

    @:hashAbi("S8AFFF9402A9AA809")
    public static function TakeOutRotomPhone(?charaId:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if (arg1 == null)
        {
            arg1 = false;
        }
        var animation = lua.abi.Host.truthy(arg1) ? 1 : 0;
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, animation);
        return null;
    }

    @:hashAbi("S8ACE0269AD32989F")
    public static function PutAwayRotomPhone(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 7);
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 2);
        return null;
    }

    @:hashAbi("S1262AE404D1C0577")
    public static function WaitAnimeRotomPhoneToTakeOut(?charaId:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if (arg1 == null)
        {
            arg1 = false;
        }
        var animation = lua.abi.Host.truthy(arg1) ? 1 : 0;
        main.event.ik.RotomPhoneManager.WaitAnimeState(charaId, animation);
        return null;
    }

    @:hashAbi("S82647E1416366BED")
    public static function WaitAnimeRotomPhoneToPutAway(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.WaitAnimeState(charaId, 2);
        return null;
    }

    @:hashAbi("S8852AFBA9985C12B")
    public static function GetRotomPhoneWaistTranslation(?charaId:Dynamic):Dynamic
    {
        return main.event.ik.RotomPhoneManager.GetWaistTranslation(charaId);
    }

    @:hashAbi("SC4D9AD0D17CE892C")
    public static function LookAtRotomPhone(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.LookAtRotomPhone(charaId);
        return null;
    }

    @:hashAbi("SCF6619A1BDC8D8BE")
    public static function LookAtRotomPhoneOther(?lookAtCharaId:Dynamic, ?rotomPhoneId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.LookAtRotomPhoneOhter(lookAtCharaId, rotomPhoneId);
        return null;
    }

    public static function SD6D113514F022E54(?arg0:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.PlayAnime(arg0, 6);
        return null;
    }

    public static function S919A76585C377A26(?arg0:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.PlayAnime(arg0, 7);
        return null;
    }

    @:hashAbi("S101FC252A5B0AF5D")
    public static function StartRotomPhoneSequence(?charaId:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if (null == arg1)
        {
            arg1 = false;
        };
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(charaId, arg1);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(charaId, arg1);
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 6);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(charaId);
        return null;
    }

    @:hashAbi("S2730C13A8EA2E7F2")
    public static function StartRotomPhoneInstallSequence(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 3);
        main.event.ik.RotomPhoneManager.WaitAnimeState(charaId, 3);
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 6);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(charaId);
        return null;
    }

    @:hashAbi("SA5D520DCA806A293")
    public static function PlayInstallMotionRotomPhone(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 4);
        main.event.ik.RotomPhoneManager.WaitAnimeState(charaId, 4);
        return null;
    }

    @:hashAbi("SCCB30D282A191188")
    public static function PutAwayInstallRotomPhone(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 7);
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 5);
        return null;
    }

    @:hashAbi("S928F5E2891114F38")
    public static function WaitAnimeRotomPhoneToPutAwayInstall(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.WaitAnimeState(charaId, 5);
        return null;
    }

    @:hashAbi("S08B9414C349C9E1C")
    public static function StartAdventAnimeRotomPhone(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.PlayAnime(charaId, 8);
        return null;
    }

    @:hashAbi("S237A50D4CC0840CC")
    public static function WaitAnimeRotomPhoneToStartAdvent(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.WaitAnimeState(charaId, 8);
        return null;
    }

    @:hashAbi("SA4958392D2EEE246")
    public static function WaitAnimeRotomPhoneEndAdvent(?charaId:Dynamic):Dynamic
    {
        main.event.ik.RotomPhoneManager.WaitAnimeState(charaId, 9);
        return null;
    }

    @:hashAbi("SFE19B6F1B8686887")
    public static function Create_Npc_Dynamic(?name:Dynamic, ?pos:Dynamic, ?ang:Dynamic, ?npcID:Dynamic, ?sceneName:Dynamic, ?varNo:Dynamic, ?isVisible:Dynamic, ?arg7:Dynamic):Dynamic
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
        if ((sceneName == null)) {
            sceneName = "event_script";
        };
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f4C7B9250(name))) {
            return null;
        };
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f4C7B9250(npcID))) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(npcID, false);
            main.event.ik.command.IkScriptCommand.SB54DBC4F41BBBCDD(npcID);
        };
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.CharacterCommand.CreateNpc(name, sceneName, pos, ang, main.event.ik.command.IkScriptCommand.GetNpcObjectTemplateId(npcID), varNo, isVisible, arg7);
        if ((accessor != null)) {
            var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
            createdAccessors.push(accessor);
            var dynamicNpcs:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.DynamicCreateNpcMap;
            dynamicNpcs.set(name, npcID);
        };
        return accessor;
    }

    public static function S156410CEE281BFF8(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic):Dynamic
    {
        if ((arg7 == null)) {
            arg7 = true;
        };
        if ((arg6 == null)) {
            arg6 = true;
        };
        if ((arg5 == null)) {
            arg5 = 0;
        };
        if ((arg4 == null)) {
            arg4 = "event_script";
        };
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f4C7B9250(arg0))) {
            return null;
        };
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.CharacterCommand.CreateNpc(arg0, arg4, arg1, arg2, arg3, arg5, arg6, arg7);
        if ((accessor != null)) {
            var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
            createdAccessors.push(accessor);
        };
        return accessor;
    }

    public static function S20BF4782C5F7CF65(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic):Dynamic
    {
        if ((arg7 == null)) {
            arg7 = true;
        };
        if ((arg6 == null)) {
            arg6 = true;
        };
        if ((arg5 == null)) {
            arg5 = 0;
        };
        if ((arg4 == null)) {
            arg4 = "event_script";
        };
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f4C7B9250(arg0))) {
            return null;
        };
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.CharacterCommand.CreateNpc(arg0, arg4, arg1, arg2, main.event.ik.command.IkScriptCommand.GetNpcObjectTemplateId(arg3), arg5, arg6, arg7);
        if ((accessor != null)) {
            var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
            createdAccessors.push(accessor);
            var dynamicNpcs:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.DynamicCreateNpcMap;
            dynamicNpcs.set(arg0, arg3);
        };
        return accessor;
    }

    @:hashAbi("S0D43FC7826F5A0FA")
    public static function Create_NpcPokemon(?name:Dynamic, ?pos:Dynamic, ?ang:Dynamic, ?devNo:Dynamic, ?formNo:Dynamic, ?sexType:Dynamic, ?sceneName:Dynamic, ?varNo:Dynamic, ?isVisible:Dynamic, ?isRare:Dynamic, ?scale:Dynamic, ?isOybn:Dynamic, ?isOybnEye:Dynamic, ?arg13:Dynamic, ?arg14:Dynamic):Dynamic
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
        if ((isOybn == null)) {
            isOybn = false;
        };
        if ((scale == null)) {
            scale = 128;
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
        if ((sceneName == null)) {
            sceneName = "event_script";
        };
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f4C7B9250(name))) {
            return null;
        };
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.CharacterCommand.CreateNpcPokemon(name, sceneName, pos, ang, devNo, formNo, sexType, varNo, isVisible, isRare, isOybn, scale, isOybnEye, arg13, arg14);
        if ((accessor != null)) {
            var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
            createdAccessors.push(accessor);
        };
        return accessor;
    }

    @:hashAbi("S1BDA78F96336596F")
    public static function IsCleanupTargetAtEndBaseEvent(?name:Dynamic):Dynamic
    {
        if (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f4C7B9250(name))) {
            return false;
        };
        if (!lua.abi.Host.truthy(cppbindings.C56DE81E7.fBA22EECD(name))) {
            return false;
        };
        var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
        if (Lambda.exists(createdAccessors, function(accessor:cppbindings.C65853BD0):StdTypes.Bool {
            return (name == accessor.fE9C29DA1());
        })) {
            return false;
        };
        return true;
    }

    @:hashAbi("S1965476A6A638B70")
    public static function Wait_CreateCharacter(?handle:Dynamic):Dynamic
    {
        if ((handle != null)) {
            main.event.ik.command.CharacterCommand.WaitCreateCharacter(handle);
        } else {
            var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
            {
                var arrayIndex:StdTypes.Int = 0;
                while ((arrayIndex < createdAccessors.length)) {
                    var accessor:cppbindings.C65853BD0 = createdAccessors[arrayIndex];
                    ++arrayIndex;
                    main.event.ik.command.CharacterCommand.WaitCreateCharacter(accessor);
                };
            };
        };
        return null;
    }

    @:hashAbi("SB1734BFAFC3FB69D")
    public static function Destroy_CreateCharacter(?objName:Dynamic):Dynamic
    {
        var destroy = function(accessor:Dynamic, name:String):Void
        {
            var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
            for (key in updates.keys())
            {
                if (key.indexOf(name) >= 0)
                {
                    DelUpdateList(key);
                }
            }
            accessor.f5343B360();
        };
        if (objName != null)
        {
            var accessor = GetCharacterAccessorEvent(objName);
            if (accessor != null)
            {
                destroy(accessor, objName);
                var created:Array<Dynamic> = CreateChrAccessorForEventHandles;
                created.remove(accessor);
                var dynamicNpcs:haxe.ds.StringMap<Dynamic> = DynamicCreateNpcMap;
                if (dynamicNpcs.exists(objName))
                {
                    dynamicNpcs.remove(objName);
                }
            }
        }
        else
        {
            var created:Array<Dynamic> = CreateChrAccessorForEventHandles;
            for (accessor in created)
            {
                var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
                for (key in updates.keys())
                {
                    destroy(accessor, accessor.fE9C29DA1());
                }
                accessor.f5343B360();
            }
            var dynamicNpcs:haxe.ds.StringMap<Dynamic> = DynamicCreateNpcMap;
            dynamicNpcs.clear();
        }
        return null;
    }

    public static function S0EA2B6C4A18DBEE5(?arg0:Dynamic):Dynamic
    {
        var dynamicNpcs:haxe.ds.StringMap<Dynamic> = DynamicCreateNpcMap;
        if (dynamicNpcs.exists(arg0))
        {
            return null;
        }
        if (GetCharacterAccessorEvent(arg0) != null)
        {
            var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
            var keys = updates.keys();
            while (keys.hasNext())
            {
                var key = keys.next();
                if (!(key.indexOf(arg0) < 0))
                {
                    DelUpdateList(key);
                }
            }
            UnRegisterEventScenarioForCharaName(arg0);
        }
        return null;
    }

    public static function S522136910C73A819(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if ((arg1 == null)) {
            arg1 = 1;
        };
        var requests:Array<main.event.ik.command.ActionHandle> = main.event.ik.command.IkScriptCommand.ActionRequestHandles;
        var turns:Array<main.event.ik.command.ActionHandle> = [];
        var index:StdTypes.Int = 0;
        while ((index < requests.length)) {
            var request:main.event.ik.command.ActionHandle = requests[index++];
            if ((((((request != null) && (request.hdl != null)) && !request.hdl.fFFAA5D50()) && (request.name == arg0)) && (request.actionName.indexOf("Turn") >= 0))) {
                turns.push(request);
            };
        };
        index = 0;
        while ((index < turns.length)) {
            var request:main.event.ik.command.ActionHandle = turns[index++];
            if (((request != null) && (request.hdl != null))) {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(request.hdl);
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(arg0, arg1));
        return null;
    }

    public static function SE3474B3D31F0AAE2():Dynamic
    {
        var accessor:Dynamic = GetCharacterAccessorEvent("Player");
        if (accessor == null)
        {
            return false;
        }
        return accessor.fA010E22E();
    }

    @:hashAbi("S0958C602F426FF59")
    public static function Wait_FObj_Action(?handle:Dynamic):Dynamic
    {
        if ((handle != null)) {
            main.event.ik.command.CharacterCommand.Wait(handle, main.event.ik.command.IkScriptCommand.k_TimeOutTime);
        } else {
            var actions:Array<main.event.ik.command.ActionHandle> = main.event.ik.command.IkScriptCommand.ActionRequestHandles;
            {
                var arrayIndex:StdTypes.Int = 0;
                while ((arrayIndex < actions.length)) {
                    var action:main.event.ik.command.ActionHandle = actions[arrayIndex];
                    ++arrayIndex;
                    if (((action != null) && (action.hdl != null))) {
                        main.event.ik.command.CharacterCommand.Wait(action.hdl, main.event.ik.command.IkScriptCommand.k_TimeOutTime);
                    };
                };
            };
            var oneShots:Array<main.event.ik.command.OneShotAnimeHandle> = main.event.ik.command.IkScriptCommand.OneShotActionRequestHandles;
            {
                var arrayIndex2:StdTypes.Int = 0;
                while ((arrayIndex2 < oneShots.length)) {
                    var oneShot:main.event.ik.command.OneShotAnimeHandle = oneShots[arrayIndex2];
                    ++arrayIndex2;
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(oneShot);
                };
            };
        };
        return null;
    }

    @:hashAbi("S34E1241FC2D89072")
    public static function Wait_FObj_Action_OneShot(?handle:OneShotAnimeHandle, ?timeOut:Dynamic):Dynamic
    {
        if (timeOut == null)
        {
            timeOut = 30.0;
        }
        var elapsed = 0.0;
        while (!handle.isFinished)
        {
            elapsed += Suspend();
            if (timeOut <= elapsed)
            {
                break;
            }
        }
        return null;
    }

    @:hashAbi("S7ED156C901E8B789")
    public static function FObj_Set_AutoBlink(?objName:Dynamic, ?isEnable:Dynamic):Dynamic
    {
        var accessor:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        var key:String = (Std.string(objName) + "AutoBlink");
        if (lua.abi.Host.truthy(isEnable)) {
            var updates:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.UpdateList;
            if ((updates.get(key) != null)) {
                main.event.ik.command.IkScriptCommand.DelUpdateList(key);
            };
        } else {
            main.event.ik.command.IkScriptCommand.SetUpdateList(key, function():StdTypes.Void {
                if ((accessor != null)) {
                    accessor.f19734F2C();
                };
            });
        };
        return null;
    }

    @:hashAbi("S520A238917675DF2")
    public static function FObj_Set_Visibility(?objName:Dynamic, ?visibility:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic):Dynamic
    {
        if ((arg3 == null)) {
            arg3 = true;
        };
        if ((arg2 == null)) {
            arg2 = true;
        };
        var accessor:cppbindings.C65853BD0;
        if (lua.abi.Host.truthy(arg3)) {
            accessor = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        } else {
            accessor = main.event.ik.command.CharacterCommand.GetAccessorNoScenario(objName);
        };
        if ((accessor == null)) {
            return null;
        };
        var key:String = (Std.string(objName) + "Visibility");
        if (lua.abi.Host.truthy(visibility)) {
            var updates:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.UpdateList;
            if ((updates.get(key) != null)) {
                main.event.ik.command.IkScriptCommand.DelUpdateList(key);
            };
        } else {
            main.event.ik.command.IkScriptCommand.SetUpdateList(key, function():StdTypes.Void {
                if ((accessor != null)) {
                    main.event.ik.command.CharacterCommand.EnableInvisible(accessor);
                    if (lua.abi.Host.truthy(arg2)) {
                        accessor.f3B751749();
                    };
                };
            });
        };
        return null;
    }

    @:hashAbi("S082C96818F341B81")
    public static function FObj_Set_InvincibleForAccessor(?accessor:Dynamic, ?isInvincible:Dynamic):Dynamic
    {
        if (accessor != null)
        {
            var key = Std.string(accessor.fE9C29DA1()) + "Invincible";
            if (!lua.abi.Host.truthy(isInvincible))
            {
                var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
                if (updates.exists(key))
                {
                    DelUpdateList(key);
                }
            }
            else
            {
                SetUpdateList(key, function():Dynamic
                {
                    if (accessor != null)
                    {
                        accessor.f46E0548D("Invincible");
                    }
                    return null;
                });
            }
        }
        return null;
    }

    public static function S721A369871039AEA(?arg0:Dynamic):Dynamic
    {
        var accessor:Dynamic = CharacterCommand.GetAccessorNoScenario(arg0);
        if (accessor != null)
        {
            SetUpdateList(Std.string(arg0) + Std.string("AddSimpleTalkStartTag"), function():Dynamic
            {
                if (accessor != null)
                {
                    accessor.f46E0548D("StartSimpleTalkNpc");
                }
                return null;
            });
        }
        return null;
    }

    @:hashAbi("SF1AA86BEBD879DB6")
    public static function FObj_LookAt_Anime(?objName:Dynamic, ?animType:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.CharacterCommand.RequestLookAt(accessor, animType);
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string(objName) + Std.string("LookAt")), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt(accessor);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("S40EF2C952E68310B")
    public static function FObj_LookAt_Obj(?objName:Dynamic, ?target:Dynamic, ?targetNode:Dynamic, ?isUseScenario:Dynamic):Dynamic
    {
        if (null == isUseScenario)
        {
            isUseScenario = true;
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj_Offset(objName, target, targetNode, lua.Table.create([0, 0, 0]), isUseScenario);
        return null;
    }

    @:hashAbi("S3C644A42F5BD88C7")
    public static function FObj_LookAt_Obj_Offset(?objName:Dynamic, ?target:Dynamic, ?targetNode:Dynamic, ?offset:Dynamic, ?isUseScenario:Dynamic):Dynamic
    {
        if ((isUseScenario == null)) {
            isUseScenario = true;
        };
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        var node:StdTypes.Null<Dynamic> = targetNode;
        if ((targetNode == "head")) {
            var targetAccessor:Dynamic = (if (lua.abi.Host.truthy(isUseScenario)) {
                main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(target);
            } else {
                main.event.ik.command.CharacterCommand.GetAccessorNoScenario(target);
            });
            if ((targetAccessor != null)) {
                node = (if (lua.abi.Host.truthy(untyped (cast targetAccessor : Dynamic).f3417EB8F())) {
                    "eff_headcenter01";
                } else {
                    "loc_eff_eye";
                });
            };
        } else {
            if ((targetNode == "neck")) {
                node = "head";
            };
        };
        main.event.ik.command.CharacterCommand.RequestLookAtObject(accessor, target, node, offset);
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string((Std.string(objName) + Std.string("LookAt"))) + Std.string(target)), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt(accessor);
            };
            return null;
        });
        return null;
    }

    public static function S1CF5627159EB1274(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f1AE4F551(arg0))) {
            return null;
        };
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(arg0);
        if ((accessor == null)) {
            return null;
        };
        var node:String = "head";
        var targetAccessor:Dynamic = main.event.ik.command.CharacterCommand.GetAccessorNoScenario(arg1);
        if ((targetAccessor != null)) {
            node = (if (lua.abi.Host.truthy(untyped (cast targetAccessor : Dynamic).f3417EB8F())) {
                "eff_headcenter01";
            } else {
                "loc_eff_eye";
            });
        };
        main.event.ik.command.CharacterCommand.RequestLookAtObject(accessor, arg1, node, (cast lua.Table.create([0, 0, 0])));
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string((Std.string(arg0) + Std.string("LookAt_FromField"))) + Std.string(arg1)), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt(accessor);
            };
            return null;
        });
        return null;
    }

    public static function S750E4F543AC2EEDE(?arg0:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.CharacterCommand.RequestLookAtPos(accessor, arg0);
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string("Player") + Std.string("LookAt_FromFieldPos")), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt(accessor);
            };
            return null;
        });
        return null;
    }

    public static function S50344259181D5CD3():Dynamic
    {
        if (lua.abi.Host.truthy(cppbindings.C5090F7B8.f5AAE207B()))
        {
            return null;
        }
        var key = "ObserveClearLookAtFromFieldForFadeOut";
        SetUpdateList(key, function():Dynamic
        {
            if (!lua.abi.Host.truthy(cppbindings.C5090F7B8.f5AAE207B()))
            {
                return null;
            }
            S4A78500276697F78();
            DelUpdateList(key);
            return null;
        });
        return null;
    }

    public static function S4A78500276697F78():Dynamic
    {
        var updates:Dynamic = UpdateList;
        var keys:Iterator<String> = updates.keys();
        while (keys.hasNext())
        {
            var key = keys.next();
            updates.get(key);
            if (key.indexOf("LookAt_FromField") > 0)
            {
                DelUpdateList(key);
            }
        }
        return null;
    }

    @:hashAbi("S3A64F095BB35D854")
    public static function FObj_LookAt_Pos(?objName:Dynamic, ?pos:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.CharacterCommand.RequestLookAtPos(accessor, pos);
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string(objName) + Std.string("LookAt")), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt(accessor);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("S97C3D0955FA56BCB")
    public static function FObj_LookAt_End(?objName:Dynamic):Dynamic
    {
        var removed = false;
        var prefix = Std.string(objName) + Std.string("LookAt");
        var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
        var keys = updates.keys();
        while (keys.hasNext())
        {
            var key = keys.next();
            if (!(key.indexOf(prefix) < 0))
            {
                DelUpdateList(key);
                removed = true;
            }
        }
        return removed;
    }

    @:hashAbi("SA2715B5967B6EDB9")
    public static function FObj_LookAt_Obj_Eye(?objName:Dynamic, ?target:Dynamic, ?targetNode:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<StdTypes.Null<Dynamic>> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.CharacterCommand.RequestLookAtObj_Eye(accessor, target, targetNode, (cast lua.Table.create([0, 0, 0])));
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string(objName) + Std.string("LookAt_Eye")), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt_Eye(accessor);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("S8DFC234397A4E4FD")
    public static function FObj_LookAt_Obj_Offset_Eye(?objName:Dynamic, ?target:Dynamic, ?targetNode:Dynamic, ?offset:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<StdTypes.Null<Dynamic>> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.CharacterCommand.RequestLookAtObj_Eye(accessor, target, targetNode, offset);
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string(objName) + Std.string("LookAt_Eye")), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt_Eye(accessor);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("S6BA5D95D49F97A4E")
    public static function FObj_LookAt_Pos_Eye(?objName:Dynamic, ?pos:Dynamic):Dynamic
    {
        var accessor:StdTypes.Null<StdTypes.Null<Dynamic>> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        if ((accessor == null)) {
            return null;
        };
        main.event.ik.command.CharacterCommand.RequestLookAtPos_Eye(accessor, pos);
        main.event.ik.command.IkScriptCommand.SetUpdateList((Std.string(objName) + Std.string("LookAt_Eye")), function():Dynamic {
            if ((accessor != null)) {
                main.event.ik.command.CharacterCommand.UpdateLookAt_Eye(accessor);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("S055804D2AA479C2D")
    public static function FObj_LookAt_Eye_End(?objName:Dynamic):Dynamic
    {
        var key = Std.string(objName) + Std.string("LookAt_Eye");
        var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
        if (updates.exists(key))
        {
            DelUpdateList(key);
            return true;
        }
        return false;
    }

    @:hashAbi("SCDED1A922C1D919F")
    public static function GetCharacterAccessorEvent(?objName:Dynamic):Dynamic
    {
        var handles:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < handles.length)) {
                var handle:cppbindings.C65853BD0 = handles[arrayIndex];
                ++arrayIndex;
                if ((handle.fE9C29DA1() == objName)) {
                    return handle;
                };
            };
        };
        var createdHandles:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < createdHandles.length)) {
                var handle:cppbindings.C65853BD0 = createdHandles[arrayIndex2];
                ++arrayIndex2;
                if ((handle.fE9C29DA1() == objName)) {
                    return handle;
                };
            };
        };
        if ((main.event.ik.command.IkScriptCommand.FObj_WaitSetup(objName) == false)) {
            return null;
        };
        var handle:StdTypes.Null<Dynamic> = main.event.ik.command.CharacterCommand.GetAccessor(objName);
        untyped (cast main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles : Dynamic).push(handle);
        main.event.ik.command.IkScriptCommand.SetAlwaysFrequencyByHdl(handle);
        return handle;
    }

    @:hashAbi("SBE846B44654BB334")
    public static function SetAlwaysFrequency(?objName:Dynamic):Dynamic
    {
        main.event.ik.command.IkScriptCommand.SetAlwaysFrequencyByHdl(main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName));
        return null;
    }

    @:hashAbi("SEFF77E329A6A8784")
    public static function IsUpdateRequested(?objName:Dynamic):Dynamic
    {
        var accessor:Dynamic = GetCharacterAccessorEvent(objName);
        if (accessor == null)
        {
            return null;
        }
        return accessor.f29A9F3DF();
    }

    @:hashAbi("S506C2DAFA5C64E03")
    public static function SetAlwaysFrequencyByHdl(?hdl:Dynamic):Dynamic
    {
        if (hdl == null)
        {
            return null;
        }
        SetUpdateList(Std.string(hdl.fE9C29DA1()) + "UpdateAlwaysFrequency", function():Dynamic
        {
            if (hdl == null)
            {
                return null;
            }
            hdl.fF789F163();
            hdl.fC2834C8F();
            hdl.fF21175D2();
            hdl.f8A48670A();
            hdl.f8010EB59();
            return null;
        }, true);
        return null;
    }

    public static function S716D5328968F5B0A(?arg0:Dynamic):Dynamic
    {
        var accessor:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(arg0);
        if ((accessor == null)) {
            return null;
        };
        var object:StdTypes.Null<cppbindings.C016374C1> = accessor.fEBA8F794();
        if ((object == null)) {
            return null;
        };
        while (true) {
            var allReady:StdTypes.Bool = true;
            object.f4ACBB933(function(child:cppbindings.C016374C1):StdTypes.Void {
                if ((child == null)) {
                    allReady = false;
                    return;
                };
                var ready:StdTypes.Bool = (child.f9D8BC178() && child.f48F8C7FF());
                allReady = (allReady && ready);
                var ignoredName:String = child.fE9C29DA1();
            });
            if (allReady) {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("SAC6C8552A89B62F9")
    public static function ResetAlwaysFrequency(?objName:Dynamic):Dynamic
    {
        main.event.ik.command.IkScriptCommand.DelUpdateList(lua.abi.Host.concat(Std.string(objName), Std.string("UpdateAlwaysFrequency")));
        return null;
    }

    @:hashAbi("S0264C7EA0883CEF8")
    public static function RequestPauseEventDisable():Dynamic
    {
        if (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f6301E93A()))
        {
            return null;
        }
        SetUpdateList("RequestPauseEventDisable", function():Dynamic
        {
            var playing = isPlayADemo;
            if (playing == null)
            {
                playing = false;
            }
            cppbindings.C56DE81E7.f5BD28AB2(playing);
            return null;
        }, true);
        return null;
    }

    public static function SA9FF85CB1BCD2DA4():Dynamic
    {
        SetUpdateList("RequestPauseEventDisable", function():Dynamic
        {
            var playing = isPlayADemo;
            if (playing == null)
            {
                playing = false;
            }
            cppbindings.C56DE81E7.f5BD28AB2(playing);
            return null;
        }, true);
        return null;
    }

    public static function S80725197C3054FB8():Dynamic
    {
        main.event.ik.command.IkScriptCommand.DelUpdateList("RequestPauseEventDisable");
        return null;
    }

    @:hashAbi("SAD8D1E66059B886F")
    public static function SetPlayADemo(?play_a_demo:Dynamic):Dynamic
    {
        untyped main.event.ik.command.IkScriptCommand.SEA61BF1CEF0543F9 = play_a_demo;
        return null;
    }

    @:hashAbi("S2A8BA2E3A12DA62E")
    public static function IsCreateCharaNameUsed(?objName:Dynamic):Dynamic
    {
        var accessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < accessors.length)) {
                var accessor:cppbindings.C65853BD0 = accessors[arrayIndex];
                ++arrayIndex;
                if ((accessor.fE9C29DA1() == objName)) {
                    return true;
                };
            };
        };
        var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < createdAccessors.length)) {
                var accessor:cppbindings.C65853BD0 = createdAccessors[arrayIndex2];
                ++arrayIndex2;
                if ((accessor.fE9C29DA1() == objName)) {
                    return true;
                };
            };
        };
        return false;
    }

    @:hashAbi("SB8FE535C0D4F70EA")
    public static function IsValidScenarioForCharaName(?objName:Dynamic):Dynamic
    {
        var accessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < accessors.length)) {
                var accessor:cppbindings.C65853BD0 = accessors[arrayIndex];
                ++arrayIndex;
                if ((accessor.fE9C29DA1() == objName)) {
                    return accessor.f49AF6CD7();
                };
            };
        };
        var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < createdAccessors.length)) {
                var accessor:cppbindings.C65853BD0 = createdAccessors[arrayIndex2];
                ++arrayIndex2;
                if ((accessor.fE9C29DA1() == objName)) {
                    return accessor.f49AF6CD7();
                };
            };
        };
        return false;
    }

    @:hashAbi("S38F7587912F54E9A")
    public static function UnRegisterEventScenarioForCharaName(?objName:Dynamic):Dynamic
    {
        var accessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < accessors.length)) {
                var accessor:cppbindings.C65853BD0 = accessors[arrayIndex];
                ++arrayIndex;
                if ((accessor.fE9C29DA1() == objName)) {
                    main.event.ik.command.IkScriptCommand.S8129194A6C46E220(accessor);
                    var current:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
                    current.remove(accessor);
                    return null;
                };
            };
        };
        var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < createdAccessors.length)) {
                var accessor:cppbindings.C65853BD0 = createdAccessors[arrayIndex2];
                ++arrayIndex2;
                if ((accessor.fE9C29DA1() == objName)) {
                    main.event.ik.command.IkScriptCommand.S8129194A6C46E220(accessor);
                    var current:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
                    current.remove(accessor);
                    return null;
                };
            };
        };
        return null;
    }

    @:hashAbi("SFC993FABB8428493")
    public static function DestructionCharacterAccessorEvent():Dynamic
    {
        var cachedValues:Dynamic = main.event.ik.command.IkScriptCommand.SCF36F99F677C074B;
        var keys:StdTypes.Iterator<String> = untyped (cast cachedValues : Dynamic).keys();
        while (keys.hasNext()) {
            var key:String = keys.next();
            main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1(key, untyped (cast cachedValues : Dynamic).get(key));
        };
        var accessors:Array<Dynamic> = main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < accessors.length)) {
                var accessor:Dynamic = accessors[arrayIndex];
                ++arrayIndex;
                untyped (cast accessor : Dynamic).f99FC34DC(false);
                main.event.ik.command.IkScriptCommand.S8129194A6C46E220(accessor);
            };
        };
        var createdAccessors:Array<cppbindings.C65853BD0> = main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles;
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < createdAccessors.length)) {
                var accessor:cppbindings.C65853BD0 = createdAccessors[arrayIndex2];
                ++arrayIndex2;
                accessor.f5343B360();
            };
        };
        main.event.ik.command.IkScriptCommand.ChrAccessorForEventHandles = [];
        main.event.ik.command.IkScriptCommand.CreateChrAccessorForEventHandles = [];
        main.event.ik.command.IkScriptCommand.ActionRequestHandles = [];
        main.event.ik.command.IkScriptCommand.OneShotActionRequestHandles = [];
        var currentValues:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.SCF36F99F677C074B;
        currentValues.clear();
        return null;
    }

    public static function S8129194A6C46E220(?arg0:Dynamic):Dynamic
    {
        var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
        var eyeKey = Std.string(arg0.fE9C29DA1()) + "LookAt_Eye";
        if (updates.exists(eyeKey))
        {
            arg0.f519AC65D();
            arg0.fE9C29DA1();
        }
        else
        {
            updates = UpdateList;
            for (key in updates.keys())
            {
                var prefix = Std.string(arg0.fE9C29DA1()) + "LookAt";
                if (key.indexOf(prefix) >= 0)
                {
                    arg0.fE9C29DA1();
                    arg0.f39046806();
                };
            };
        };
        arg0.f0D2E2377();
        return null;
    }

    @:hashAbi("S89B6F701D3DEA3E7")
    public static function GetLookAtTargetAngle(?from:Vector3, ?to:Vector3):Dynamic
    {
        var rotation:cppbindings.CD5675BA5 = ({
            var from:StdTypes.Null<lua.Table<Int, Float>> = from;
            var up:StdTypes.Null<lua.Table<Int, Float>> = ((lua.Table.create(([0, 1, 0] : Array<Float>))));
            if ((from == null)) {
                from = (cast ((lua.Table.create(([0, 0, 0] : Array<Float>)))));
            };
            if ((up == null)) {
                up = (cast ((lua.Table.create(([0, 1, 0] : Array<Float>)))));
            };
            {
                var from:lua.Table<Int, Float> = (cast from);
                var up:lua.Table<Int, Float> = (cast up);
                cppbindings.CD5675BA5.fB5706664((cast to)[1], (cast to)[2], (cast to)[3], (cast from)[1], (cast from)[2], (cast from)[3], (cast up)[1], (cast up)[2], (cast up)[3]);
            };
        });
        var angles:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = rotation.f643B5D6F();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues7:lua.Table<Int, Float>;
                vectorValues7 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues7);
            };
        });
        return (((cast angles)[2] / (2 * lua.Math.pi)) * 360.0);
    }

    @:hashAbi("S5AD6F39A59B2F10C")
    public static function FObj_Get_Pos(?objName:Dynamic):Dynamic
    {
        var character:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        return (if ((character == null)) {
            (lua.Table.create(([0, 0, 0] : Array<Float>)));
        } else {
            {
                var v:cppbindings.Vec3 = character.f7360ED03();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues3:lua.Table<Int, Float>;
                    vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues3);
                };
            };
        });
    }

    @:hashAbi("SF3EEA6002051093D")
    public static function FObj_Get_Angle(?objName:Dynamic):Dynamic
    {
        var character:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(objName);
        var angle:StdTypes.Float = (if ((character == null)) {
            0.0;
        } else {
            {
                var vectorValues:lua.Table<Int, Float> = ({
                    var _this:cppbindings.CD5675BA5 = character.f64857644();
                    {
                        var v:cppbindings.Vec3 = _this.f643B5D6F();
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
                (cast vectorValues)[2];
            };
        });
        return ((angle / (2 * lua.Math.pi)) * 360.0);
    }

    @:hashAbi("S09D286173A25A8DA")
    public static function GetSpawnDegree(?npcId:Dynamic):Dynamic
    {
        var rotation:StdTypes.Null<cppbindings.CD5675BA5> = cppbindings.C56DE81E7.fB4377FF4(npcId);
        if ((rotation == null)) {
            return 0;
        };
        var angles:lua.Table<Int, Float> = ({
            var v:cppbindings.Vec3 = rotation.f643B5D6F();
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
        return (((cast angles)[2] / (2 * lua.Math.pi)) * 360.0);
    }

    @:hashAbi("S010AC6C17AE65511")
    public static function Camera_Start(?isPush:Dynamic, ?isTakeOverParan:Dynamic):Dynamic
    {
        if ((null == isTakeOverParan))
        {
            isTakeOverParan = true;
        };
        if ((null == isPush))
        {
            isPush = true;
        };
        return main.event.command.EventCameraCommand.CreateEventCamera(isPush, isTakeOverParan);
    }

    @:hashAbi("S0FB7C8D3871355B0")
    public static function Camera_End(?isTakeOverParan:Dynamic):Dynamic
    {
        if ((null == isTakeOverParan))
        {
            isTakeOverParan = true;
        };
        return main.event.command.EventCameraCommand.Remove(isTakeOverParan);
    }

    @:hashAbi("S1BE54DD27647D419")
    public static function SetResetCameraDataAtEventEnd(?seconds:Dynamic, ?easeFunc:Dynamic):Dynamic
    {
        if (easeFunc == null)
        {
            easeFunc = 3;
        }
        var resetData:Dynamic = cppbindings.CECAB7D1C.f101D811F();
        resetData.f3B864B85(seconds);
        resetData.fFB5E9E13(easeFunc);
        cppbindings.C56DE81E7.fC25FAFDC(resetData);
        return null;
    }

    @:hashAbi("S060E4139F53705A4")
    public static function ResetToFieldCamera(?seconds:Dynamic, ?easeFunc:Dynamic, ?degree:Dynamic):Dynamic
    {
        if (easeFunc == null)
        {
            easeFunc = 3;
        }
        CameraResetRotation(degree);
        Suspend();
        var resetData:Dynamic = cppbindings.CECAB7D1C.f101D811F();
        resetData.f3B864B85(seconds);
        resetData.fFB5E9E13(easeFunc);
        cppbindings.C56DE81E7.f1440C136(resetData);
        SetSuspendInputFieldCamera(true);
        return null;
    }

    @:hashAbi("S2339BBE02659184C")
    public static function Wait_ResetToFieldCamera():Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(untyped (lua.abi.Host.global("c56DE81E7"))["f7C10447B"]()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return null;
    }

    @:hashAbi("S87C02A63ACAD9232")
    public static function SetSuspendInputFieldCamera(?isSuspend:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f187D80E1(isSuspend);
        untyped main.event.ik.command.IkScriptCommand.S6C938298B9FEE73A = isSuspend;
        return null;
    }

    @:hashAbi("S51DEF2C9CCD3F70E")
    public static function SetSuspendCollisionFieldCamera(?isSuspend:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fBD7FB2CA(isSuspend);
        untyped main.event.ik.command.IkScriptCommand.S913DCC803F2066F6 = isSuspend;
        return null;
    }

    @:hashAbi("S61EDE9C1C4CF1332")
    public static function Camera_Move_Target(?duration:Dynamic, ?look:Dynamic, ?cameraRot:Dynamic, ?distance:Dynamic, ?height:Dynamic, ?posOffset:Dynamic, ?moving:Dynamic, ?rotType:Dynamic):Dynamic
    {
        if ((null == rotType)) {
            rotType = 0;
        };
        if ((null == moving)) {
            moving = 3;
        };
        main.event.command.EventCameraCommand.CameraMoveTarget(duration, look, cameraRot, distance, height, posOffset, moving, rotType);
        return null;
    }

    @:hashAbi("S4FEE2684C5846177")
    public static function Camera_Move_Target_Horizontal(?duration:Dynamic, ?look:Dynamic, ?cameraRot:Dynamic, ?distance:Dynamic, ?height:Dynamic, ?posOffset:Dynamic, ?degreeOffset:Dynamic, ?moving:Dynamic, ?rotType:Dynamic):Dynamic
    {
        if ((null == rotType)) {
            rotType = 0;
        };
        if ((null == moving)) {
            moving = 3;
        };
        main.event.command.EventCameraCommand.CameraMoveTargetHorizontal(duration, look, cameraRot, distance, height, posOffset, degreeOffset, moving, rotType);
        return null;
    }

    @:hashAbi("S193CA4819E97D746")
    public static function Camera_Move_Angle(?duration:Dynamic, ?pos:Dynamic, ?ang:Dynamic, ?fovY:Dynamic, ?rollNum:Dynamic, ?moving:Dynamic, ?rotType:Dynamic, ?bezierControlPoint1:Dynamic, ?bezierControlPoint2:Dynamic, ?arg9:Dynamic):Dynamic
    {
        if ((rotType == null)) {
            rotType = 0;
        };
        if ((moving == null)) {
            moving = 3;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        if ((moving == 31)) {
            bezierControlPoint1 = lua.Table.create([0.05, 0.97]);
            bezierControlPoint2 = lua.Table.create([0.05, 0.97]);
        };
        var easing:Dynamic = (if ((moving > 30)) {
            null;
        } else {
            cast(moving, StdTypes.Int);
        });
        main.event.command.EventCameraCommand.CameraMoveAngle(duration, pos, ang, fovY, rollNum, easing, rotType, bezierControlPoint1, bezierControlPoint2, arg9);
        return null;
    }

    @:hashAbi("SE456EC5B145384AA")
    public static function Camera_Move_Angle_Fov(?duration:Dynamic, ?pos:Dynamic, ?ang:Dynamic, ?fovY:Dynamic, ?rollNum:Dynamic, ?moving:Dynamic, ?rotType:Dynamic, ?bezierControlPoint1:Dynamic, ?bezierControlPoint2:Dynamic, ?arg9:Dynamic):Dynamic
    {
        if ((rotType == null)) {
            rotType = 0;
        };
        if ((moving == null)) {
            moving = 3;
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        if ((moving == 31)) {
            bezierControlPoint1 = lua.Table.create([0.05, 0.97]);
            bezierControlPoint2 = lua.Table.create([0.05, 0.97]);
        };
        var easing:Dynamic = (if ((moving > 30)) {
            null;
        } else {
            cast(moving, StdTypes.Int);
        });
        main.event.command.EventCameraCommand.CameraMoveAngleFov(duration, pos, ang, fovY, rollNum, easing, rotType, bezierControlPoint1, bezierControlPoint2, arg9);
        return null;
    }

    @:hashAbi("S483A09B24DF1FFD7")
    public static function Camera_SetEasy_Front(?objName:Dynamic, ?distance:Dynamic, ?angle:Dynamic, ?posOffset:Dynamic, ?lookOffset:Dynamic):Dynamic
    {
        if ((null == angle)) {
            angle = 0.0;
        };
        main.event.command.EventCameraCommand.SetEasyCameraFront(objName, distance, angle, posOffset, lookOffset);
        return null;
    }

    @:hashAbi("S3AE83A9E00DDF2A9")
    public static function Camera_SetEasy_AnyAngle(?objName:Dynamic, ?distance:Dynamic, ?angle:Dynamic, ?shiftPos:Dynamic, ?posOffset:Dynamic, ?lookOffset:Dynamic):Dynamic
    {
        if ((null == angle)) {
            angle = 0.0;
        };
        main.event.command.EventCameraCommand.SetEasyCameraAnyAngle(objName, distance, angle, shiftPos, posOffset, lookOffset);
        return null;
    }

    @:hashAbi("SC32C8D98ABEAB224")
    public static function Camera_SetEasy_AnyAngle_Template(?objName:Dynamic, ?type:Dynamic, ?distance:Dynamic, ?angle:Dynamic, ?shiftPos:Dynamic):Dynamic
    {
        if ((((type == 7) || (type == 8)) || (type == 9))) {
            type -= 7;
            if ((objName != "Player")) {
                type += 3;
            };
        };
        var patterns:Array<{ public var shiftPos(default, default) : lua.Table<Int, Float>; public var distance(default, default) : StdTypes.Float; public var degree(default, default) : StdTypes.Float; }> = main.event.command.EventCameraCommand.EASY_ANY_PATTERN_TABLE;
        var cameraDistance:Dynamic = patterns[type].distance;
        if ((distance != null)) {
            cameraDistance = distance;
        };
        var cameraAngle:Dynamic = patterns[type].degree;
        if ((angle != null)) {
            cameraAngle = angle;
        };
        var cameraShift:Dynamic = patterns[type].shiftPos;
        if ((shiftPos != null)) {
            cameraShift = shiftPos;
        };
        main.event.command.EventCameraCommand.SetEasyCameraAnyAngle(objName, cameraDistance, cameraAngle, cameraShift);
        return null;
    }

    @:hashAbi("S32EEF8A3A6823FED")
    public static function Camera_Easy_Normal(?charaA:Dynamic, ?charaB:Dynamic, ?backOfPlayer:Dynamic, ?rotSide:Dynamic):Dynamic
    {
        if (null == rotSide)
        {
            rotSide = 2;
        };
        if (null == backOfPlayer)
        {
            backOfPlayer = true;
        };
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base(charaA, charaB, 2.7, 35.0, backOfPlayer, rotSide, 0.9, lua.Table.create([0, 1.3, 0]));
        return null;
    }

    @:hashAbi("SAB6D2A76E06C7773")
    public static function Camera_Easy_Normal_noColCheck(?charaA:Dynamic, ?charaB:Dynamic, ?backOfPlayer:Dynamic, ?rotSide:Dynamic):Dynamic
    {
        if (null == rotSide)
        {
            rotSide = 2;
        };
        if (null == backOfPlayer)
        {
            backOfPlayer = true;
        };
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base(charaA, charaB, 2.7, 35.0, backOfPlayer, rotSide, 0.9, lua.Table.create([0, 1.3, 0]), true);
        return null;
    }

    @:hashAbi("SAE6FE8C74783B4C8")
    public static function Camera_Easy_Near(?charaA:Dynamic, ?charaB:Dynamic, ?backOfPlayer:Dynamic, ?rotSide:Dynamic):Dynamic
    {
        if (null == rotSide)
        {
            rotSide = 2;
        };
        if (null == backOfPlayer)
        {
            backOfPlayer = true;
        };
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base(charaA, charaB, 0.8, 27.0, backOfPlayer, rotSide, 1.35, lua.Table.create([0, 1.35, 0]));
        return null;
    }

    @:hashAbi("S338C902C76677283")
    public static function Camera_Easy_Base(?charaA:Dynamic, ?charaB:Dynamic, ?distance:Dynamic, ?angle:Dynamic, ?backOfPlayer:Dynamic, ?rotSide:Dynamic, ?lookat_ofsY:Dynamic, ?pos_ofs:Dynamic, ?no_col_check:Dynamic):Dynamic
    {
        if ((null == no_col_check)) {
            no_col_check = false;
        };
        if ((null == lookat_ofsY)) {
            lookat_ofsY = 0.9;
        };
        if ((null == rotSide)) {
            rotSide = 0;
        };
        if ((null == backOfPlayer)) {
            backOfPlayer = true;
        };
        if ((null == angle)) {
            angle = 35.0;
        };
        if ((null == distance)) {
            distance = 2.7;
        };
        main.event.command.EventCameraCommand.EasyCameraNormal(charaA, charaB, distance, angle, backOfPlayer, rotSide, lookat_ofsY, pos_ofs, no_col_check);
        return null;
    }

    @:hashAbi("S89286A0E15768CE4")
    public static function Camera_Move_Rot(?duration:Dynamic, ?pos:Dynamic, ?rot:Dynamic, ?fovY:Dynamic, ?rollNum:Dynamic, ?moving:Dynamic):Dynamic
    {
        if ((null == moving))
        {
            moving = 3;
        };
        return null;
    }

    @:hashAbi("S826B5A68389F723F")
    public static function Camera_Shake(?duration:Dynamic, ?amplitude:Dynamic, ?frequency:Dynamic, ?shakePattern:Dynamic, ?startCoef:Dynamic, ?endCoef:Dynamic, ?startAttenRange:Dynamic, ?endAttenRange:Dynamic, ?attenTarget:Dynamic):Dynamic
    {
        if (endAttenRange == null)
        {
            endAttenRange = 100;
        }
        if (startAttenRange == null)
        {
            startAttenRange = 0;
        }
        if (endCoef == null)
        {
            endCoef = 0;
        }
        if (startCoef == null)
        {
            startCoef = 1;
        }
        var shake:Dynamic = cppbindings.C6C8404A7.f101D811F();
        shake.f22D81484(duration);
        shake.f0A44C021(startCoef);
        shake.f76C33751(endCoef);
        shake.fD6119480(amplitude);
        shake.fDC692C46(frequency);
        shake.fB938EF6E(cast(shakePattern, Int), null, null);
        main.event.command.EventCameraCommand.StartCameraShake(shake);
        var attenuation:Dynamic = cppbindings.C20B67A81.f101D811F();
        attenuation.f8BB837AA(attenTarget);
        attenuation.f542AF790(startAttenRange);
        attenuation.f887969AA(endAttenRange);
        var key = "Camera_Shake";
        SetUpdateList(key, function():Dynamic
        {
            if (lua.abi.Host.truthy(main.event.command.EventCameraCommand.IsEndCameraShake()))
            {
                DelUpdateList(key);
                return null;
            }
            main.event.command.EventCameraCommand.UpdateCameraShake(attenuation);
            return null;
        });
        return null;
    }

    @:hashAbi("SBE5D621798B8CC66")
    public static function Wait_Camera():Dynamic
    {
        main.event.command.EventCameraCommand.Wait();
        return null;
    }

    @:hashAbi("S7AB7B5AAECCBF300")
    public static function Wait_CameraShake():Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(untyped main.event.command.EventCameraCommand.IsEndCameraShake()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return null;
    }

    @:hashAbi("S8C6481B834C258D4")
    public static function Camera_Move_Offset(?duration:Dynamic, ?offsetX:Dynamic, ?offsetY:Dynamic, ?offsetZ:Dynamic, ?distanceRate:Dynamic, ?easing:Dynamic):Dynamic
    {
        if ((null == easing))
        {
            easing = 3;
        };
        if ((null == distanceRate))
        {
            distanceRate = 1.0;
        };
        return null;
    }

    @:hashAbi("S691AC2D93DFC3868")
    public static function Camera_Move_Distance(?duration:Dynamic, ?lookAt:Dynamic, ?angle:Dynamic, ?distance:Dynamic, ?easing:Dynamic):Dynamic
    {
        if ((null == easing))
        {
            easing = 3;
        };
        return null;
    }

    @:hashAbi("S8A30ACA1BBA0F41A")
    public static function Camera_Start_FollowTarget(?target:Dynamic, ?lerpValue:Dynamic, ?duration:Dynamic):Dynamic
    {
        if ((null == duration))
        {
            duration = 0.0;
        };
        if ((null == lerpValue))
        {
            lerpValue = 1.0;
        };
        return null;
    }

    @:hashAbi("SE3FBD981C6AB4B6C")
    public static function Camera_Stop_FollowTarget():Dynamic
    {
        return null;
    }

    @:hashAbi("SC640E88B29B6BD3F")
    public static function FieldCamera_Set_Angle(?angle:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S0F67E023D262EEF5")
    public static function FieldCamera_Set_ForwardPitch(?forward:Dynamic, ?pitch:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("SF61A7B2BE08FE329")
    public static function CameraWork_FacingNpc(?targets:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("S0BE47D0E1D3B6EE3")
    public static function CameraResetRotation(?degree:Dynamic, ?time:Dynamic, ?heightRate:Dynamic):Dynamic
    {
        if (heightRate == null)
        {
            heightRate = 0.5;
        }
        if (time == null)
        {
            time = 0;
        }
        cppbindings.C56DE81E7.f4A7DFF02(degree, time, heightRate);
        return null;
    }

    @:hashAbi("S49B67EB4FECF774C")
    public static function ExecutePlayTimelineComponent(?sceneName:Dynamic, ?objName:Dynamic):Dynamic
    {
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D(sceneName);
        if ((scene == null)) {
            return null;
        };
        var object:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7(objName);
        if ((object == null)) {
            return null;
        };
        cppbindings.C56DE81E7.fBBC1C3B7(object);
        return null;
    }

    @:hashAbi("SECADE77855B3352D")
    public static function WordSet_Name_Player(?bufID:Dynamic, ?isSpeakerName:Dynamic):Dynamic
    {
        if ((null == isSpeakerName))
        {
            isSpeakerName = false;
        };
        cppbindings.C56DE81E7.fDC1D4C49(bufID, isSpeakerName);
        return null;
    }

    @:hashAbi("S95733381287CA3C5")
    public static function WordSet_Name_Player_Designation(?bufID:Dynamic, ?playerName:Dynamic, ?sex:Dynamic, ?langId:Dynamic, ?isSpeakerName:Dynamic):Dynamic
    {
        if ((null == isSpeakerName))
        {
            isSpeakerName = false;
        };
        cppbindings.C56DE81E7.fAB1A7CDF(bufID, playerName, sex, langId, isSpeakerName);
        return null;
    }

    @:hashAbi("SAFE208DD7DC93E2C")
    public static function WordSet_Name_Rival(?bufID:Dynamic, ?isSpeakerName:Dynamic):Dynamic
    {
        if ((null == isSpeakerName))
        {
            isSpeakerName = false;
        };
        cppbindings.C56DE81E7.f29799491(bufID);
        return null;
    }

    @:hashAbi("SBF0C5AD07E065F7B")
    public static function WordSet_Name_Mons(?bufID:Dynamic, ?devNo:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f084912B7(bufID, devNo);
        return null;
    }

    @:hashAbi("S4F7F50588F8A8E3B")
    public static function WordSet_Name_Mons_Langage(?bufID:Dynamic, ?devNo:Dynamic, ?langId:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f7F4E2221(bufID, devNo, langId);
        return null;
    }

    public static function SF0F9842ECEA3C1A4(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fA9C3BC32(arg0, arg1);
        return null;
    }

    @:hashAbi("S1E29DFED8DFA8C4D")
    public static function WordSet_Number(?no:Dynamic, ?number:Dynamic, ?keta:Dynamic, ?dispType:Dynamic, ?codeType:Dynamic):Dynamic
    {
        if ((null == codeType))
        {
            codeType = 1;
        };
        if ((null == dispType))
        {
            dispType = 0;
        };
        if ((null == keta))
        {
            keta = 0;
        };
        if ((0 == keta))
        {
            keta = main.event.ik.command.IkScriptCommand.GetDigit(number);
        };
        cppbindings.C56DE81E7.f917E6C59(no, number, keta, dispType, codeType);
        return null;
    }

    @:hashAbi("S480298DAE2C025D0")
    public static function GetDigit(?num:Dynamic):Dynamic
    {
        if (num == null)
        {
            num = 0;
        }
        if (num == 0)
        {
            return 1;
        }
        var integer = Std.int(num < 0 ? Math.abs(num) : num);
        return Std.int(lua.Math.log10(integer) + 1);
    }

    @:hashAbi("SC11827B2433F6667")
    public static function WordSet_Name_Item(?bufID:Dynamic, ?itemID:Dynamic, ?itemCount:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f4223BADB(bufID, itemID, itemCount);
        return null;
    }

    @:hashAbi("S48A7D1D24B5AD245")
    public static function SetWordSet(?bufID:Dynamic, ?mstxt:Dynamic, ?label:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f4D796E6B(bufID, mstxt, label);
        return null;
    }

    @:hashAbi("SCB3806A12FC8A4F1")
    public static function WordSet_Name_Waza(?bufID:Dynamic, ?wazaID:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f6E452821(bufID, wazaID);
        return null;
    }

    @:hashAbi("S97C2B01459BEA9DB")
    public static function Fade_In(?type:Dynamic, ?duration:Dynamic, ?wait:Dynamic):Dynamic
    {
        if ((null == wait))
        {
            wait = false;
        };
        if ((null == duration))
        {
            duration = 0.1;
        };
        main.event.ik.command.FadeCommand.FadeIn(type, duration, wait);
        return null;
    }

    @:hashAbi("S8C1B899474466628")
    public static function Fade_Out(?type:Dynamic, ?duration:Dynamic, ?wait:Dynamic):Dynamic
    {
        if ((null == wait))
        {
            wait = false;
        };
        if ((null == duration))
        {
            duration = 0.1;
        };
        main.event.ik.command.FadeCommand.FadeOut(type, duration, wait);
        return null;
    }

    public static function SC5474EFF39852D51(?arg0:Dynamic):Dynamic
    {
        main.event.ik.command.FadeCommand.S49AB2238FA7CC362(arg0);
        return null;
    }

    @:hashAbi("SA924914EDBE3A750")
    public static function Fade_Out_Wait():Dynamic
    {
        main.event.ik.command.FadeCommand.FadeOutWait();
        return null;
    }

    @:hashAbi("SDECE2CB10FA64A2D")
    public static function Fade_In_Wait():Dynamic
    {
        main.event.ik.command.FadeCommand.FadeInWait();
        return null;
    }

    @:hashAbi("SFF1F87E112A4234D")
    public static function FadeOutType(?type:Dynamic):Dynamic
    {
        main.event.ik.command.IkScriptCommand.StartLoadingFadeAnimationScene(type);
        main.event.ik.command.IkScriptCommand.WaitLoadingFadeAnimationScene();
        main.event.ik.command.IkScriptCommand.FadeOutEnum(type, 0, true);
        return null;
    }

    public static function S5947B527097768D0(?arg0:Dynamic):Dynamic
    {
        StartLoadingFadeAnimationScene(arg0);
        WaitLoadingFadeAnimationScene();
        FadeOutEnum(arg0, 0, false);
        var duration = arg0 == 4 ? 0.6 : 1.0;
        Wait_Time(duration);
        return null;
    }

    @:hashAbi("SE0DEC4E8CD7B4528")
    public static function FadeInType():Dynamic
    {
        var count:Dynamic = cppbindings.C56DE81E7.f0D74A7C7();
        if (count < 0 || count > 0)
        {
            var fadeType = cppbindings.C56DE81E7.f43ACAE39(0);
            FadeInEnum(fadeType, 0, true);
            UnloadFadeAnimationScene(fadeType);
        }
        return null;
    }

    @:hashAbi("SE583F451F187BBA0")
    public static function FadeOutEnum(?type:Dynamic, ?duration:Dynamic, ?wait:Dynamic):Dynamic
    {
        if ((null == wait))
        {
            wait = false;
        };
        if ((null == duration))
        {
            duration = 0.1;
        };
        cppbindings.C56DE81E7.fE368ACA1(type, duration, false);
        if (lua.abi.Host.truthy(wait))
        {
            main.event.ik.command.FadeCommand.FadeOutWait();
        };
        return null;
    }

    @:hashAbi("SCF9B076BECE259DD")
    public static function FadeInEnum(?type:Dynamic, ?duration:Dynamic, ?wait:Dynamic):Dynamic
    {
        if ((null == wait))
        {
            wait = false;
        };
        if ((null == duration))
        {
            duration = 0.1;
        };
        cppbindings.C56DE81E7.f757D411A(type, duration);
        if (lua.abi.Host.truthy(wait))
        {
            main.event.ik.command.FadeCommand.FadeInWait();
        };
        return null;
    }

    @:hashAbi("S23E58EDCFF63CBB1")
    public static function CrossFade_In(?duration:Dynamic, ?wait:Dynamic):Dynamic
    {
        if ((null == wait))
        {
            wait = false;
        };
        if ((null == duration))
        {
            duration = 0.1;
        };
        return null;
    }

    @:hashAbi("S30569285DA5D26B2")
    public static function CrossFade_Out(?duration:Dynamic, ?wait:Dynamic):Dynamic
    {
        if ((null == wait))
        {
            wait = false;
        };
        if ((null == duration))
        {
            duration = 0.1;
        };
        return null;
    }

    @:hashAbi("S069762B6130DAA3B")
    public static function Wait_Fade():Dynamic
    {
        main.event.ik.command.FadeCommand.FadeWait();
        return null;
    }

    @:hashAbi("S2462881EC0A6B86D")
    public static function StartLoadingFadeAnimationScene(?fadeType:Dynamic):Dynamic
    {
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f88367ED5(fadeType)))
        {
            return null;
        };
        if ((false == cppbindings.C56DE81E7.fA7843D05(fadeType)))
        {
            return null;
        };
        cppbindings.C56DE81E7.fF2AAAA6F(fadeType);
        return null;
    }

    @:hashAbi("SFF93A3CF2445B400")
    public static function WaitLoadingFadeAnimationScene():Dynamic
    {
        var count:Dynamic = cppbindings.C56DE81E7.f0D74A7C7();
        if (count == 0)
        {
            return null;
        }
        while (!lua.abi.Host.truthy(IsCompleteLoadingFadeAnimationScene(cppbindings.C56DE81E7.f43ACAE39(count - 1))))
        {
            Suspend();
        }
        return null;
    }

    @:hashAbi("SED9C2D3EC951A54E")
    public static function IsCompleteLoadingFadeAnimationScene(?fadeType:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f0F6A11BB(fadeType);
    }

    @:hashAbi("S00AE1F959E940ED2")
    public static function UnloadFadeAnimationScene(?fadeType:Dynamic):Dynamic
    {
        if (lua.abi.Host.truthy(!lua.abi.Host.truthy(untyped lua.abi.Host.global("c56DE81E7")["f88367ED5"](fadeType))))
        {
            return null;
        };
        untyped lua.abi.Host.global("c56DE81E7")["fC3CAAF64"](fadeType);
        untyped lua.abi.Host.global("c56DE81E7")["f7D17C733"](fadeType);
        return null;
    }

    @:hashAbi("S12F63EE47FFCB183")
    public static function Suspend():Dynamic
    {
        return main.event.command.SystemCommand.Suspend();
        
    }

    @:hashAbi("SD4E81F2D160710AC")
    public static function Wait_Time(?second:Dynamic):Dynamic
    {
        main.event.command.SystemCommand.TimeWait(second);
        return null;
    }

    @:hashAbi("S05AC6F432759456D")
    public static function Wait_OtherStateRunning():Dynamic
    {
        while (true)
        {
            if ((true != cppbindings.C56DE81E7.f67AB4D7D()))
            {
                break;
            }
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return null;
    }

    @:hashAbi("SA44C0BEC5C1E2CDB")
    public static function EventMapChange(?mapID:Dynamic, ?posX:Dynamic, ?posY:Dynamic, ?posZ:Dynamic, ?rotX:Dynamic, ?rotY:Dynamic, ?rotZ:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fDD831B08(mapID, posX, posY, posZ, rotX, rotY, rotZ);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.command.EventCameraCommand.CameraMoveAngle(0.0, ((lua.Table.create(([(cast posX), (cast posY), (cast posZ)] : Array<Float>)))), ((lua.Table.create(([(cast rotX), (cast rotY), (cast rotZ)] : Array<Float>)))), 50.0, 0);
        main.event.command.EventCameraCommand.Wait();
        return null;
    }

    @:hashAbi("SBE02FE980B0047A8")
    public static function EventMapChange_NoLoadingIcon(?mapID:Dynamic, ?posX:Dynamic, ?posY:Dynamic, ?posZ:Dynamic, ?rotX:Dynamic, ?rotY:Dynamic, ?rotZ:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f73BB00A5(mapID, posX, posY, posZ, rotX, rotY, rotZ, true);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.command.EventCameraCommand.CameraMoveAngle(0.0, ((lua.Table.create(([(cast posX), (cast posY), (cast posZ)] : Array<Float>)))), ((lua.Table.create(([(cast rotX), (cast rotY), (cast rotZ)] : Array<Float>)))), 50.0, 0);
        main.event.command.EventCameraCommand.Wait();
        return null;
    }

    public static function S497EC645A7096CF3(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic, ?arg6:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f73BB00A5(arg0, arg1, arg2, arg3, arg4, arg5, arg6, false);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.command.EventCameraCommand.CameraMoveAngle(0.0, ((lua.Table.create(([(cast arg1), (cast arg2), (cast arg3)] : Array<Float>)))), ((lua.Table.create(([(cast arg4), (cast arg5), (cast arg6)] : Array<Float>)))), 50.0, 0);
        main.event.command.EventCameraCommand.Wait();
        return null;
    }

    @:hashAbi("S791AB61ADDDA5A44")
    public static function StartBenchRelaxState():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fF82D6111"]();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("SB5A50158649C54ED")
    public static function StartCafeRelaxState(?in_label:Dynamic, ?exit_label:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f13BDCA0F(in_label, exit_label);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("S2BEDB9DE1F7A741D")
    public static function GetCurrentMapName():Dynamic
    {
        return untyped (lua.abi.Host.global("c5090F7B8"))["f2EA69E79"]();
        
    }

    @:hashAbi("S93F802A2AC3AA7D3")
    public static function OpenMainMenu():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fE4A7384E"](0, "", "");
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("S3ABCFEF1B4CD2D99")
    public static function OpenFriendlyShop_Buy(?shopId:Dynamic):Dynamic
    {
        if (shopId == null)
        {
            shopId = "";
        }
        cppbindings.C56DE81E7.fE4A7384E(1, shopId, "");
        Suspend();
        Wait_OtherStateRunning();
        Suspend();
        return null;
    }

    @:hashAbi("S85A6D6330393A5B7")
    public static function OpenFriendlyShop_Sell(?shopId:Dynamic):Dynamic
    {
        if (shopId == null)
        {
            shopId = "";
        }
        cppbindings.C56DE81E7.fE4A7384E(2, shopId, "");
        Suspend();
        Wait_OtherStateRunning();
        Suspend();
        return null;
    }

    @:hashAbi("S2324F13DEF550F67")
    public static function OpenTips(?tipsId:Dynamic):Dynamic
    {
        if (tipsId == null)
        {
            tipsId = "";
        }
        cppbindings.C56DE81E7.fE4A7384E(3, tipsId, "");
        Suspend();
        Wait_OtherStateRunning();
        Suspend();
        return null;
    }

    @:hashAbi("SBB9E0BEF11A2559F")
    public static function OpenLastBattleBag():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f6B5A4EA3"]();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("S04F57E1841E87199")
    public static function OpenPokedex(?mode:Dynamic, ?firstDevNo:Dynamic):Dynamic
    {
        if (firstDevNo == null)
        {
            firstDevNo = 0;
        }
        var modeText = Std.string("") + Std.string(mode);
        var speciesText = Std.string("") + Std.string(firstDevNo);
        cppbindings.C56DE81E7.fE4A7384E(10, modeText, speciesText);
        Suspend();
        Wait_OtherStateRunning();
        Suspend();
        return null;
    }

    @:hashAbi("S7AB8CF10A7BAFF9D")
    public static function StartSelectNpcTradePokemon(?devId:Dynamic, ?formId:Dynamic):Dynamic
    {
        var filter:Dynamic = cppbindings.CA5FF45E2.f5B6373D5();
        filter.f8ABF57B0(devId);
        filter.f6FAABE2E(formId);
        return BoxSingleSelectCommand.StartBoxSingleSelectMode(filter, 1);
    }

    public static function S968C63845E220E5E(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var filter:Dynamic = cppbindings.CA5FF45E2.f5B6373D5();
        filter.f8ABF57B0(arg0);
        filter.f6FAABE2E(arg1);
        return BoxSingleSelectCommand.StartBoxSingleSelectMode(filter, 2);
    }

    public static function SA44E9FAE3F0440A5(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var filter:Dynamic = cppbindings.CA5FF45E2.f5B6373D5();
        filter.f8ABF57B0(arg0);
        filter.f6FAABE2E(arg1);
        return BoxSingleSelectCommand.StartBoxSingleSelectMode(filter, 4);
    }

    public static function SF78A8CD440C5E9F0(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var filter:Dynamic = cppbindings.CA5FF45E2.f5B6373D5();
        filter.f8ABF57B0(arg0);
        filter.f6FAABE2E(arg1);
        return BoxSingleSelectCommand.StartBoxSingleSelectMode(filter, 3);
    }

    public static function S007A70B0AFF2E6D0(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var filter:Dynamic = cppbindings.CA5FF45E2.f5B6373D5();
        filter.f8ABF57B0(arg0);
        filter.f6FAABE2E(arg1);
        return BoxSingleSelectCommand.StartBoxSingleSelectMode(filter, 5);
    }

    public static function SE032892C80F69D68(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var filter:Dynamic = cppbindings.CA5FF45E2.f5B6373D5();
        filter.f8ABF57B0(arg0);
        filter.f6FAABE2E(arg1);
        return BoxSingleSelectCommand.StartBoxSingleSelectMode(filter, 7);
    }

    public static function SEF7FC0E88D664BB4():Dynamic
    {
        return main.event.ik.command.BoxSingleSelectCommand.GetSelectPokemon();
        
    }

    @:hashAbi("SCE5271A6E16A2F05")
    public static function GetSingleSelectPokemonSize():Dynamic
    {
        var pokemon = BoxSingleSelectCommand.GetSelectPokemon();
        if (pokemon == null)
        {
            return 0;
        }
        return cppbindings.CB66BF4D3.f131FD7C4(pokemon);
    }

    @:hashAbi("S415D012D90CA3CF9")
    public static function IsOybnForSingleSelectPokemon():Dynamic
    {
        var pokemon = BoxSingleSelectCommand.GetSelectPokemon();
        if (pokemon == null)
        {
            return false;
        }
        var parameter:Dynamic = cppbindings.CB66BF4D3.f89B3EEBF(pokemon);
        return parameter.fCFD269DB();
    }

    @:hashAbi("SABE60B847122544C")
    public static function TradeFromNpc(?tradeId:Dynamic, ?inPokeId:Dynamic, ?name:Dynamic, ?arg3:Dynamic):Dynamic
    {
        if (null == arg3)
        {
            arg3 = "";
        };
        if (null == name)
        {
            name = "";
        };
        if (null == inPokeId)
        {
            inPokeId = "";
        };
        main.event.ik.command.BoxSingleSelectCommand.TradeFromNpc(tradeId, inPokeId, name, arg3);
        return null;
    }

    @:hashAbi("S5609B9C6E15B8800")
    public static function GiveToNpc(?tradeId:Dynamic):Dynamic
    {
        main.event.ik.command.BoxSingleSelectCommand.GiveToNpc(tradeId);
        return null;
    }

    @:hashAbi("S415465CFAD09DAA4")
    public static function OpenAnyShopWithFadeAndSE(?shopType:Dynamic, ?shopId:Dynamic, ?fadeType:Dynamic, ?enterSeName:Dynamic, ?exitSeName:Dynamic, ?enterBgmName:Dynamic, ?exitBgmName:Dynamic):Dynamic
    {
        if (enterSeName != "")
        {
            PostEvent2D(enterSeName);
        }
        if (enterBgmName != "")
        {
            ExecuteBGMCommand(enterBgmName);
        }
        Fade_Out(fadeType, 0.1, true);
        var id = shopId != null ? shopId : "";
        cppbindings.C56DE81E7.fE4A7384E(shopType, id, "");
        Suspend();
        Wait_OtherStateRunning();
        Suspend();
        if (exitSeName != "")
        {
            PostEvent2D(exitSeName);
        }
        if (exitBgmName != "")
        {
            ExecuteBGMCommand(exitBgmName);
        }
        Fade_In(fadeType, 0.1, true);
        return null;
    }

    @:hashAbi("SB3003D77695B66B9")
    public static function OpenAnyShopWithSE(?shopType:Dynamic, ?shopId:Dynamic, ?enterSeName:Dynamic, ?exitSeName:Dynamic, ?enterBgmName:Dynamic, ?exitBgmName:Dynamic):Dynamic
    {
        if (enterSeName != "")
        {
            PostEvent2D(enterSeName);
        }
        if (enterBgmName != "")
        {
            ExecuteBGMCommand(enterBgmName);
        }
        var id = shopId != null ? shopId : "";
        cppbindings.C56DE81E7.fE4A7384E(shopType, id, "");
        Suspend();
        Wait_OtherStateRunning();
        Suspend();
        if (exitSeName != "")
        {
            PostEvent2D(exitSeName);
        }
        if (exitBgmName != "")
        {
            ExecuteBGMCommand(exitBgmName);
        }
        return null;
    }

    @:hashAbi("SA7187C1B0E2C6DD6")
    public static function OpenAnyMenu(?menuType:Dynamic, ?param1:Dynamic, ?param2:Dynamic):Dynamic
    {
        if (param2 == null)
        {
            param2 = "";
        }
        if (param1 == null)
        {
            param1 = "";
        }
        cppbindings.C56DE81E7.fE4A7384E(menuType, param1, param2);
        Suspend();
        Wait_OtherStateRunning();
        Suspend();
        return null;
    }

    @:hashAbi("S43D2310D18E07F92")
    public static function AnimationPicture_Load(?fileName:Dynamic):Dynamic
    {
        main.event.ik.command.IkScriptCommand.LoadOnePicture(fileName);
        return null;
    }

    @:hashAbi("S4978420FD9D27447")
    public static function AnimationPicture_IsCompleteLoading():Dynamic
    {
        return main.event.ik.command.IkScriptCommand.IsCompleteLoadingPicture();
        
    }

    @:hashAbi("SAAB516A195A13A6F")
    public static function AnimationPicture_Show():Dynamic
    {
        main.event.ik.command.IkScriptCommand.ShowOnePicture();
        return null;
    }

    @:hashAbi("S75A64C559EADF832")
    public static function AnimationPicture_Exit():Dynamic
    {
        main.event.ik.command.IkScriptCommand.ExitOnePicture();
        return null;
    }

    @:hashAbi("S38BC6465EB42701B")
    public static function LoadOnePicture(?fileName:Dynamic):Dynamic
    {
        cppbindings.CDB01D072.f71FF3C94(fileName);
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("S97B51EC57CA4B13C")
    public static function IsCompleteLoadingPicture():Dynamic
    {
        return untyped (lua.abi.Host.global("cDB01D072"))["fCEFF078D"]();
        
    }

    @:hashAbi("S0FD2F2098BDCC7A2")
    public static function ShowOnePicture():Dynamic
    {
        untyped (lua.abi.Host.global("cDB01D072"))["f05CEAC57"](true);
        return null;
    }

    @:hashAbi("S034D58BEBDB88379")
    public static function StartOnePictureCrossFade(?fileName:Dynamic, ?duration:Dynamic):Dynamic
    {
        if (duration == null)
        {
            duration = 1.0;
        }
        cppbindings.CDB01D072.fF145DEB0(fileName, duration);
        Suspend();
        return null;
    }

    @:hashAbi("SE3D8831F7F513AAE")
    public static function IsCompleteOnePictureCrossFade():Dynamic
    {
        return untyped (lua.abi.Host.global("cDB01D072"))["fB7B1AD13"]();
        
    }

    @:hashAbi("SD9F04E53A992C027")
    public static function ExitOnePicture():Dynamic
    {
        untyped (lua.abi.Host.global("cDB01D072"))["f4BAFDF67"]();
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("SDC52C50D9FBB2D05")
    public static function SetExitOnePicture():Dynamic
    {
        untyped (lua.abi.Host.global("cDB01D072"))["fE8C9B02C"]();
        return null;
    }

    @:hashAbi("S22C5499AB439FB37")
    public static function OpenChoiceCardMenu(?arg0:Dynamic):Dynamic
    {
        if ((arg0 == null)) {
            arg0 = false;
        };
        cppbindings.CAE9548D7.f5EC54DFF();
        while ((cppbindings.CAE9548D7.fCA36FB05() == false)) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        var selected:UInt = cppbindings.CAE9548D7.fB4289284();
        cppbindings.CAE9548D7.f029CE0AC(selected, arg0);
        return selected;
    }

    @:hashAbi("S8FDD894123F11EED")
    public static function SetTextResourceFileName(?resourceName:Dynamic):Dynamic
    {
        untyped main.event.ik.command.IkScriptCommand.SBE0B441BD5C39AA3 = resourceName;
        return null;
    }

    @:hashAbi("S630C9C26409DAFB9")
    public static function GetTextResourceFileName():Dynamic
    {
        return main.event.ik.command.IkScriptCommand.m_textResourceFileName;
        
    }

    @:hashAbi("S8320A77856FF515C")
    public static function ClearTextResourceFileName():Dynamic
    {
        untyped (lua.abi.Host.global("C0C062DE5AED06885"))["SBE0B441BD5C39AA3"] = "";
        return null;
    }

    public static function S3DA3C2734573239A(?arg0:Dynamic):Dynamic
    {
        if ("" == arg0)
        {
            return false;
        };
        return untyped String.prototype.indexOf(arg0, "sk/") >= 0;
    }

    public static function SEC6DDCC62CD7FDE5(?arg0:Dynamic):Dynamic
    {
        if (lua.abi.Host.truthy(untyped main.event.ik.command.IkScriptCommand.S3DA3C2734573239A(arg0)))
        {
            return untyped String.prototype.substr(arg0, 3);
        };
        return arg0;
    }

    @:hashAbi("S7871191F29A2B43F")
    public static function ShowMessageWithDisplayingAction(?showMsWType:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?npcId:Dynamic, ?isLipSync:Dynamic, ?isLargeText:Dynamic, ?displayingAction:Dynamic):Dynamic
    {
        if (isLargeText == null)
        {
            isLargeText = false;
        }
        if (isLipSync == null)
        {
            isLipSync = true;
        }
        ShowMessage(showMsWType, label, mstxt, npcId, isLipSync, isLargeText, displayingAction);
        return null;
    }

    @:hashAbi("SAF3D1CCBE079B31B")
    public static function ShowMessage_Auto(?closeTime:Dynamic, ?showMsWType:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?npcId:Dynamic, ?isLipSync:Dynamic, ?isLargeText:Dynamic, ?displayingAction:Dynamic):Dynamic
    {
        if (isLargeText == null)
        {
            isLargeText = false;
        }
        if (isLipSync == null)
        {
            isLipSync = true;
        }
        ShowMessage(showMsWType, label, mstxt, npcId, isLipSync, isLargeText, displayingAction, true, closeTime);
        return null;
    }

    @:hashAbi("SD2BA196F69118572")
    public static function ShowMessage_NoWait(?showMsWType:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?npcId:Dynamic, ?isLipSync:Dynamic, ?isLargeText:Dynamic, ?displayingAction:Dynamic):Dynamic
    {
        if (isLargeText == null)
        {
            isLargeText = false;
        }
        if (isLipSync == null)
        {
            isLipSync = true;
        }
        ShowMessage(showMsWType, label, mstxt, npcId, isLipSync, isLargeText, null, true, 100, true);
        return null;
    }

    @:hashAbi("S4732BB4D0DC73927")
    public static function HideMessageWindow_NoWait(?npcId:Dynamic):Dynamic
    {
        if ((npcId != null)) {
            main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(npcId);
        };
        cppbindings.CBA58795C.fB196C898();
        while (cppbindings.CBA58795C.f540CEF14()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("S55C1C1048729E0BB")
    public static function ShowMessage(?showMsWType:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?npcId:Dynamic, ?isLipSync:Dynamic, ?isLargeText:Dynamic, ?displayingAction:Dynamic, ?isAuto:Dynamic, ?closeTime:Dynamic, ?skip_end_wait:Dynamic):Dynamic
    {
        if ((skip_end_wait == null)) {
            skip_end_wait = false;
        };
        if ((closeTime == null)) {
            closeTime = 0.0;
        };
        if ((isAuto == null)) {
            isAuto = false;
        };
        if ((isLargeText == null)) {
            isLargeText = false;
        };
        if ((isLipSync == null)) {
            isLipSync = true;
        };
        if ((mstxt == null)) {
            mstxt = main.event.ik.command.IkScriptCommand.GetTextResourceFileName();
        };
        if ((main.event.ik.command.IkScriptCommand.IsLabelTextExist(mstxt, label) == false)) {
            if (({
                var a:UInt = cppbindings.C436B49F9.f4530466C();
                (cast a) == 0;
            })) {
                label = (Std.string(label) + Std.string("_m"));
            } else {
                label = (Std.string(label) + Std.string("_f"));
            };
            if ((main.event.ik.command.IkScriptCommand.IsLabelTextExist(mstxt, label) == false)) {
                return null;
            };
        };
        if ((npcId != null)) {
            var accessor:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(npcId);
            if (((accessor != null) && lua.abi.Host.truthy(untyped (cast accessor : Dynamic).f3417EB8F()))) {
                isLipSync = false;
            };
        };
        var executeLipSync:StdTypes.Bool = (((npcId != null) && lua.abi.Host.truthy(isLipSync)) && ((((showMsWType == 0) || (showMsWType == 1)) || (showMsWType == 7)) || (showMsWType == 8)));
        var facialData:cppbindings.C49332BE2 = null;
        if ((executeLipSync && (npcId != null))) {
            var facialCache:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.CacheFacialTemplateList;
            if (facialCache.exists(npcId)) {
                facialCache = main.event.ik.command.IkScriptCommand.CacheFacialTemplateList;
                var facialType:StdTypes.Null<Dynamic> = facialCache.get(npcId);
                if ((facialType != null)) {
                    facialData = main.event.ik.command.IkScriptCommand.GetFacialTemplateData(main.event.ik.command.IkScriptCommand.ConvertFacialDataKey(npcId, main.event.ik.command.IkScriptCommand.TryConvertDynamicNpcIdToDataKey(npcId)), facialType);
                };
            };
        };
        var lipSyncType:StdTypes.Int = (if ((facialData != null)) {
            cast(facialData.f0CBDFA79(), StdTypes.Int);
        } else {
            467;
        });
        if ((executeLipSync && (npcId != null))) {
            main.event.ik.command.IkScriptCommand.FObj_Start_LipSync(npcId, lipSyncType);
        };
        if ((showMsWType == 0)) {
            main.event.ik.command.MessageWindowCommand.ShowTalkMessage("", label, mstxt, false, isLargeText, isAuto, closeTime);
        } else {
            if ((showMsWType == 1)) {
                main.event.ik.command.MessageWindowCommand.ShowTalkMessage("", label, mstxt, true, isLargeText, isAuto, closeTime);
            } else {
                if ((showMsWType == 2)) {
                    main.event.ik.command.MessageWindowCommand.ShowSystemMessage(label, mstxt, isAuto, closeTime);
                } else {
                    if ((showMsWType == 3)) {
                        main.event.ik.command.MessageWindowCommand.ShowTransceiverMessage("", label, mstxt, false, isLargeText, isAuto, closeTime);
                    } else {
                        if ((showMsWType == 5)) {
                            main.event.ik.command.MessageWindowCommand.ShowDemoMessage("", label, mstxt);
                        } else {
                            if ((showMsWType == 6)) {
                                main.event.ik.command.MessageWindowCommand.ShowTransceiverMessage("", label, mstxt, true, isLargeText, isAuto, closeTime);
                            } else {
                                if ((showMsWType == 7)) {
                                    main.event.ik.command.MessageWindowCommand.ShowHoloTypeMessage("", label, mstxt, false, isLargeText, isAuto, closeTime);
                                } else {
                                    if ((showMsWType == 8)) {
                                        main.event.ik.command.MessageWindowCommand.ShowHoloTypeMessage("", label, mstxt, true, isLargeText, isAuto, closeTime);
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
        if (lua.abi.Host.truthy(skip_end_wait)) {
            return null;
        };
        if ((displayingAction != null)) {
            displayingAction();
        };
        main.event.ik.command.IkScriptCommand.WaitObserveMessageAndLipSync(function():Dynamic {
            return null;
        }, npcId, facialData, lipSyncType, executeLipSync);
        return null;
    }

    @:hashAbi("S218B226E99365D53")
    public static function ShowMessageWindow_Auto(?closeTime:Dynamic, ?showMsWType:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?npcId:Dynamic, ?isHideSpeakerName:Dynamic, ?talkAnime:Dynamic, ?isLipSync:Dynamic, ?dataKey:Dynamic, ?isLargeText:Dynamic, ?displayingAction:Dynamic):Dynamic
    {
        if (isLargeText == null)
        {
            isLargeText = false;
        }
        if (dataKey == null)
        {
            dataKey = "";
        }
        if (isLipSync == null)
        {
            isLipSync = true;
        }
        if (talkAnime == null)
        {
            talkAnime = 0;
        }
        if (isHideSpeakerName == null)
        {
            isHideSpeakerName = false;
        }
        ShowMessageWindow(showMsWType, label, mstxt, npcId, isHideSpeakerName, talkAnime, isLipSync, dataKey, isLargeText, displayingAction, true, closeTime);
        return null;
    }

    @:hashAbi("SDF93F6D53E9597E3")
    public static function ShowMessageWindow(?showMsWType:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?npcId:Dynamic, ?isHideSpeakerName:Dynamic, ?talkAnime:Dynamic, ?isLipSync:Dynamic, ?dataKey:Dynamic, ?isLargeText:Dynamic, ?displayingAction:Dynamic, ?isAuto:Dynamic, ?closeTime:Dynamic):Dynamic
    {
        if ((closeTime == null)) {
            closeTime = 0.0;
        };
        if ((isAuto == null)) {
            isAuto = false;
        };
        if ((isLargeText == null)) {
            isLargeText = false;
        };
        if ((dataKey == null)) {
            dataKey = "";
        };
        if ((isLipSync == null)) {
            isLipSync = true;
        };
        if ((talkAnime == null)) {
            talkAnime = 0;
        };
        if ((isHideSpeakerName == null)) {
            isHideSpeakerName = false;
        };
        if ((mstxt == null)) {
            mstxt = main.event.ik.command.IkScriptCommand.GetTextResourceFileName();
        };
        if ((main.event.ik.command.IkScriptCommand.IsLabelTextExist(mstxt, label) == false)) {
            if (({
                var a:UInt = cppbindings.C436B49F9.f4530466C();
                (cast a) == 0;
            })) {
                label = (Std.string(label) + Std.string("_m"));
            } else {
                label = (Std.string(label) + Std.string("_f"));
            };
            if ((main.event.ik.command.IkScriptCommand.IsLabelTextExist(mstxt, label) == false)) {
                return null;
            };
        };
        if (((dataKey == "") && (npcId != null))) {
            dataKey = main.event.ik.command.IkScriptCommand.TryConvertDynamicNpcIdToDataKey(npcId);
        };
        var executeLipSync:StdTypes.Bool = (((npcId != null) && lua.abi.Host.truthy(isLipSync)) && ((((showMsWType == 0) || (showMsWType == 1)) || (showMsWType == 7)) || (showMsWType == 8)));
        var facialData:cppbindings.C49332BE2 = null;
        if ((executeLipSync && (npcId != null))) {
            var facialCache:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.CacheFacialTemplateList;
            if (facialCache.exists(npcId)) {
                facialCache = main.event.ik.command.IkScriptCommand.CacheFacialTemplateList;
                var facialType:StdTypes.Null<Dynamic> = facialCache.get(npcId);
                if ((facialType != null)) {
                    facialData = main.event.ik.command.IkScriptCommand.GetFacialTemplateData(main.event.ik.command.IkScriptCommand.ConvertFacialDataKey(npcId, dataKey), facialType);
                };
            };
        };
        var lipSyncType:StdTypes.Int = (if ((facialData != null)) {
            cast(facialData.f0CBDFA79(), StdTypes.Int);
        } else {
            467;
        });
        if (executeLipSync) {
            if ((npcId != null)) {
                main.event.ik.command.IkScriptCommand.FObj_Start_LipSync(npcId, lipSyncType);
            };
            if ((talkAnime != 0)) {
                var updateKey:String = (Std.string(npcId) + Std.string("ShowMessageWindow"));
                if ((npcId != null)) {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcId, talkAnime);
                };
                var updates:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.UpdateList;
                if (updates.exists(updateKey)) {
                    main.event.ik.command.IkScriptCommand.DelUpdateList(updateKey);
                };
                var resetAfterSeconds:StdTypes.Int = 3;
                var timer:cppbindings.C7F7A5192 = cppbindings.C7F7A5192.f101D811F();
                timer.fF5E28294();
                main.event.ik.command.IkScriptCommand.SetUpdateList(updateKey, function():Dynamic {
                    timer.f92A1FFA7();
                    if ((resetAfterSeconds <= timer.fC0E2CAD0())) {
                        main.event.ik.command.IkScriptCommand.DelUpdateList(updateKey);
                        var targetId:StdTypes.Null<String> = (if ((npcId != null)) {
                            npcId;
                        } else {
                            "";
                        });
                        if ((targetId != "")) {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation((if ((npcId != null)) {
                                npcId;
                            } else {
                                "";
                            }), 1);
                        };
                    };
                    return null;
                });
            };
        };
        if ((showMsWType == 0)) {
            main.event.ik.command.MessageWindowCommand.ShowTalkMessage("", label, mstxt, false, isLargeText, isAuto, closeTime);
        } else {
            if ((showMsWType == 1)) {
                main.event.ik.command.MessageWindowCommand.ShowTalkMessage("", label, mstxt, true, isLargeText, isAuto, closeTime);
            } else {
                if ((showMsWType == 2)) {
                    main.event.ik.command.MessageWindowCommand.ShowSystemMessage(label, mstxt, isAuto, closeTime);
                } else {
                    if ((showMsWType == 3)) {
                        main.event.ik.command.MessageWindowCommand.ShowTransceiverMessage("", label, mstxt, false, isLargeText, isAuto, closeTime);
                    } else {
                        if ((showMsWType == 5)) {
                            main.event.ik.command.MessageWindowCommand.ShowDemoMessage("", label, mstxt);
                        } else {
                            if ((showMsWType == 6)) {
                                main.event.ik.command.MessageWindowCommand.ShowTransceiverMessage("", label, mstxt, true, isLargeText, isAuto, closeTime);
                            } else {
                                if ((showMsWType == 7)) {
                                    main.event.ik.command.MessageWindowCommand.ShowHoloTypeMessage("", label, mstxt, false, isLargeText, isAuto, closeTime);
                                } else {
                                    if ((showMsWType == 8)) {
                                        main.event.ik.command.MessageWindowCommand.ShowHoloTypeMessage("", label, mstxt, true, isLargeText, isAuto, closeTime);
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
        var resetTalkAnime:() -> Dynamic = function():Dynamic {
            var targetId:StdTypes.Null<String> = (if ((npcId != null)) {
                npcId;
            } else {
                "";
            });
            if (((talkAnime != 0) && (targetId != ""))) {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(targetId, 1);
            };
            return null;
        };
        if ((displayingAction != null)) {
            displayingAction();
        };
        main.event.ik.command.IkScriptCommand.WaitObserveMessageAndLipSync(resetTalkAnime, npcId, facialData, lipSyncType, executeLipSync);
        return null;
    }

    @:hashAbi("S1E8047C2B6ED610E")
    public static function WaitObserveMessageAndLipSync(?resetTalkAnime:Dynamic, ?npcId:Dynamic, ?facialData:Dynamic, ?lipSyncType:Dynamic, ?isExecuteLipSync:Dynamic):Dynamic
    {
        var template:cppbindings.C49332BE2 = facialData;
        var mouthType:StdTypes.Int = (if ((template != null)) {
            cast(template.fDD7C9DC5(), StdTypes.Int);
        } else {
            451;
        });
        var lipSyncStopped:StdTypes.Bool = false;
        var stopLipSync:() -> Dynamic = function():Dynamic {
            if ((lua.abi.Host.truthy(isExecuteLipSync) && !lipSyncStopped)) {
                resetTalkAnime();
                main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync((if ((npcId != null)) {
                    npcId;
                } else {
                    "";
                }), mouthType);
                lipSyncStopped = true;
            };
            return null;
        };
        var elapsed:StdTypes.Float = 0.0;
        var textPaused:StdTypes.Bool = false;
        while ((cppbindings.CBA58795C.fBFFD6BA4() == false)) {
            elapsed += main.event.ik.command.IkScriptCommand.Suspend();
            if (!lua.abi.Host.truthy(cppbindings.CBA58795C.f911EF4BA())) {
                textPaused = true;
                if ((elapsed >= main.event.ik.command.IkScriptCommand.kLipSyncSeconds)) {
                    stopLipSync();
                };
            } else {
                if ((elapsed > 0)) {
                    if (lipSyncStopped) {
                        if ((npcId != null)) {
                            main.event.ik.command.IkScriptCommand.FObj_Start_LipSync(npcId, lipSyncType);
                        };
                        lipSyncStopped = false;
                    };
                    if (textPaused) {
                        elapsed = 0;
                        textPaused = false;
                    };
                };
            };
        };
        stopLipSync();
        return null;
    }

    @:hashAbi("S9E4A033ECCF49BB0")
    public static function HideMessageWindow():Dynamic
    {
        if (cppbindings.CBA58795C.f540CEF14()) {
            cppbindings.CBA58795C.fB196C898();
            while (cppbindings.CBA58795C.f540CEF14()) {
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("SEC0AD3DEEBA9EB4F")
    public static function ShowMessageAndContext(?label:Dynamic, ?mstxt:Dynamic, ?talkNpcName:Dynamic, ?normalContextArgs:Dynamic, ?tagContextArags:Dynamic, ?type:Dynamic):Dynamic
    {
        if (type == null)
        {
            type = 0;
        }
        ShowMessageWindow(type, label, mstxt, type == 0 ? talkNpcName : null);
        if (normalContextArgs != null)
        {
            return ShowContextMenu(normalContextArgs, 0, true, null, null, null, mstxt);
        }
        if (tagContextArags != null)
        {
            return ShowContextMenuWithTag(tagContextArags, 0, true, null, null, null, mstxt);
        }
        return 0;
    }

    @:hashAbi("S6C934555A2CE2AD0")
    public static function ShowContextMenu(?labelArray:Dynamic, ?cursorIndex:Dynamic, ?isEnableCancel:Dynamic, ?isBasePosKindMode:Dynamic, ?basePos:Dynamic, ?windowType:Dynamic, ?mstxt:Dynamic):Dynamic
    {
        if ((windowType == null)) {
            windowType = 0;
        };
        if ((basePos == null)) {
            basePos = 2;
        };
        if ((isBasePosKindMode == null)) {
            isBasePosKindMode = false;
        };
        if ((isEnableCancel == null)) {
            isEnableCancel = false;
        };
        if ((cursorIndex == null)) {
            cursorIndex = 0;
        };
        if ((mstxt == null)) {
            mstxt = main.event.ik.command.IkScriptCommand.GetTextResourceFileName();
        };
        main.event.ik.command.ContextMenuCommand.ShowTalkContext(labelArray, mstxt, cursorIndex, isEnableCancel, isBasePosKindMode, basePos, windowType);
        while ((cppbindings.C37BF542A.f1DED4906() == false)) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return cppbindings.C37BF542A.fC5214336();
    }

    @:hashAbi("S3F77A1A066956938")
    public static function ShowContextMenuWithTag(?items:Dynamic, ?cursorIndex:Dynamic, ?isEnableCancel:Dynamic, ?isBasePosKindMode:Dynamic, ?basePos:Dynamic, ?windowType:Dynamic, ?mstxt:Dynamic):Dynamic
    {
        if ((windowType == null)) {
            windowType = 0;
        };
        if ((basePos == null)) {
            basePos = 2;
        };
        if ((isBasePosKindMode == null)) {
            isBasePosKindMode = false;
        };
        if ((isEnableCancel == null)) {
            isEnableCancel = false;
        };
        if ((cursorIndex == null)) {
            cursorIndex = 0;
        };
        if ((mstxt == null)) {
            mstxt = main.event.ik.command.IkScriptCommand.GetTextResourceFileName();
        };
        main.event.ik.command.ContextMenuCommand.ShowTalkContextWithTag(items, mstxt, cursorIndex, isEnableCancel, isBasePosKindMode, basePos, windowType);
        while ((cppbindings.C37BF542A.f1DED4906() == false)) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return cppbindings.C37BF542A.fC5214336();
    }

    @:hashAbi("SCBC12D31371BCA66")
    public static function CreatePlaneText(?label:Dynamic, ?mstxt:Dynamic):Dynamic
    {
        if (null == mstxt)
        {
            mstxt = "";
        }
        var item = new ContextItemWithTag();
        item.label = label;
        item.mstxt = mstxt;
        item.type = 1;
        return item;
    }

    @:hashAbi("S7C675FD2CFF92854")
    public static function CreateRivalText(?label:Dynamic, ?mstxt:Dynamic, ?bufId:Dynamic):Dynamic
    {
        if (null == bufId)
        {
            bufId = 0;
        }
        if (null == mstxt)
        {
            mstxt = "";
        }
        var item = new ContextItemWithTag();
        item.label = label;
        item.mstxt = mstxt;
        item.bufId = bufId;
        item.type = 0;
        return item;
    }

    @:hashAbi("S8BAA806452BB1DDF")
    public static function CreatePlayerText(?label:Dynamic, ?mstxt:Dynamic, ?bufId:Dynamic):Dynamic
    {
        if (null == bufId)
        {
            bufId = 0;
        }
        if (null == mstxt)
        {
            mstxt = "";
        }
        var item = new ContextItemWithTag();
        item.label = label;
        item.mstxt = mstxt;
        item.bufId = bufId;
        item.type = 2;
        return item;
    }

    @:hashAbi("S52BB7519423AF39F")
    public static function CreateNumberText(?label:Dynamic, ?mstxt:Dynamic, ?bufId:Dynamic, ?number:Dynamic, ?digit:Dynamic, ?dispType:Dynamic, ?codeType:Dynamic):Dynamic
    {
        if (null == codeType)
        {
            codeType = 1;
        }
        if (null == dispType)
        {
            dispType = 0;
        }
        if (null == digit)
        {
            digit = 0;
        }
        if (null == bufId)
        {
            bufId = 0;
        }
        if (null == mstxt)
        {
            mstxt = "";
        }
        if (0 == digit)
        {
            digit = GetDigit(number);
        }
        var item = new ContextItemWithTag();
        item.label = label;
        item.mstxt = mstxt;
        item.bufId = bufId;
        item.type = 4;
        item.number = number;
        item.digit = digit;
        item.dispType = dispType;
        item.codeType = codeType;
        return item;
    }

    @:hashAbi("S616D6FB1FA7FFF1B")
    public static function CreateWazaText(?label:Dynamic, ?mstxt:Dynamic, ?bufId:Dynamic, ?wazaId:Dynamic):Dynamic
    {
        if (null == bufId)
        {
            bufId = 0;
        }
        if (null == mstxt)
        {
            mstxt = "";
        }
        var item = new ContextItemWithTag();
        item.label = label;
        item.mstxt = mstxt;
        item.bufId = bufId;
        item.type = 3;
        item.wazaId = wazaId;
        return item;
    }

    @:hashAbi("S01A4EC25E15498BD")
    public static function CreateItemText(?label:Dynamic, ?mstxt:Dynamic, ?itemId:Dynamic, ?itemNum:Dynamic, ?bufId:Dynamic):Dynamic
    {
        if (null == bufId)
        {
            bufId = 0;
        }
        if (null == itemNum)
        {
            itemNum = 1;
        }
        var item = new ContextItemWithTag();
        item.label = label;
        item.mstxt = mstxt;
        item.bufId = bufId;
        item.type = 5;
        item.itemId = itemId;
        item.number = itemNum;
        return item;
    }

    @:hashAbi("S10749D03B63CACF9")
    public static function IsLabelTextExist(?mstxt:Dynamic, ?label:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f0EBFE455(mstxt, label);
    }

    @:hashAbi("S0CAB8ECFF7185F55")
    public static function StartCreditUISequence():Dynamic
    {
        main.event.ik.command.IkScriptCommand.DisableAutoSleepMode();
        untyped (lua.abi.Host.global("c56DE81E7"))["f7333A1A0"]();
        main.event.ik.command.IkScriptCommand.Suspend();
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(untyped (lua.abi.Host.global("c56DE81E7"))["f2F50C21A"]()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        untyped (lua.abi.Host.global("c56DE81E7"))["f8CEEFEC8"]();
        main.event.ik.command.IkScriptCommand.Suspend();
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(untyped (lua.abi.Host.global("c56DE81E7"))["f2E90EFC6"]()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        untyped (lua.abi.Host.global("c56DE81E7"))["f24A70CFE"]();
        main.event.ik.command.IkScriptCommand.EnableAutoSleepMode();
        return null;
    }

    @:hashAbi("S217848E44DF635AC")
    public static function CreateEffect(?path:Dynamic, ?key:Dynamic, ?sceneName:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.Create(path, key, sceneName);
        return null;
    }

    @:hashAbi("SB507BE43C230D8DA")
    public static function CreateLocaterEffect(?path:Dynamic, ?key:Dynamic, ?ownerObjName:Dynamic, ?sceneName:Dynamic):Dynamic
    {
        if ((sceneName == null)) {
            sceneName = "";
        };
        if ((sceneName == "")) {
            var accessor:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(ownerObjName);
            if ((accessor == null)) {
                return null;
            };
            var object:StdTypes.Null<cppbindings.C016374C1> = accessor.fEBA8F794();
            if ((object != null)) {
                var scene:StdTypes.Null<cppbindings.CA042DA13> = object.f462C9B70();
                var name:StdTypes.Null<StdTypes.Null<String>> = (if ((scene != null)) {
                    scene.fE9C29DA1();
                } else {
                    null;
                });
                sceneName = (if ((name != null)) {
                    name;
                } else {
                    "";
                });
            };
        };
        main.event.ik.command.EffectCommand.CreateLocater(path, key, sceneName, ownerObjName);
        return null;
    }

    @:hashAbi("S38517C8C703F697B")
    public static function IsSetUpEffect(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.IsSetUp(key);
    }

    @:hashAbi("SDF260BA2433E91E7")
    public static function PlayEffectSequence(?key:Dynamic, ?locater:Dynamic):Dynamic
    {
        if ((null == locater))
        {
            locater = "head";
        };
        while (true)
        {
            if (lua.abi.Host.truthy(untyped main.event.ik.command.IkScriptCommand.IsSetUpEffect(key)))
            {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.SetLocaterEffect(key, locater);
        main.event.ik.command.IkScriptCommand.PlayEffect(key);
        return null;
    }

    @:hashAbi("S13CF70AA164DB166")
    public static function PlayEffect(?key:Dynamic, ?isAutoKill:Dynamic):Dynamic
    {
        if ((null == isAutoKill))
        {
            isAutoKill = false;
        };
        main.event.ik.command.EffectCommand.Play(key, isAutoKill);
        return null;
    }

    @:hashAbi("S5443A5408AA27396")
    public static function FadeEffect(?key:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.Fade(key);
        return null;
    }

    @:hashAbi("S41A4045814813870")
    public static function KillEffect(?key:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.Kill(key);
        return null;
    }

    @:hashAbi("S173F167ACFB0EE2C")
    public static function RemoveEffect(?key:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.Remove(key);
        return null;
    }

    @:hashAbi("S8F9D8F2D550FDD8D")
    public static function RemoveAllTagEffect():Dynamic
    {
        main.event.ik.command.EffectCommand.RemoveAllTag();
        return null;
    }

    @:hashAbi("S1F6F63704B18FC9C")
    public static function SetLocaterEffect(?key:Dynamic, ?locater:Dynamic):Dynamic
    {
        if ((null == locater))
        {
            locater = "head";
        };
        main.event.ik.command.EffectCommand.SetLocater(key, locater);
        return null;
    }

    @:hashAbi("S85AA613F50A4A763")
    public static function GetEffectParticleComp(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.GetParticleComp(key);
    }

    @:hashAbi("SB2937945F48A7BD5")
    public static function SetEffectWorldPosition(?key:Dynamic, ?x:Dynamic, ?y:Dynamic, ?z:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.SetWorldPosition(key, x, y, z);
        return null;
    }

    @:hashAbi("S4B3E70982A5E28C2")
    public static function SetEffectLocalPosition(?key:Dynamic, ?x:Dynamic, ?y:Dynamic, ?z:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.SetLocalPosition(key, x, y, z);
        return null;
    }

    @:hashAbi("SAA880CEABEE19158")
    public static function SetEffectWorldRotation(?key:Dynamic, ?x:Dynamic, ?y:Dynamic, ?z:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.SetWorldRotation(key, x, y, z);
        return null;
    }

    @:hashAbi("S5477CB6EEB0FDC27")
    public static function SetEffectLocalRotation(?key:Dynamic, ?x:Dynamic, ?y:Dynamic, ?z:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.SetLocalRotation(key, x, y, z);
        return null;
    }

    @:hashAbi("SD3F56D7A1041E840")
    public static function SetEffectWorldScale(?key:Dynamic, ?scale:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.SetWorldScale(key, scale);
        return null;
    }

    @:hashAbi("SF6802291A50A20F9")
    public static function SetEffectLocalScale(?key:Dynamic, ?scale:Dynamic):Dynamic
    {
        main.event.ik.command.EffectCommand.SetLocalScale(key, scale);
        return null;
    }

    @:hashAbi("S76D416EC37F62009")
    public static function GetEffectWorldPosition(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.GetWorldPosition(key);
    }

    @:hashAbi("S37FB504AD94DE3FE")
    public static function GetEffectLocalPosition(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.GetLocalPosition(key);
    }

    @:hashAbi("S0CDFA3CBF1DA21F4")
    public static function GetEffectWorldRotation(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.GetWorldRotation(key);
    }

    @:hashAbi("S0E299C22B2C7056B")
    public static function GetEffectLocalRotation(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.GetLocalRotation(key);
    }

    @:hashAbi("SA75BB3AE0430A92C")
    public static function GetEffectWorldScale(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.GetWorldScale(key);
    }

    @:hashAbi("S380A9A6B71397D9D")
    public static function GetEffectLocalScale(?key:Dynamic):Dynamic
    {
        return main.event.ik.command.EffectCommand.GetLocalScale(key);
    }

    public static function SE6ED292B2B4BAC83(?arg0:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f3CCBE74E(arg0);
    }

    @:hashAbi("S0E3520C6451491BA")
    public static function Add_Royale_Point(?addPoint:Dynamic):Dynamic
    {
        if ((addPoint < 0))
        {
            return null;
        };
        cppbindings.C56DE81E7.fCAC3436D(addPoint);
        return null;
    }

    @:hashAbi("SD90F6E37E5AF97B3")
    public static function Set_Royale_Point(?setPoint:Dynamic):Dynamic
    {
        if ((setPoint < 0))
        {
            return null;
        };
        cppbindings.C56DE81E7.fE3A44409(setPoint);
        return null;
    }

    public static function SB8095F38561FCF7F(?arg0:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f20F66AC2(arg0);
    }

    @:hashAbi("S8C327CB706419B91")
    public static function StartSequenceRoyaleResult():Dynamic
    {
        cppbindings.C56DE81E7.f86B27023(0);
        Suspend();
        while (!cppbindings.C56DE81E7.f0162B8B1())
        {
            Suspend();
        }
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_ROYALE_TIME_RESULT_OPEN");
        cppbindings.C56DE81E7.fEE0ED5E9("in");
        Suspend();
        if (cppbindings.C56DE81E7.fECF78F8A())
        {
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_UI_HUD_ROYAL_CLOSE_RESULT_00");
            Wait_Time(3.56);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_UI_HUD_ROYAL_CLOSE_RESULT_170");
            Wait_Time(2.45);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_UI_HUD_ROYAL_CLOSE_RESULT_243");
            Wait_Time(2.9);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_UI_HUD_ROYAL_CLOSE_RESULT_333");
        }
        while (!cppbindings.C56DE81E7.f15E6A6DE("in"))
        {
            Suspend();
        }
        if (cppbindings.C56DE81E7.f0B974793() != 0)
        {
            Suspend();
            while (!cppbindings.C56DE81E7.fC65E3809())
            {
                Suspend();
            }
            cppbindings.C56DE81E7.f3CD8BE5A();
            Suspend();
            while (!cppbindings.C56DE81E7.f5F449341())
            {
                Suspend();
            }
            cppbindings.C56DE81E7.f038737B6();
            cppbindings.C56DE81E7.f9B987170();
            Suspend();
            while (!cppbindings.C56DE81E7.f8EC13830())
            {
                Suspend();
            }
            Suspend();
            while (!cppbindings.C56DE81E7.fC65E3809())
            {
                Suspend();
            }
        }
        else
        {
            Wait_Time(3.0);
        }
        cppbindings.C56DE81E7.fEE0ED5E9("out");
        Suspend();
        while (!cppbindings.C56DE81E7.f15E6A6DE("out"))
        {
            Suspend();
        }
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_ROYALE_TIME_RESULT_CLOSE");
        cppbindings.C56DE81E7.fBE7DF2C6();
        return null;
    }

    @:hashAbi("S36D7624FBF22CC2A")
    public static function ShowMoneyUI():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f3CE87C91"]();
        return null;
    }

    public static function S00955FA08523FC6C():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fCE44F360"]();
        return null;
    }

    @:hashAbi("SCB3347C4F29A7373")
    public static function DestoryMoneyUI():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f070DFE31"]();
        return null;
    }

    @:hashAbi("S485A095E9DD62150")
    public static function CalcMoney(?price:Dynamic, ?isAutoDestroy:Dynamic):Dynamic
    {
        if ((null == isAutoDestroy))
        {
            isAutoDestroy = true;
        };
        cppbindings.C56DE81E7.f5CE9D7D8(price, isAutoDestroy);
        return null;
    }

    public static function S7A3F143B7E651BA6(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if (null == arg1)
        {
            arg1 = true;
        };
        cppbindings.C56DE81E7.fF56991D4(arg0, arg1);
        return null;
    }

    @:hashAbi("SA375FFE281A61022")
    public static function AddAndShowMonyeUI(?price:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fD89D2D1D(price);
        return null;
    }

    @:hashAbi("S17B888EFFB0B92DC")
    public static function GetCurrentMoney():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fD88A4F2D"]();
        
    }

    @:hashAbi("S2C122E038E970926")
    public static function PlayerFullRecovery():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fC2C0590C"]();
        return null;
    }

    @:hashAbi("S0F2BBF67855B06EE")
    public static function PokemonAllRecovery(?seName:Dynamic, ?isWaitSE:Dynamic):Dynamic
    {
        if ((null == isWaitSE))
        {
            isWaitSE = true;
        };
        if ((null == seName))
        {
            seName = "";
        };
        cppbindings.C56DE81E7.fFB3A9D11();
        if (("" == seName))
        {
            return null;
        };
        if (lua.abi.Host.truthy(isWaitSE))
        {
            main.event.ik.command.IkScriptCommand.PostEvent2DWithEnd(seName);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.PostEventGlobal(seName);
        };
        return null;
    }

    @:hashAbi("SB52FCFA328DF8D10")
    public static function PokemonRecoverySeq(?fadeType:Dynamic, ?seName:Dynamic, ?isWaitSE:Dynamic):Dynamic
    {
        if ((isWaitSE == null)) {
            isWaitSE = true;
        };
        if ((seName == null)) {
            seName = "PLAY_SS_COMMON_RECOVERY";
        };
        if ((fadeType == null)) {
            fadeType = "";
        };
        var useFade:StdTypes.Bool = (fadeType != "");
        if (useFade) {
            main.event.ik.command.IkScriptCommand.Fade_Out(fadeType, 0.1, true);
        };
        cppbindings.C56DE81E7.fFB3A9D11();
        if ((seName != "")) {
            if (lua.abi.Host.truthy(isWaitSE)) {
                main.event.ik.command.IkScriptCommand.PostEvent2DWithEnd(seName);
            } else {
                main.event.ik.command.IkScriptCommand.PostEventGlobal(seName);
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        if (useFade) {
            main.event.ik.command.IkScriptCommand.Fade_In(fadeType, 0.1, true);
        };
        return null;
    }

    @:hashAbi("SBB474E73F41926D0")
    public static function PokemonRecoveryQuick():Dynamic
    {
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PostEventGlobal("PLAY_SS_COMMON_RECOVERY");
        main.event.ik.command.IkScriptCommand.Fade_Out_Wait();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped (lua.abi.Host.global("c56DE81E7"))["fFB3A9D11"]();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.2, true);
        return null;
    }

    @:hashAbi("S8D327F9C6201C137")
    public static function PokemonRecoveryLong():Dynamic
    {
        main.event.ik.command.IkScriptCommand.PokemonRecoverySeq("transition_fade_inout", "PLAY_ME_IK_M_KAIFUKU");
        return null;
    }

    public static function S95C437713D4FE833(?arg0:Dynamic):Dynamic
    {
        var lightReceiveType:StdTypes.Int = (if ((cppbindings.CF9A3B7E9.fB41FD22F(arg0) != null)) {
            2;
        } else {
            1;
        });
        var model:StdTypes.Null<cppbindings.CECB91E31> = cppbindings.CECB91E31.fB41FD22F(arg0);
        if ((model != null)) {
            {
                model.fD1703C5B(0);
                0;
            };
            var count:StdTypes.Int = model.fD74EB814();
            for (index in (new IntIterator(0, count))) {
                model.fA96DA14C("LightReceiveType", lightReceiveType, model.fEEF8EB33(index), "");
            };
        };
        return null;
    }

    public static function SD2850AEE9F875155(?arg0:Dynamic):Dynamic
    {
        var result = cppbindings.C56DE81E7.f1FA7761C(arg0);
        return result == null ? false : result;
    }

    @:hashAbi("S1CAB158209451503")
    public static function PokemonPossessionAdd(?pokeID:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic):Dynamic
    {
        if (arg4 == null)
        {
            arg4 = "NONE";
        }
        if (arg3 == null)
        {
            arg3 = "NONE";
        }
        if (arg2 == null)
        {
            arg2 = "NONE";
        }
        if (arg1 == null)
        {
            arg1 = "NONE";
        }
        cppbindings.C56DE81E7.fCD58E612(pokeID, arg1, arg2, arg3, arg4);
        return null;
    }

    @:hashAbi("SC5E8B4CF825512D6")
    public static function GetFlagValue(?flagID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f377B8BEA(flagID);
    }

    @:hashAbi("S1D1CE24C37621C6B")
    public static function GetWorkValue(?workID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f71D64019(workID);
    }

    @:hashAbi("S3A813EAD5F138F12")
    public static function SetFlagValue(?flagID:Dynamic, ?val:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f92941AC0(flagID, val);
        return null;
    }

    @:hashAbi("S726F07BA83934907")
    public static function EnableDirectionalMain(?yaw:Dynamic, ?pitch:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.fE03949A8(yaw, pitch);
        return null;
    }

    @:hashAbi("S12163E7D552BA804")
    public static function DisableDirectionalMain():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["fAABAF189"]();
        return null;
    }

    public static function SB9CC9932E67C39E4(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f459A3369(arg0, arg1, arg2);
        untyped main.event.ik.command.IkScriptCommand.S7F59DD7D38BDD2C1.push(arg0);
        return null;
    }

    public static function S621855390FC99D8F(?arg0:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.fE9BB76F8(arg0);
        var pending:Array<Dynamic> = S7F59DD7D38BDD2C1;
        if (Lambda.exists(pending, function(entry:Dynamic):Bool
        {
            return entry == arg0;
        }))
        {
            var current:Array<Dynamic> = S7F59DD7D38BDD2C1;
            current.remove(arg0);
        }
        return null;
    }

    @:hashAbi("S60D30BE1A38CB966")
    public static function EnableShadowTransform(?yaw:Dynamic, ?pitch:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.fAD025A0E(yaw, pitch);
        return null;
    }

    @:hashAbi("SEDD70432D71DF125")
    public static function DisableShadowTransform():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["fE781E22F"]();
        return null;
    }

    @:hashAbi("SC94ECA72F18A6845")
    public static function EnableDropShadowAlpha(?alpha:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f6BA58863(alpha);
        return null;
    }

    @:hashAbi("S680CD5F812AC28CA")
    public static function DisableDropShadowAlpha():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["f21263042"]();
        return null;
    }

    @:hashAbi("SB9B4F39F38803B1D")
    public static function StartRadialBlur(?pos:Dynamic, ?intensity:Dynamic, ?offset:Dynamic, ?inTime:Dynamic, ?keepTime:Dynamic, ?outTime:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f0C9F8C47(untyped pos[1], untyped pos[2], intensity, offset, inTime, keepTime, outTime);
        return null;
    }

    @:hashAbi("SAE930BA002E7C0BF")
    public static function StopRadialBlur(?outTime:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f17112789(outTime);
        return null;
    }

    @:hashAbi("S4703E7A40388C978")
    public static function EnableRadialBlur(?pos:Dynamic, ?intensity:Dynamic, ?offset:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f01FF5570(untyped pos[1], untyped pos[2], intensity, offset);
        return null;
    }

    @:hashAbi("S6CA61CD7B8CCA571")
    public static function DisableRadialBlur():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["f32285B4B"]();
        return null;
    }

    @:hashAbi("S168DFBCB35622E1E")
    public static function StartScreenBlur(?startBlurRadius:Dynamic, ?startDofFocus:Dynamic, ?startDofBlurBegin:Dynamic, ?startDofBlurEnd:Dynamic, ?endBlurRadius:Dynamic, ?endDofFocus:Dynamic, ?endDofBlurBegin:Dynamic, ?endDofBlurEnd:Dynamic, ?lerpTime:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f10076481(startBlurRadius, startDofFocus, startDofBlurBegin, startDofBlurEnd, endBlurRadius, endDofFocus, endDofBlurBegin, endDofBlurEnd, lerpTime);
        return null;
    }

    @:hashAbi("SA811BB295BC57024")
    public static function StopScreenBlur():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["f0B89CF4F"]();
        return null;
    }

    @:hashAbi("S181AB234AC97CF43")
    public static function EnableScreenBlur(?blurRadius:Dynamic, ?dofFocus:Dynamic, ?dofBlurBegin:Dynamic, ?dofBlurEnd:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f1D67BDB6(blurRadius, dofFocus, dofBlurBegin, dofBlurEnd);
        return null;
    }

    @:hashAbi("S73D0C600A0CD7D9A")
    public static function DisableScreenBlur():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["f2EB0B38D"]();
        return null;
    }

    @:hashAbi("S74820EDF1ACFA98D")
    public static function StartEyeAdaptation(?startTMScale:Dynamic, ?endTMScale:Dynamic, ?lerpTime:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.fD801418B(startTMScale, endTMScale, lerpTime);
        return null;
    }

    @:hashAbi("S67C9CD1DD385E60F")
    public static function StopEyeAdaptation():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["f04C331DF"]();
        return null;
    }

    @:hashAbi("SA90B57FA2FA2B1F6")
    public static function EnableEyeAdaptation(?tmScale:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.fE46DAD9D(tmScale);
        return null;
    }

    @:hashAbi("S68E53985CCEA1B41")
    public static function DisableEyeAdaptation():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["f4A67CD26"]();
        return null;
    }

    @:hashAbi("SF56A28F03FD48875")
    public static function SetSex(?sex:Dynamic):Dynamic
    {
        if (((0 != sex) && (1 != sex)))
        {
            sex = 0;
        };
        cppbindings.C436B49F9.fBDC179BD(sex);
        return null;
    }

    @:hashAbi("SCB0766722C68EAEC")
    public static function UpdateReplace():Dynamic
    {
        untyped (lua.abi.Host.global("c5090F7B8"))["f9EE8F16F"]();
        return null;
    }

    @:hashAbi("S66B7CE475F209734")
    public static function IsReplacing():Dynamic
    {
        return untyped (lua.abi.Host.global("c5090F7B8"))["f0B66920B"]();
        
    }

    @:hashAbi("S8120A132AE9125D8")
    public static function WaitReplace():Dynamic
    {
        main.event.ik.command.IkScriptCommand.Suspend();
        var elapsed:StdTypes.Float = 0.0;
        while (cppbindings.C5090F7B8.f0B66920B()) {
            elapsed += main.event.ik.command.IkScriptCommand.Suspend();
            if ((elapsed >= main.event.ik.command.IkScriptCommand.k_TimeOutTime)) {
                break;
            };
        };
        return null;
    }

    public static function S536ACE75BFD8B6CC():Dynamic
    {
        return untyped (lua.abi.Host.global("c5090F7B8"))["fB628218B"]();
        
    }

    public static function S945A889425CEA31C(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        var current = Std.int(SCD179DF2B6BAF31F());
        if (arg1 == null)
        {
            return current == arg0;
        }
        if (arg0 <= current)
        {
            return arg1 >= current;
        }
        return false;
    }

    public static function SCD179DF2B6BAF31F():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f8D747B5E"]();
        
    }

    public static function S25C5567056C47683():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f6924D052"]();
        
    }

    public static function SC818B7D84F7486E2(?arg0:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f06384358(arg0);
        return null;
    }

    @:hashAbi("SAED0C41DFEF0AFE0")
    public static function OverrideAreaLight(?areaPriority:Dynamic, ?lightFileName:Dynamic, ?overrideChangeSpan:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f7B8FE8C6(areaPriority, lightFileName, overrideChangeSpan);
        return null;
    }

    @:hashAbi("SC98ECE29FA489BF3")
    public static function ResetOverrideAreaLight(?overrideChangeSpan:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f9EB79769(overrideChangeSpan);
        return null;
    }

    @:hashAbi("S58EF529F6D0A954C")
    public static function FixLight(?lightFilePath:Dynamic, ?overrideChangeSpan:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.fACE6C6AB(lightFilePath, overrideChangeSpan);
        return null;
    }

    @:hashAbi("SC5FE593E84421345")
    public static function ResetFixLight(?overrideChangeSpan:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.fB89110DC(overrideChangeSpan);
        return null;
    }

    @:hashAbi("S5159FC5C0487E94C")
    public static function FixLightWithPriority(?priority:Dynamic, ?lightFilePath:Dynamic, ?overrideChangeSpan:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f3F1A79C0(priority, lightFilePath, overrideChangeSpan);
        return null;
    }

    @:hashAbi("S1E715B361342182D")
    public static function ResetFixLightWithPriority(?priority:Dynamic, ?overrideChangeSpan:Dynamic):Dynamic
    {
        cppbindings.C5090F7B8.f6D9BBEDF(priority, overrideChangeSpan);
        return null;
    }

    @:hashAbi("SE4021CF82ADB36A1")
    public static function OpenQuestOrderUI(?questID:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f73457471(questID);
        return null;
    }

    @:hashAbi("S7C6342477C113CDA")
    public static function IsQuestOrderUIEnd():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f4E0B7834"]();
        
    }

    @:hashAbi("S314860B9DBA57F5B")
    public static function CloseQuestOrderUI():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fD83BF5C4"]();
        return null;
    }

    @:hashAbi("S69260EC87FF78C7B")
    public static function PlayQuestOrderUI(?questID:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f73457471(questID);
        main.event.ik.command.IkScriptCommand.Suspend();
        while (true)
        {
            if ((false != cppbindings.C56DE81E7.f4E0B7834()))
            {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        cppbindings.C56DE81E7.fD83BF5C4();
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("S51248BDF1B67BCDE")
    public static function OpenQuestAchievementUI(?questID:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fC37293E4(questID);
        return null;
    }

    @:hashAbi("SB82821BE9D13506F")
    public static function IsQuestAchievementUIEnd():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f3012DB94"]();
        
    }

    @:hashAbi("S7831690303D8E8A8")
    public static function CloseQuestAchievementUI():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f5B3EED2E"]();
        return null;
    }

    @:hashAbi("S4F4B59D57D004AC8")
    public static function PlayQuestAchievementUI(?questID:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fC37293E4(questID);
        main.event.ik.command.IkScriptCommand.Suspend();
        while (true)
        {
            if ((false != cppbindings.C56DE81E7.f3012DB94()))
            {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        cppbindings.C56DE81E7.f5B3EED2E();
        return null;
    }

    @:hashAbi("S729E9F8C776DCA95")
    public static function TerminateCafeObjAll():Dynamic
    {
        main.event.ik.CafeObjectManager.TerminateAll();
        return null;
    }

    @:hashAbi("S5EA40ABBCB815DD5")
    public static function WaitCreateCafeObjAll():Dynamic
    {
        main.event.ik.CafeObjectManager.WaitCreateAll();
        return null;
    }

    @:hashAbi("SE7448E48A195BB70")
    public static function VisibleCafeObjAll():Dynamic
    {
        main.event.ik.CafeObjectManager.VisibleAll();
        return null;
    }

    @:hashAbi("S92724BC797F17D2A")
    public static function CreateCafeDrink(?capType:Dynamic, ?pos:Dynamic, ?degree:Dynamic, ?arg3:Dynamic):Dynamic
    {
        if ((pos == null)) {
            pos = "";
        };
        var key:String = (Std.string((Std.string((Std.string("CreateCafeDrink_") + Std.string(capType))) + Std.string("_"))) + Std.string(pos));
        var executor:main.event.ik.CoroutineExecutor = new main.event.ik.CoroutineExecutor(function():Dynamic {
            main.event.ik.CafeObjectManager.CoCreateDrink(capType, pos, degree, arg3);
            return null;
        });
        main.event.ik.command.IkScriptCommand.SetUpdateList(key, function():Dynamic {
            if (lua.abi.Host.truthy(executor.Update())) {
                main.event.ik.command.IkScriptCommand.DelUpdateList(key);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("S0525FA9E50E44A42")
    public static function CreateCafeSnack(?snackType:Dynamic, ?pos:Dynamic, ?degree:Dynamic, ?arg3:Dynamic):Dynamic
    {
        if ((pos == null)) {
            pos = "";
        };
        var key:String = (Std.string((Std.string((Std.string("CreateCafeSnack_") + Std.string(snackType))) + Std.string("_"))) + Std.string(pos));
        var executor:main.event.ik.CoroutineExecutor = new main.event.ik.CoroutineExecutor(function():Dynamic {
            main.event.ik.CafeObjectManager.CoCreateSnack(snackType, pos, degree, arg3);
            return null;
        });
        main.event.ik.command.IkScriptCommand.SetUpdateList(key, function():Dynamic {
            if (lua.abi.Host.truthy(executor.Update())) {
                main.event.ik.command.IkScriptCommand.DelUpdateList(key);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("SF760D1D3E2535246")
    public static function FObj_Falling(?targetName:Dynamic, ?downValue:Float, ?time:Float, ?easing:Dynamic, ?optinalOffsetX:Float, ?optinalOffsetZ:Float):Dynamic
    {
        var key:String = (Std.string("Falling_") + Std.string(targetName));
        var executor:main.event.ik.CoroutineExecutor = new main.event.ik.CoroutineExecutor(function():Dynamic {
            var accessor:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(targetName);
            if ((accessor == null)) {
                return null;
            };
            var object:StdTypes.Null<cppbindings.C016374C1> = accessor.fEBA8F794();
            if ((object == null)) {
                return null;
            };
            var start:lua.Table<Int, Float> = ({
                var v:cppbindings.Vec3 = accessor.f7360ED03();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            });
            var target:lua.Table<Int, Float> = ((lua.Table.create(([((cast start)[1] + (0 * downValue)), ((cast start)[2] + (-1 * downValue)), ((cast start)[3] + (0 * downValue))] : Array<Float>))));
            if ((optinalOffsetX != null)) {
                var left:lua.Table<Int, Float> = ({
                    var _this:cppbindings.CD5675BA5 = accessor.f64857644();
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([-1, 0, 0] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = _this.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues7:lua.Table<Int, Float>;
                            vectorValues7 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues7);
                        };
                    };
                });
                var offsetX:StdTypes.Float = ((cast left)[1] * optinalOffsetX);
                var offsetY:StdTypes.Float = ((cast left)[2] * optinalOffsetX);
                var offsetZ:StdTypes.Float = ((cast left)[3] * optinalOffsetX);
                target = ((lua.Table.create(([((cast target)[1] + offsetX), ((cast target)[2] + offsetY), ((cast target)[3] + offsetZ)] : Array<Float>))));
            };
            if ((optinalOffsetZ != null)) {
                var forward:lua.Table<Int, Float> = ({
                    var _this:cppbindings.CD5675BA5 = accessor.f64857644();
                    var v:lua.Table<Int, Float> = ((lua.Table.create(([0, 0, 1] : Array<Float>))));
                    {
                        var v:cppbindings.Vec3 = _this.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues13:lua.Table<Int, Float>;
                            vectorValues13 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues13);
                        };
                    };
                });
                var offsetX:StdTypes.Float = ((cast forward)[1] * optinalOffsetZ);
                var offsetY:StdTypes.Float = ((cast forward)[2] * optinalOffsetZ);
                var offsetZ:StdTypes.Float = ((cast forward)[3] * optinalOffsetZ);
                target = ((lua.Table.create(([((cast target)[1] + offsetX), ((cast target)[2] + offsetY), ((cast target)[3] + offsetZ)] : Array<Float>))));
            };
            var hit:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.TryGetHitRayPos(start, target);
            if ((hit != null)) {
                (cast target)[2] = (cast hit)[2];
                main.util.StrUtil.FormatVec3((cast hit));
                main.util.StrUtil.FormatVec3((cast target));
            };
            var tween:main.util.tween.TweenUtil = new main.util.tween.TweenUtil(object);
            var completed:StdTypes.Bool = false;
            var configured:main.util.tween.TweenUtil = tween.SimpleValue(time);
            configured = configured.SetEase(easing);
            configured = configured.OnUpdate(function(output:Dynamic):StdTypes.Void {
                var progress:main.util.tween.TweenOutputParam = output;
                var position:lua.Table<Int, Float> = ({
                    var t:StdTypes.Float = progress.value_n;
                    {
                        var v:cppbindings.Vec3 = cppbindings.C7A48E3FC.f74C1A5DE((cast start)[1], (cast start)[2], (cast start)[3], (cast target)[1], (cast target)[2], (cast target)[3], t);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues17:lua.Table<Int, Float>;
                            vectorValues17 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues17);
                        };
                    };
                });
                if ((object != null)) {
                    {
                        {
                            object.f8F2B0552((cast position)[1], (cast position)[2], (cast position)[3]);
                        };
                        position;
                    };
                };
            });
            configured.OnComplete(function():StdTypes.Void {
                completed = true;
            });
            while (!completed) {
                tween.TweenUpdateNoJobContext();
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            return null;
        });
        var coroutines:Array<main.event.ik.CoroutineExecutor> = main.event.ik.command.IkScriptCommand.fallingCoroutines;
        coroutines.push(executor);
        main.event.ik.command.IkScriptCommand.SetUpdateList(key, function():Dynamic {
            if (lua.abi.Host.truthy(executor.Update())) {
                main.event.ik.command.IkScriptCommand.DelUpdateList(key);
            };
            return null;
        });
        return null;
    }

    @:hashAbi("S60D1A6C26DC60660")
    public static function SetupAnimationPictureUI():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f97830769"]();
        return null;
    }

    @:hashAbi("S0C889B0614DAE5F2")
    public static function ShowAnimationPictureUI(?frame:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fF5CA0988(frame);
        return null;
    }

    @:hashAbi("SE16F9AAA6D1CE9D7")
    public static function HideAnimationPictureUI(?frame:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fB4DA9126(frame);
        return null;
    }

    @:hashAbi("SAD9F0CB436B6664F")
    public static function ExitAnimationPictureUI():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f32017ACA"]();
        return null;
    }

    @:hashAbi("SAD33B0A0AA0F4252")
    public static function WaitLoadingAnimationPictureUI():Dynamic
    {
        var ready = cppbindings.C56DE81E7.fD1002D93();
        if (ready == null)
        {
            return null;
        }
        while (!lua.abi.Host.truthy(ready))
        {
            Suspend();
            ready = cppbindings.C56DE81E7.fD1002D93();
            if (ready == null)
            {
                return null;
            }
        }
        return null;
    }

    @:hashAbi("SFF703E5F7D9E37F2")
    public static function WaitFallingAll():Dynamic
    {
        var coroutines:Array<main.event.ik.CoroutineExecutor> = fallingCoroutines;
        for (coroutine in coroutines)
        {
            while (!lua.abi.Host.truthy(coroutine.IsFinished()))
            {
                Suspend();
            }
        }
        return null;
    }

    @:hashAbi("SED24081F313B33A9")
    public static function TryGetHitRayPos(?startPos:Dynamic, ?endPos:Dynamic):Dynamic
    {
        var flags:cppbindings.CA915E6CD = ({
            var vectorValues:cppbindings.CA915E6CD;
            vectorValues = cppbindings.CA915E6CD.f7AC1FE6B((cast 8));
            cast (cast vectorValues);
        });
        flags.fC71B3CED(({
            var vectorValues2:cppbindings.CA915E6CD;
            vectorValues2 = cppbindings.CA915E6CD.f7AC1FE6B((cast 2));
            cast (cast vectorValues2);
        }));
        var result:cppbindings.C44E7275D = cppbindings.C44E7275D.f101D811F();
        var begin:lua.Table<Int, Float> = startPos;
        var end:lua.Table<Int, Float> = endPos;
        if (({
            var count:StdTypes.Int = 1;
            var option:StdTypes.Null<cppbindings.CA915E6CD> = flags;
            if ((count == null)) count = 1;
            if ((option == null)) {
                option = (cast ({
                    var vectorValues3:cppbindings.CA915E6CD;
                    vectorValues3 = cppbindings.CA915E6CD.f0DC6CEFD();
                    cast (cast vectorValues3);
                }));
            };
            cppbindings.C98FA6616.fD324515F(result, (cast begin)[1], (cast begin)[2], (cast begin)[3], (cast end)[1], (cast end)[2], (cast end)[3], count, (cast (cast option)), function(_:cppbindings.CA877D16F):StdTypes.Bool {
                return true;
            });
        })) {
            return ({
                var v:cppbindings.Vec3 = result.f1B877572();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues4:lua.Table<Int, Float>;
                    vectorValues4 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues4);
                };
            });
        };
        return null;
    }

    @:hashAbi("S8934683CEEE09176")
    public static function GetNpcObjectTemplateId(?npcID:Dynamic):Dynamic
    {
        return (cast(cppbindings.C56DE81E7.fD7C5FCA6(npcID), StdTypes.Int));
    }

    @:hashAbi("S3CCE4A4A5317D775")
    public static function RequestCreatePartnerPoke(?npcId:Dynamic, ?memberIndex:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f91DFCF09(npcId, memberIndex);
    }

    @:hashAbi("SE1E8BB45DD2B7176")
    public static function RequestCreateMemberTopPartnerPoke(?npcId:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f65EA2E1A(npcId);
    }

    @:hashAbi("SD9AE9CE2E6F55F54")
    public static function RequestCreatePartnerPokeForce(?npcId:Dynamic, ?memberIndex:Dynamic, ?createPos:Dynamic, ?createRot:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f9D733A03(npcId, memberIndex, untyped createPos[1], untyped createPos[2], untyped createPos[3], createRot);
    }

    @:hashAbi("S84EC1AC2002EF2FD")
    public static function RequestCreateMemberTopPartnerPokeForce(?npcId:Dynamic, ?createPos:Dynamic, ?createRot:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f8680F2CE(npcId, untyped createPos[1], untyped createPos[2], untyped createPos[3], createRot);
    }

    @:hashAbi("SC848E0DB4077BB9A")
    public static function IsActivePartnerPoke(?npcId:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f1C158B3C(npcId);
    }

    @:hashAbi("S5795AB89250809E9")
    public static function WaitActivePartnerPoke(?npcId:Dynamic):Dynamic
    {
        main.event.ik.command.IkScriptCommand.Suspend();
        while (true)
        {
            if ((false != main.event.ik.command.IkScriptCommand.IsActivePartnerPoke(npcId)))
            {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("S927E29FD612DC77A")
    public static function ReturnPartnerPoke():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fFD7D21C0"]();
        return null;
    }

    @:hashAbi("S794ADABE99231A39")
    public static function MegaStoneItemGetWindow(?ItemID:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f4D49A697(ItemID);
        return null;
    }

    @:hashAbi("S6BA5E54C28F16B8C")
    public static function Wait_End_ItemWindow():Dynamic
    {
        while (true)
        {
            if ((false != cppbindings.C56DE81E7.f560CF7F8()))
            {
                break;
            }
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return null;
    }

    @:hashAbi("SEE905495075C8BCA")
    public static function Wait_End_MegaStoneWindow():Dynamic
    {
        while (true)
        {
            if ((false != cppbindings.C56DE81E7.fCF7FE02D()))
            {
                break;
            }
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return null;
    }

    @:hashAbi("S960F971B4CAA5C61")
    public static function ShowImportantItemWindow(?itemID:Dynamic, ?isPlaySE:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fDE8F3486(itemID, isPlaySE);
        return null;
    }

    @:hashAbi("S3419F5121A4F2DF4")
    public static function Wait_End_ImportantItemWindow():Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(untyped (lua.abi.Host.global("c56DE81E7"))["f5CB9723C"]()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return null;
    }

    @:hashAbi("SA6D15A08C35C1696")
    public static function GetLastFailedCapturePokeName():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fC4AD34C4"]("BOOT_CONDITION_FAILED_CAPTURE", 1);
        
    }

    @:hashAbi("SA618CEA1C10F1279")
    public static function GetLastInteractObjectName(?conditionName:Dynamic):Dynamic
    {
        var condition = conditionName != null ? conditionName : "";
        return cppbindings.C56DE81E7.f13E4B6DA(condition);
    }

    @:hashAbi("S90B78659D73598E7")
    public static function GetPokemonCount_All():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fAACD53FE"]();
        
    }

    @:hashAbi("S9868A759DB4A5D55")
    public static function GetPokemonCount_Box():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f817B0347"]();
        
    }

    @:hashAbi("SE3AC6F9E0D4E8B40")
    public static function GetPokemonCount_Party():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fE96FB14A"]();
        
    }

    @:hashAbi("S2FAD325B197B1067")
    public static function GetSelectPokemonCount_All(?pokeID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f4CC66F7D(pokeID);
    }

    @:hashAbi("S375E535B1D8FD4D5")
    public static function GetSelectPokemonCount_Box(?pokeID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f45115A4C(pokeID);
    }

    @:hashAbi("S9CA99E2032652EC0")
    public static function GetSelectPokemonCount_Party(?pokeID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f0A3748B6(pokeID);
    }

    @:hashAbi("SB236A6C9E084B3FF")
    public static function GetSelectItemCount(?ItemID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.fF2F45F01(ItemID);
    }

    @:hashAbi("S87ACE10981A6AD71")
    public static function GetSelectItemCount_Int(?ItemID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f85F36F97(ItemID);
    }

    @:hashAbi("SEEA1AB846256E00F")
    public static function GetNumberOfRegisteredBooks():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f1FF1D3E3"]();
        
    }

    @:hashAbi("S6491D9A944D7F5D7")
    public static function GetNumberOfDiscovery():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fEE49924B"]();
        
    }

    @:hashAbi("S8F3CEB73890F3A9E")
    public static function CheckPossibleAddPpokemon():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f1704B511"]();
        
    }

    @:hashAbi("S0FDEB1E75041686E")
    public static function CharacterDressup(?category_num:Dynamic, ?label_name:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fACAF84DB(category_num, label_name, false);
        return null;
    }

    @:hashAbi("S3F58656C2713D62B")
    public static function CharacterDressupSave():Dynamic
    {
        while (true)
        {
            if ((false != cppbindings.C56DE81E7.fD5373C95()))
            {
                break;
            }
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        cppbindings.C56DE81E7.fDD33BDDC();
        return null;
    }

    public static function SAF4C948ABBCA57BD(?arg0:Dynamic):Dynamic
    {
        if (null == arg0)
        {
            arg0 = 2;
        };
        main.event.ik.command.IkScriptCommand.SetWordSet(arg0, "cafe", event_ik.CafeEvent.SD1E173D038A8A741());
        return null;
    }

    public static function SD2AE862C72EB9FF7(?arg0:Dynamic):Dynamic
    {
        event_ik.CafeEvent.SB9A64EB32898651B({drinkType: 0, menuIndex: arg0});
        return null;
    }

    @:hashAbi("S8861E9196E180852")
    public static function StartItemGetSequenceAuto(?isPlaySound:Dynamic, ?isShowWindow:Dynamic):Dynamic
    {
        if (isShowWindow == null)
        {
            isShowWindow = true;
        }
        if (isPlaySound == null)
        {
            isPlaySound = true;
        }
        var item:Dynamic = cppbindings.C56DE81E7.f083D5B9E();
        if (item == null)
        {
            return false;
        }
        var itemId = item.f0562A11A();
        var count = item.f5A484C47();
        return StartItemGetSequence(itemId, count, isPlaySound, isShowWindow);
    }

    @:hashAbi("S6DCE2895AC79F359")
    public static function StartItemGetSequence(?itemID:Dynamic, ?addNum:Dynamic, ?isPlaySound:Dynamic, ?isShowWindow:Dynamic, ?isCheckSuccessAdd:Dynamic):Dynamic
    {
        if (isCheckSuccessAdd == null)
        {
            isCheckSuccessAdd = false;
        }
        if (isShowWindow == null)
        {
            isShowWindow = true;
        }
        if (isPlaySound == null)
        {
            isPlaySound = true;
        }
        var resource = TextResourceManager.GetTextResourcePath("script/fld_item");
        TextResourceManager.LoadTextResource(resource);
        while (!lua.abi.Host.truthy(TextResourceManager.IsCompleteLoadingTextResource(resource)))
        {
            Suspend();
        }
        var label = cppbindings.C56DE81E7.fBF0F5853(itemID, addNum);
        cppbindings.C56DE81E7.f2EE259FC(itemID, addNum);
        if (lua.abi.Host.truthy(isPlaySound))
        {
            cppbindings.C56DE81E7.fA68E6EA3(itemID);
        }
        ShowMessageWindow(2, label, "fld_item");
        HideMessageWindow();
        if (lua.abi.Host.truthy(isShowWindow))
        {
            var windowType = cppbindings.C56DE81E7.fBC92DC7F(itemID);
            if (windowType == 1)
            {
                ShowImportantItemWindow(itemID, false);
                Wait_End_ImportantItemWindow();
            }
            else if (windowType == 2)
            {
                MegaStoneItemGetWindow(itemID);
                Wait_End_MegaStoneWindow();
            }
            else
            {
                cppbindings.C56DE81E7.f7F69CB01(itemID, false);
                Wait_End_ItemWindow();
            }
        }
        TextResourceManager.UnloadTextResource("script/fld_item");
        return true;
    }

    @:hashAbi("SD0EA6548C18156B9")
    public static function AddDressupItem(?category:Dynamic, ?itemId:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fCBC3B352(category, itemId);
        return null;
    }

    @:hashAbi("S745047743935C336")
    public static function GetUnitParamInPartyByDevNo(?devNo:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if ((arg1 == null)) {
            arg1 = 0;
        };
        var count:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        for (index in (new IntIterator(0, count))) {
            var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
            if ((((pokemon != null) && !pokemon.fCE2A7CF8((cast 2))) && (pokemon.f0DE6FCA9() == devNo))) {
                if (((arg1 == 0) || ({
                    var b:UInt = pokemon.fA8FAC6B9();
                    (cast (cast arg1)) == b;
                }))) {
                    return pokemon;
                };
            };
        };
        return null;
    }

    @:hashAbi("SDFFF26DA72050DC9")
    public static function IsRareInPartyByDevNo(?devNo:Dynamic):Dynamic
    {
        if ((devNo == null)) {
            devNo = 0;
        };
        var count:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
                if ((((pokemon != null) && ((pokemon.f0DE6FCA9() == devNo) || (devNo == 0))) && pokemon.fA284DF88())) {
                    return true;
                };
            };
        };
        return false;
    }

    @:hashAbi("S2115CD3366C0DDA5")
    @:analyzer(no_local_dce)
    public static function GetPlayerPartyUnitParam(?index:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if ((arg1 == null)) {
            arg1 = true;
        };
        var player:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        if ((player == null)) {
            return null;
        };
        var party:cppbindings.CF6FC4F7D = untyped (cast player : Dynamic).fA1DE81A4();
        if ((party == null)) {
            return null;
        };
        var partyAccess:Dynamic = party;
        var count:Dynamic = untyped (cast partyAccess : Dynamic).f5BFC43FB();
        var indexIsNegative:StdTypes.Bool = (index < 0);
        var outOfRange:StdTypes.Bool = (if ((indexIsNegative != (count < 0))) {
            indexIsNegative;
        } else {
            index >= count;
        });
        if (outOfRange) {
            if (lua.abi.Host.truthy(arg1)) {
                var logText:String;
                if ((index == null)) {
                    logText = "null";
                } else {
                    var unsignedIndex:UInt = index;
                    var promotedIndex:StdTypes.Float = ({
                        var int:StdTypes.Int = (cast (cast unsignedIndex));
                        if ((int < 0)) {
                            4294967296.0 + int;
                        } else {
                            int + 0.0;
                        };
                    });
                    logText = Std.string(promotedIndex);
                };
            };
            return null;
        };
        var pokemon:StdTypes.Null<cppbindings.CDB937D14> = party.f701A6236(index);
        while (true) {
            if ((pokemon == null)) {
                return null;
            };
            if (!pokemon.fCE2A7CF8((cast 2))) {
                break;
            };
            index += 1;
            indexIsNegative = (index < 0);
            outOfRange = (if ((indexIsNegative != (count < 0))) {
                indexIsNegative;
            } else {
                index >= count;
            });
            if (outOfRange) {
                return null;
            };
            pokemon = party.f701A6236(index);
        };
        return pokemon;
    }

    @:hashAbi("S141410777686611C")
    @:analyzer(no_local_dce)
    public static function RemovePlayerParty(?index:Dynamic):Dynamic
    {
        var player:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        if ((player == null)) {
            return null;
        };
        var party:cppbindings.CF6FC4F7D = untyped (cast player : Dynamic).fA1DE81A4();
        if ((party == null)) {
            return null;
        };
        var partyAccess:Dynamic = party;
        var count:Dynamic = untyped (cast partyAccess : Dynamic).f5BFC43FB();
        var indexIsNegative:StdTypes.Bool = (index < 0);
        var outOfRange:StdTypes.Bool = (if ((indexIsNegative != (count < 0))) {
            indexIsNegative;
        } else {
            index >= count;
        });
        if (outOfRange) {
            var logText:String;
            if ((index == null)) {
                logText = "null";
            } else {
                var unsignedIndex:UInt = index;
                var promotedIndex:StdTypes.Float = ({
                    var int:StdTypes.Int = (cast (cast unsignedIndex));
                    if ((int < 0)) {
                        4294967296.0 + int;
                    } else {
                        int + 0.0;
                    };
                });
                logText = Std.string(promotedIndex);
            };
            return null;
        };
        party.fD87062B6(index);
        return null;
    }

    @:hashAbi("SF08530192E2FB344")
    public static function IsFullHPAndPPAtParty():Dynamic
    {
        var count:Int = GetPokemonCount_Party();
        for (index in 0...count)
        {
            if (!IsFullHPAndPP(index))
            {
                return false;
            }
        }
        return true;
    }

    @:hashAbi("S84ECE1BC4B1BAB3D")
    public static function IsFullHPAndPP(?index:Dynamic):Dynamic
    {
        if ((null == index))
        {
            index = 0;
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsFullHP(index)))
        {
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsFullPP(index)))
            {
                return !lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.SEBE66699E5CF6917(index));
            };
        }
        else
        {
            return false;
        };
        return null;
    }

    public static function SBEB16EDBB5FF365F():Dynamic
    {
        var player:StdTypes.Null<{ public var fA1DE81A4(default, null) : Dynamic; }> = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        if ((player == null)) {
            return null;
        };
        var party:cppbindings.CF6FC4F7D = player.fA1DE81A4();
        if ((party == null)) {
            return null;
        };
        var count:StdTypes.Int = untyped (cast party : Dynamic).f5BFC43FB();
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var pokemon:StdTypes.Null<cppbindings.CDB937D14> = party.f701A6236(index);
                if (((pokemon != null) && !pokemon.fCE2A7CF8((cast 2)))) {
                    return index;
                };
            };
        };
        return null;
    }

    @:hashAbi("SF300D070153D6E34")
    @:analyzer(no_local_dce)
    public static function IsFullHP(?index:Dynamic):Dynamic
    {
        if ((index == null)) {
            index = 0;
        };
        var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
        if ((pokemon == null)) {
            var logText:String;
            if ((index == null)) {
                logText = "null";
            } else {
                var unsignedIndex:UInt = index;
                var promotedIndex:StdTypes.Float = ({
                    var int:StdTypes.Int = (cast (cast unsignedIndex));
                    if ((int < 0)) {
                        4294967296.0 + int;
                    } else {
                        int + 0.0;
                    };
                });
                logText = Std.string(promotedIndex);
            };
            return false;
        };
        return pokemon.fB50137EC();
    }

    @:hashAbi("SF351C0701581AA2C")
    @:analyzer(no_local_dce)
    public static function IsFullPP(?index:Dynamic):Dynamic
    {
        if ((index == null)) {
            index = 0;
        };
        var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
        if ((pokemon == null)) {
            var logText:String;
            if ((index == null)) {
                logText = "null";
            } else {
                var unsignedIndex:UInt = index;
                var promotedIndex:StdTypes.Float = ({
                    var int:StdTypes.Int = (cast (cast unsignedIndex));
                    if ((int < 0)) {
                        4294967296.0 + int;
                    } else {
                        int + 0.0;
                    };
                });
                logText = Std.string(promotedIndex);
            };
            return false;
        };
        return true;
    }

    @:analyzer(no_local_dce)
    public static function SEBE66699E5CF6917(?arg0:Dynamic):Dynamic
    {
        if ((arg0 == null)) {
            arg0 = 0;
        };
        var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(arg0);
        if ((pokemon == null)) {
            var logText:String;
            if ((arg0 == null)) {
                logText = "null";
            } else {
                var unsignedIndex:UInt = arg0;
                var promotedIndex:StdTypes.Float = ({
                    var int:StdTypes.Int = (cast (cast unsignedIndex));
                    if ((int < 0)) {
                        4294967296.0 + int;
                    } else {
                        int + 0.0;
                    };
                });
                logText = Std.string(promotedIndex);
            };
            return false;
        };
        return pokemon.f749DB06F();
    }

    @:hashAbi("S5EF6680784F163B1")
    public static function PlayRankUpSequence(?rank:Dynamic, ?label:Dynamic, ?mstxt:Dynamic, ?isHideMessage:Dynamic):Dynamic
    {
        if ((isHideMessage == null)) {
            isHideMessage = true;
        };
        var demo:String = (if ((rank == 1)) {
            "sd9171_rankup_up";
        } else {
            "sd9170_rankup_normal";
        });
        var path:String = (((("ik_demo/sd/" + demo) + "/") + demo) + ".trtml");
        cppbindings.C05D9A855.f635E7B9C(path, "startup", false);
        while (!lua.abi.Host.truthy(cppbindings.C05D9A855.f08FA26F1())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        cppbindings.C05D9A855.f40B8C6B1();
        while (!lua.abi.Host.truthy(cppbindings.C05D9A855.f59D006EE())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        cppbindings.C05D9A855.fB051DFDA();
        return null;
    }

    @:hashAbi("S37AFE2EC26B5A468")
    public static function ChangeCharaCre(?obj:Dynamic, ?label:Dynamic):Dynamic
    {
        var component:StdTypes.Null<cppbindings.CC05A2C1B> = cppbindings.CC05A2C1B.fB41FD22F(obj);
        if ((component == null)) {
            untyped (cast obj : Dynamic).fE9C29DA1();
            return null;
        };
        var selected:StdTypes.Null<StdTypes.Int> = null;
        var count:StdTypes.Int = component.f10BADC20(0);
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                if ((label == component.f46A28740(0, index))) {
                    selected = index;
                    break;
                };
            };
        };
        if ((selected == null)) {
            return null;
        };
        component.f0EF10D0C(0, selected);
        main.event.ik.command.IkScriptCommand.Suspend();
        while (((component.f4F98916F() || !component.f33A1A337()) || (component.fA3454B11() == (cast 0)))) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    public static function S33E0512CB7CFA6A7(?arg0:Dynamic):Dynamic
    {
        if ((null == arg0)) {
            arg0 = false;
        };
        if (lua.abi.Host.truthy(arg0)) {
            cppbindings.C05D9A855.f635E7B9C("ik_demo/ee/ee311_rival/ee311_rival.trtml", "startup", false);
        } else {
            cppbindings.C05D9A855.f635E7B9C("ik_demo/ee/ee311/ee311.trtml", "startup", false);
        };
        return null;
    }

    @:hashAbi("SA15EBE34EEFFECB4")
    public static function PlayRankUpBattleRotomTimeline(?enemyPhoneLabel:Dynamic):Dynamic
    {
        if ((enemyPhoneLabel == null)) {
            enemyPhoneLabel = "";
        };
        while (!lua.abi.Host.truthy(cppbindings.C05D9A855.f08FA26F1())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        if ((enemyPhoneLabel != "")) {
            var object:StdTypes.Null<cppbindings.C3FB42236> = cppbindings.C05D9A855.f08BF29D9("ob0004_02");
            if ((object != null)) {
                var sceneObject:StdTypes.Null<cppbindings.C016374C1> = cppbindings.C016374C1.f9F601543(object);
                var parent:StdTypes.Null<StdTypes.Null<cppbindings.C016374C1>> = (if ((sceneObject != null)) {
                    sceneObject.f5B268E4E();
                } else {
                    null;
                });
                if ((parent != null)) {
                    cppbindings.C56DE81E7.f6B424405(object, 0);
                    cppbindings.C56DE81E7.f6B424405(parent, 0);
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                main.event.ik.command.IkScriptCommand.ChangeCharaCre(object, enemyPhoneLabel);
            };
        };
        cppbindings.C05D9A855.f40B8C6B1();
        while (!lua.abi.Host.truthy(cppbindings.C05D9A855.f59D006EE())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        cppbindings.C05D9A855.fB051DFDA();
        return null;
    }

    @:hashAbi("S17938F88684A22B3")
    public static function PlayAdventRotomSequence(?player:Dynamic, ?enemy:Dynamic, ?enemyPhoneLabel:Dynamic, ?arg3:Dynamic):Dynamic
    {
        if (null == arg3)
        {
            arg3 = false;
        };
        if (null == enemyPhoneLabel)
        {
            enemyPhoneLabel = "";
        };
        main.event.ik.command.IkScriptCommand.S33E0512CB7CFA6A7(arg3);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(enemy, enemyPhoneLabel);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(player);
        main.event.ik.command.IkScriptCommand.StartAdventAnimeRotomPhone(enemy);
        main.event.ik.command.IkScriptCommand.StartAdventAnimeRotomPhone(player);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToStartAdvent(enemy);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToStartAdvent(player);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneEndAdvent(enemy);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneEndAdvent(player);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpBattleRotomTimeline(enemyPhoneLabel);
        return null;
    }

    @:hashAbi("S86D3A583FA57859A")
    public static function PlayAdventRotomSequenceForKanary(?player:Dynamic, ?enemy:Dynamic, ?enemyPhoneLabel:Dynamic):Dynamic
    {
        cppbindings.C05D9A855.f635E7B9C("ik_demo/ee/ee311/ee311.trtml", "startup", false);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(player);
        while (!cppbindings.C05D9A855.f08FA26F1()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var enemyPhone:StdTypes.Null<cppbindings.C3FB42236> = cppbindings.C05D9A855.f08BF29D9("ob0004_02");
        if ((enemyPhone != null)) {
            var sceneObject:StdTypes.Null<cppbindings.C016374C1> = cppbindings.C016374C1.f9F601543(enemyPhone);
            var parent:StdTypes.Null<StdTypes.Null<cppbindings.C016374C1>> = (if ((sceneObject == null)) {
                null;
            } else {
                sceneObject.f5B268E4E();
            });
            if ((parent != null)) {
                cppbindings.C56DE81E7.f6B424405(enemyPhone, 0);
                cppbindings.C56DE81E7.f6B424405(parent, 0);
                main.event.ik.command.IkScriptCommand.Suspend();
            };
            var changeCharacter:() -> StdTypes.Void = function():StdTypes.Void {
                var component:StdTypes.Null<cppbindings.CC05A2C1B> = cppbindings.CC05A2C1B.fB41FD22F(enemyPhone);
                if ((component == null)) {
                    enemyPhone.fE9C29DA1();
                    return;
                };
                var count:StdTypes.Int = component.f10BADC20(0);
                {
                    var arrayIndex:StdTypes.Int = 0;
                    var arrayIndex2:StdTypes.Int = count;
                    while ((arrayIndex < arrayIndex2)) {
                        var index:StdTypes.Int = arrayIndex++;
                        if ((enemyPhoneLabel == component.f46A28740(0, index))) {
                            component.f0EF10D0C(0, index);
                            return;
                        };
                    };
                };
            };
            changeCharacter();
        };
        main.event.ik.command.IkScriptCommand.StartAdventAnimeRotomPhone(player);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(enemy, 345);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToStartAdvent(player);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneEndAdvent(player);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        if ((enemyPhone != null)) {
            var component:StdTypes.Null<cppbindings.CC05A2C1B> = cppbindings.CC05A2C1B.fB41FD22F(enemyPhone);
            if ((component != null)) {
                while (((component.f4F98916F() || !component.f33A1A337()) || (component.fA3454B11() == (cast 0)))) {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
            };
            cppbindings.C05D9A855.f40B8C6B1();
            while (!cppbindings.C05D9A855.f59D006EE()) {
                main.event.ik.command.IkScriptCommand.Suspend();
            };
        };
        cppbindings.C05D9A855.fB051DFDA();
        return null;
    }

    @:hashAbi("SFF24333D7EBD82E4")
    public static function TryConvertDynamicNpcIdToDataKey(?targetId:Dynamic):Dynamic
    {
        if (targetId == null)
        {
            return "";
        }
        var dynamicNpcs:haxe.ds.StringMap<Dynamic> = DynamicCreateNpcMap;
        if (!dynamicNpcs.exists(targetId))
        {
            return "";
        }
        dynamicNpcs = DynamicCreateNpcMap;
        var dataKey = dynamicNpcs.get(targetId);
        return dataKey == null ? "" : dataKey;
    }

    @:hashAbi("SB11B28EBCA876E61")
    public static function SetMegaRingTag():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f06C2A570"]();
        return null;
    }

    @:hashAbi("S6146C312DFB1A043")
    public static function SetBirthday_month():Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(untyped (lua.abi.Host.global("c48A87011"))["fC9B7396E"]()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return untyped (lua.abi.Host.global("c48A87011"))["f12C112C3"]();
        
    }

    @:hashAbi("SAFD859A856B16003")
    public static function SetBirthday_day():Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(untyped (lua.abi.Host.global("c48A87011"))["f7FFFF5B7"]()))
            {
                break;
            }
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        return untyped (lua.abi.Host.global("c48A87011"))["f4A824C42"]();
        
    }

    @:hashAbi("S0F89BDEF6ADB3CA9")
    public static function SaveBirthday(?month:Dynamic, ?day:Dynamic):Dynamic
    {
        cppbindings.C48A87011.fD5AEFF1C(month, day);
        return null;
    }

    @:hashAbi("SBF57F88143F2FA9C")
    public static function ShowFirstPokeDex():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f1D8BAD55"]();
        return null;
    }

    @:hashAbi("SD6370F0EBCFAA3BE")
    public static function SetMonsterBallTag(?balltype:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fEA005F41(balltype);
        return null;
    }

    @:hashAbi("SD4817D1C1FD8DDED")
    public static function ReSetMonsterBallTag(?balltype:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fB496DFB1(balltype);
        return null;
    }

    @:hashAbi("S2A49181944FD9E5D")
    public static function AddTagCommon(?target:Dynamic, ?tag:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f4A209815(target, tag);
        return null;
    }

    @:hashAbi("S4621A84C0626D50A")
    public static function RemoveTagCommon(?target:Dynamic, ?tag:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f2834957E(target, tag);
        return null;
    }

    @:hashAbi("S538C66F170045C2C")
    public static function AddBousouAuraTag(?target:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f4A209815(target, "Heat1_Aura");
        return null;
    }

    public static function SD3B4BEF35117C82F(?arg0:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f2834957E(arg0, "Heat1_Aura");
        return null;
    }

    public static function S51E5BD1C2BEB6DE8(?arg0:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f4A209815(arg0, "EventSleepLoop");
        return null;
    }

    public static function S64149648456544DF(?arg0:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f2834957E(arg0, "EventSleepLoop");
        return null;
    }

    public static function SB70BF7116F3080EE(?arg0:Dynamic):Dynamic
    {
        if (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f4C7B9250(arg0))) {
            return null;
        };
        var key:String = (Std.string(arg0) + Std.string("AddChrLimitPriorityTag"));
        var updates:haxe.ds.StringMap<Dynamic> = main.event.ik.command.IkScriptCommand.UpdateList;
        if (!updates.exists(key)) {
            main.event.ik.command.IkScriptCommand.SetUpdateList(key, function():Dynamic {
                cppbindings.C56DE81E7.f1A6F515E(arg0);
                return null;
            });
        };
        return null;
    }

    public static function SB54DBC4F41BBBCDD(?arg0:Dynamic):Dynamic
    {
        var key = Std.string(arg0) + Std.string("AddChrLimitPriorityTag");
        var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
        if (updates.exists(key))
        {
            DelUpdateList(key);
        }
        return null;
    }

    @:hashAbi("S5AAC7C1D2412644D")
    public static function CommunicationExchangeDemo(?outPoke:Dynamic, ?inPokeId:Dynamic, ?name:Dynamic, ?arg3:Dynamic):Dynamic
    {
        if ((arg3 == null)) {
            arg3 = "";
        };
        if ((name == null)) {
            name = "";
        };
        if ((inPokeId == null)) {
            inPokeId = "";
        };
        var position:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.FObj_Get_Pos("Player");
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle("Player");
        var mapName:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetCurrentMapName();
        cppbindings.C56DE81E7.f335D2D65(outPoke, inPokeId, name, arg3);
        while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.fE3858066())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.EventMapChange(mapName, (cast position)[1], (cast position)[2], (cast position)[3], 0, angle, 0);
        return null;
    }

    @:hashAbi("SB218F3D1C310D571")
    public static function ClearLostBallList():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f7277E80D"]();
        return null;
    }

    @:hashAbi("S9EBAAE1004AC05F2")
    public static function GetLostBallListMax():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fCF7D6FA1"]();
        
    }

    @:hashAbi("SF32E1A3CAD152248")
    public static function GetLostBallItemBallMax():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fAA49C357"]();
        
    }

    @:hashAbi("SB0C8EEC2E8A7351B")
    public static function GetLostBallItemData(?index:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.fE8797073(index);
    }

    @:hashAbi("S8D33065547D7EEC8")
    public static function RegisterLostBallItemData():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fBE014B0C"]();
        return null;
    }

    @:hashAbi("SB01A9B29CD4CC6CB")
    public static function AddItem(?ItememID:Dynamic, ?Count:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f2A984CB6(ItememID, Count);
        return null;
    }

    public static function S17D266FFC93302D7(?arg0:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f6D4912BC(arg0);
        return null;
    }

    public static function S7E0B89E16EFD2224(?arg0:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.fDE92C752(arg0);
    }

    @:hashAbi("S5DF104B25CC642C7")
    public static function ItemIdtoString(?ItememID:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f38DA9270(ItememID);
    }

    public static function S6F661D1718C5D7E9(?arg0:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f4CBAB93F(arg0);
    }

    @:hashAbi("S9EA052B577EE61F5")
    public static function ShakePostEvent(?eventName:Dynamic):Dynamic
    {
        return main.event.ik.command.IkScriptCommand.PostEventGlobal(eventName);
    }

    @:hashAbi("SEFDF2244E6BCC070")
    public static function StopShakeID(?playingId:Dynamic, ?fadeTime:Dynamic):Dynamic
    {
        if ((null == fadeTime))
        {
            fadeTime = 0;
        };
        return main.event.ik.command.IkScriptCommand.StopPlayingID(playingId, fadeTime);
    }

    @:hashAbi("SB012637B681B46E6")
    public static function WaitShake(?playingId:Dynamic):Dynamic
    {
        while (lua.abi.Host.truthy(true))
        {
            if (lua.abi.Host.truthy(!lua.abi.Host.truthy(untyped main.event.ik.command.IkScriptCommand.IsActivePlayingId(playingId))))
            {
                break;
            };
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("S97AFBD6BD23C86F4")
    public static function DisableAutoSleepMode():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f665EF12A"]();
        return null;
    }

    @:hashAbi("SD4D5A49465C77157")
    public static function EnableAutoSleepMode():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["fC8549191"]();
        return null;
    }

    @:hashAbi("SE3E7223043454AA0")
    public static function CheckAutoSleepMode():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f14E72153"]();
        return null;
    }

    @:hashAbi("SEDB492BA497ACB06")
    public static function PlayPokeVoiceFromDevNo2D(?devNo:Dynamic, ?formNo:Dynamic, ?type:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f08E0B97C(devNo, formNo, type);
        return null;
    }

    @:hashAbi("SEDB780BA497CE247")
    public static function PlayPokeVoiceFromDevNo3D(?devNo:Dynamic, ?formNo:Dynamic, ?type:Dynamic, ?pos:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f7FE789EA(devNo, formNo, type, untyped pos[1], untyped pos[2], untyped pos[3]);
        return null;
    }

    @:hashAbi("S608A3A9EBC2ED546")
    public static function PlayPokeVoiceFromNpcID(?npcID:Dynamic, ?type:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f1F1BAF03(npcID, type);
        return null;
    }

    @:hashAbi("SF4E8B2E65A829B9E")
    public static function SetBirthdayEvent(?mode:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f1E4A8DBC(mode);
        return null;
    }

    @:hashAbi("S613D9A57C1F2758B")
    public static function IsBirthdaySetupCheck():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fB36F1CFE"]();
        
    }

    @:hashAbi("S41910B5EA2270794")
    public static function IsBirthdayEvent():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f1740811F"]();
        
    }

    @:hashAbi("SACEBC7A9E751C227")
    public static function IsTodayBirthday():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f98D9D395"]();
        
    }

    @:hashAbi("S7ECBF631AAB2CF51")
    public static function IsCheckWeather(?WeatherType:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f2A136C31(WeatherType);
    }

    @:hashAbi("S5BDBC0EBC4A72664")
    public static function IsTypeAtParty(?TypeID:Dynamic):Dynamic
    {
        if ((TypeID == null)) {
            TypeID = 0;
        };
        var count:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
                if ((pokemon != null)) {
                    var firstType:StdTypes.Int = pokemon.f89E77E24();
                    var secondType:StdTypes.Int = pokemon.f10EE2F9E();
                    if (((firstType != TypeID) && (secondType != TypeID))) {
                        return false;
                    };
                };
            };
        };
        return true;
    }

    @:hashAbi("SCCAC6E3CE2015C8E")
    public static function IsFormAtParty(?FormId:Dynamic):Dynamic
    {
        if ((FormId == null)) {
            FormId = 0;
        };
        var count:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
                if (((pokemon != null) && (pokemon.f9E86AD53() != FormId))) {
                    return false;
                };
            };
        };
        return true;
    }

    public static function S4234B2C745A21F42(?arg0:Dynamic):Dynamic
    {
        var count:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        for (index in (new IntIterator(0, count))) {
            var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
            if (((pokemon != null) && pokemon.f8E393686(arg0))) {
                return true;
            };
        };
        return false;
    }

    @:hashAbi("S88A7FE06C073CAF4")
    public static function ModifyItemNum(?itemName:Dynamic, ?num:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fB62C2794(itemName, num);
        return null;
    }

    @:hashAbi("SF9C8338FCF391E92")
    public static function ModifyItemNum_Int(?itemName:Dynamic, ?num:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.fC12B1702(itemName, num);
        return null;
    }

    @:hashAbi("S28494204A23DFEC0")
    public static function OpenAmazingTrainingUI(?itemType:Dynamic, ?pokepara:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f5F5397E4();
        cppbindings.C56DE81E7.f4546CF43(itemType, pokepara);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        return cppbindings.C56DE81E7.f3E030F69();
    }

    @:hashAbi("S84E0082CA74D963D")
    public static function OpenItemSelectMenu():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f36EA0ED3"]();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_OtherStateRunning();
        main.event.ik.command.IkScriptCommand.Suspend();
        return untyped (lua.abi.Host.global("c56DE81E7"))["f95B88891"]();
        
    }

    @:hashAbi("S824484E7858B79E2")
    public static function UpdaateTaxirideCount():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f38B91396"]();
        return null;
    }

    @:hashAbi("SB927ADD4CE12CF60")
    public static function GetTaxirideCount():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fBF39D1F5"]();
        
    }

    @:hashAbi("S82B1DA050D80CB10")
    public static function GetTaxiDestinationDataSize():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f9F49C97F"]();
        
    }

    @:hashAbi("SCE25389D7ED105E4")
    public static function GetTaxiDestinationCategoryDataSize():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f11D1B977"]();
        
    }

    @:hashAbi("S89A9F25C374A27AE")
    public static function GetTaxiDestinationCategoryName(?select:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.fD83585D1(select);
    }

    @:hashAbi("S0B12289D03E2E525")
    public static function GetTaxiDestinationTargetDataSize(?select:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f40949B91(select);
    }

    @:hashAbi("SFFA3C289837A7DDF")
    public static function GetTaxiDestinationTargetName(?category_point:Dynamic, ?target_select_point:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.fE0BCBCD0(category_point, target_select_point);
    }

    @:hashAbi("S6F9FF8D009A09B86")
    public static function GetTaxiDestinationJumpPointName(?select_name:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.fF79DB3F2(select_name);
    }

    public static function SF9F1DDBC2CC5E1F0(?arg0:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f93FD0F3F(arg0);
    }

    @:hashAbi("SCEFC425E87C113FB")
    public static function GetTaxiJump_name():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fFF756EFD"]();
        
    }

    @:hashAbi("SC809FC914D581EEA")
    public static function GetTaxiJump_areaName():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f8A72DD39"]();
        
    }

    @:hashAbi("SD3CCB00C6FDA098B")
    public static function GetTaxiJump_position():Dynamic
    {
        var position = cppbindings.C56DE81E7.fA567AC62();
        return lua.Table.create([position.x, position.y, position.z]);
    }

    @:hashAbi("S1F2C1FECFCFC5973")
    public static function GetTaxiJump_yaw():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fA16E2222"]();
        
    }

    public static function SF652B18F7D84BAE0():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fAAF0CEFC"]();
        
    }

    public static function SB4FAA7B2386C5D07(?arg0:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.fB9BAA809(arg0);
    }

    public static function S6EE12559EC0ED01F(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f44C9BAFB(arg0, arg1);
    }

    public static function SFD08022F733C742C(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f470357B4(arg0, arg1, arg2);
    }

    public static function SC2ED36ECAB02EF7D(?arg0:Dynamic):Dynamic
    {
        cppbindings.C56DE81E7.f2CEAC772(arg0);
        return null;
    }

    public static function S1AF0C501B61D452B():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f8DEEA313"]();
        
    }

    public static function S70BC6EF711CA96D2():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f201C4D22"]();
        return null;
    }

    public static function S3A10238EE795CF4D():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["f6C827102"]();
        
    }

    public static function SA11A44C26A0DAC52():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fCD811B40"]();
        
    }

    public static function SF782104EEB758EBB():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f43F09246"]();
        return null;
    }

    public static function S22BBB0D49F41B44B(?arg0:Dynamic):Dynamic
    {
        return cppbindings.C56DE81E7.f6CF1B9C6(arg0);
    }

    public static function S9315000AFFA1ADE9(?arg0:Float):Dynamic
    {
        var minutes:Float = lua.Math.floor(arg0 / 60);
        var remaining:Float = arg0 - minutes * 60;
        var milliseconds:Float = lua.Math.floor((remaining - lua.Math.floor(remaining)) * 1000 + 0.5);
        var seconds:Float = 0;
        var centiseconds:Float = 0;
        if (minutes >= 60)
        {
            minutes = 59;
            seconds = 59;
            centiseconds = 99;
        }
        else
        {
            seconds = lua.Math.floor(remaining);
            centiseconds = lua.Math.floor(milliseconds / 10);
        }
        return [minutes, seconds, centiseconds];
    }

    public static function SDF42F9D9961D0772():Dynamic
    {
        var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
        if (!updates.exists("EventPauseGameTimer"))
        {
            SetUpdateList("EventPauseGameTimer", function():Dynamic
            {
                cppbindings.C56DE81E7.f098A43E1();
                return null;
            });
        }
        return null;
    }

    public static function S7BF170BA136B3024():Dynamic
    {
        var updates:haxe.ds.StringMap<Dynamic> = UpdateList;
        if (updates.exists("EventPauseGameTimer"))
        {
            DelUpdateList("EventPauseGameTimer");
        }
        return null;
    }

    public static function S726C2890C3D75149(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic):Dynamic
    {
        var scene:StdTypes.Null<cppbindings.CA042DA13> = cppbindings.C682D8E4F.fEF94D11D(arg1);
        if ((scene == null)) {
            return null;
        };
        var object:StdTypes.Null<cppbindings.C016374C1> = scene.fD4E64AB7(arg0);
        if ((object == null)) {
            return null;
        };
        var model:StdTypes.Null<cppbindings.CECB91E31> = cppbindings.CECB91E31.fB41FD22F(object);
        if ((model == null)) {
            return null;
        };
        cppbindings.C56DE81E7.f2697A3DD(model, 1, arg2);
        return null;
    }

    @:hashAbi("S83FD4A913E5A3438")
    public static function PostEvent2DWithEnd(?eventName:Dynamic):Dynamic
    {
        var playingId = ext.gf.audio.SoundCommand.PostEventGlobal(eventName);
        while (lua.abi.Host.truthy(IsActivePlayingId(playingId)))
        {
            Suspend();
        }
        return null;
    }

    @:hashAbi("SC6181320B46854EE")
    public static function PostEventGlobal(?eventName:Dynamic):Dynamic
    {
        return untyped ext.gf.audio.SoundCommand.PostEventGlobal(eventName);
    }

    @:hashAbi("S1B0B64C42CCA2263")
    public static function PostEvent2D(?eventName:Dynamic):Dynamic
    {
        return untyped ext.gf.audio.SoundCommand.PostEvent2D(eventName);
    }

    @:hashAbi("S96584FB18B5F6991")
    public static function PostEvent3DLocation(?eventName:Dynamic, ?location:Dynamic):Dynamic
    {
        return untyped ext.gf.audio.SoundCommand.PostEvent3DLocation(eventName, location);
    }

    @:hashAbi("S6F64CFAE76841DC9")
    public static function PostEvent3DObject(?eventName:Dynamic, ?sceneObj:Dynamic):Dynamic
    {
        return untyped ext.gf.audio.SoundCommand.PostEvent3DObject(eventName, sceneObj);
    }

    @:hashAbi("SA564E888BC5A581E")
    public static function IsActivePlayingId(?playingId:Dynamic):Dynamic
    {
        return ext.gf.audio.SoundCommand.IsActivePlayingId(playingId);
    }

    @:hashAbi("S7FECE1243B23B9FB")
    public static function SetRTPCGlobal(?rtpcName:Dynamic, ?value:Dynamic):Dynamic
    {
        return untyped ext.gf.audio.SoundCommand.SetRTPCGlobal(rtpcName, value);
    }

    @:hashAbi("S0447962DA9E61E54")
    public static function SetState(?stateGroup:Dynamic, ?stateName:Dynamic):Dynamic
    {
        return untyped ext.gf.audio.SoundCommand.SetState(stateGroup, stateName);
    }

    @:hashAbi("S03FECD8EAF534C70")
    public static function StopPlayingID(?playingId:Dynamic, ?fadeTime:Dynamic):Dynamic
    {
        if ((null == fadeTime))
        {
            fadeTime = 0;
        };
        return ext.gf.audio.SoundCommand.StopPlayingID(playingId, fadeTime);
    }

    @:hashAbi("SC12ED186C14D0473")
    public static function ExecuteBGMCommand(?commandName:Dynamic):Dynamic
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand(commandName);
        return null;
    }

    @:hashAbi("S6545DD337C473200")
    public static function IsMale():Dynamic
    {
        return (0 == cppbindings.C436B49F9.f4530466C());
        
    }

    @:hashAbi("SD917744D858A22F9")
    public static function PlayMovie(?movieID:Dynamic, ?startCallBack:Dynamic):Dynamic
    {
        var path:String = cppbindings.C1A1CBE3B.fD58607DC((Std.string((Std.string((Std.string((Std.string("/demo/movie/") + Std.string(movieID))) + Std.string("/"))) + Std.string(movieID))) + Std.string(".bk2")));
        var manager:StdTypes.Null<cppbindings.C0EE1EFA2> = cppbindings.C0EE1EFA2.f544F902B();
        var movie:StdTypes.Null<StdTypes.Null<cppbindings.CD8325B9D>> = (if ((manager != null)) {
            manager.f67E9E318();
        } else {
            null;
        });
        if ((movie == null)) {
            return null;
        };
        movie.f0842C4E9(path);
        movie.fF5E28294();
        if ((startCallBack != null)) {
            startCallBack();
        };
        while (!lua.abi.Host.truthy(movie.fAC68E687())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        movie.f37259A04();
        return null;
    }

    @:hashAbi("S19AF5AA640107385")
    public static function GetBattleStartPos_Player():Dynamic
    {
        return ({
            var v:cppbindings.Vec4 = cppbindings.C56DE81E7.f9BF101C7(true);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var w:StdTypes.Float = v.w;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z, w] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
    }

    @:hashAbi("SD17415B38588966C")
    public static function GetBattleStartPos_Enemy():Dynamic
    {
        return ({
            var v:cppbindings.Vec4 = cppbindings.C56DE81E7.f9BF101C7(false);
            {
                var x:StdTypes.Float = v.x;
                var y:StdTypes.Float = v.y;
                var z:StdTypes.Float = v.z;
                var w:StdTypes.Float = v.w;
                var vectorValues:lua.Table<Int, Float>;
                vectorValues = (lua.Table.create(([x, y, z, w] : Array<Float>)));
                cast (cast vectorValues);
            };
        });
    }

    @:hashAbi("S6DC639D702452D73")
    public static function GetBattleEnemyObjName():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fC157DDF8"]();
        
    }

    public static function SC171403DAE7D447B():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f9BA2F908"](true);
        return null;
    }

    public static function S1AD21CC7D382F5A1():Dynamic
    {
        untyped (lua.abi.Host.global("c56DE81E7"))["f9BA2F908"](false);
        return null;
    }

    public static function S3D047DB5B440735C():Dynamic
    {
        var accessor:Dynamic = CharacterCommand.GetAccessorNoScenario("Player");
        if (accessor != null)
        {
            SetUpdateList(Std.string("Player") + Std.string("AddTag_NoRegisterPerception_ForEvent"), function():Dynamic
            {
                if (accessor != null)
                {
                    accessor.f46E0548D("NoRegisterPerception_ForEvent");
                }
                return null;
            });
        }
        return null;
    }

    @:hashAbi("SB2AD905D36842423")
    public static function BossAdventDemoPlay(?poke_name:Dynamic, ?tr_name:Dynamic, ?demo_path:Dynamic):Dynamic
    {
        if ((demo_path == null)) {
            demo_path = "ik_demo/ee/m_bousou_advent/m_bousou_advent.trtml";
        };
        if ((tr_name == null)) {
            tr_name = "";
        };
        var player:StdTypes.Null<cppbindings.CBFB1CB46> = cppbindings.CBFB1CB46.fA925EE56();
        if ((player == null)) {
            return null;
        };
        var description:cppbindings.C08A10931 = cppbindings.C08A10931.f101D811F();
        {
            var value:cppbindings.C4D8F1342 = cppbindings.C4D8F1342.f69D04ADF(demo_path);
            description.f1AB0C609(value);
            value;
        };
        {
            description.f9581B992("startup");
            "startup";
        };
        var pokemon:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(poke_name);
        if ((pokemon == null)) {
            return null;
        };
        var latestDescription:Dynamic = description;
        untyped (cast latestDescription : Dynamic).f33C1EF35(0, pokemon.fEBA8F794(), null, null);
        if ((tr_name != "")) {
            var trainer:cppbindings.C2FE46DCA = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(tr_name);
            if ((trainer != null)) {
                description.fE705005F(0, trainer.fEBA8F794());
            };
        };
        var id:UInt = player.f757E37AB(description);
        while (!lua.abi.Host.truthy(player.f5876B42D(id))) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("SD5595271ED301616")
    public static function LookPosMake(?plyPosX:Float, ?plyPosY:Float, ?plyPosZ:Float, ?offPosX:Float, ?offPosY:Float, ?offPosZ:Float, ?rot:Float):Dynamic
    {
        var radians:Float = -rot / 360.0 * 2 * lua.Math.pi;
        var offsetX:Float = offPosX * lua.Math.cos(radians) - offPosZ * lua.Math.sin(radians);
        var offsetZ:Float = offPosX * lua.Math.sin(radians) + offPosZ * lua.Math.cos(radians);
        return lua.Table.create([plyPosX + offsetX, offPosY, plyPosZ + offsetZ]);
    }

    @:hashAbi("S90F1BE6FA1E178F7")
    public static function fmod(?a:Float, ?b:Float):Dynamic
    {
        var result:Float = a % b;
        if (result < 0)
        {
            result += b;
        }
        return result;
    }

    @:hashAbi("S06CD49E6BEAF430E")
    public static function MakeDir(?basePosX:Float, ?basePosY:Float, ?basePosZ:Float, ?targetPosX:Float, ?targetPosY:Float, ?targetPosZ:Float):Dynamic
    {
        var radians:Float = lua.Math.atan2(targetPosX - basePosX, targetPosZ - basePosZ) + lua.Math.pi * 2;
        radians %= lua.Math.pi * 2;
        var degrees:Float = radians / (2 * lua.Math.pi) * 360.0 + 180.0;
        if (degrees > 180)
        {
            degrees -= 360.0;
        }
        return degrees;
    }

    @:hashAbi("S848DC3879A9342C2")
    public static function MegaStonePlay(?posX:Float, ?posY:Float, ?posZ:Float, ?angle:Float, ?checkPosX:Float, ?checkPosY:Float, ?checkPosZ:Float, ?posXoffset:Float, ?posYoffset:Float, ?posZoffset:Float, ?fadeIn:Dynamic):Dynamic
    {
        if ((null == fadeIn)) {
            fadeIn = true;
        };
        if ((null == posZoffset)) {
            posZoffset = 0;
        };
        if ((null == posYoffset)) {
            posYoffset = 0;
        };
        if ((null == posXoffset)) {
            posXoffset = 0;
        };
        if ((null == checkPosZ)) {
            checkPosZ = 0;
        };
        if ((null == checkPosY)) {
            checkPosY = 0;
        };
        if ((null == checkPosX)) {
            checkPosX = 0;
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", posX, posY, posZ, angle);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(posX + -0.08), (posY + 3.78), (posZ + 0.34)]), lua.Table.create([0.0, -57.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/stone_get/stone_get_aura", "stone_get_aura");
        while (true) {
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect("stone_get_aura"))) {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition("stone_get_aura", (posX + 0.45), (posY + 3.78), posZ);
        main.event.ik.command.IkScriptCommand.PlayEffect("stone_get_aura");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MEGA_STONE_DIRECTION_01");
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/stone_get/stone_get_app", "stone_get_app");
        main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/stone_get/stone_get_kira", "stone_get_kira", "Player");
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/stone_get/stone_get_kira", "stone_get_kira_2");
        if (lua.abi.Host.truthy(fadeIn)) {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(2.54);
        while (true) {
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect("stone_get_app"))) {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition("stone_get_app", (posX + 0.45), (posY + 3.78), posZ);
        main.event.ik.command.IkScriptCommand.PlayEffect("stone_get_app");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MEGA_STONE_DIRECTION_02");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        while (true) {
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect("stone_get_kira"))) {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        while (true) {
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect("stone_get_kira_2"))) {
                break;
            };
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition("stone_get_kira_2", (posX + 0.45), (posY + 3.78), posZ);
        main.event.ik.command.IkScriptCommand.PlayEffect("stone_get_kira_2");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MEGA_STONE_DIRECTION_03");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.17);
        var animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 206);
        var lookOffsetX:StdTypes.Float = -1.0;
        var lookOffsetY:StdTypes.Float = 1.39;
        var lookOffsetZ:StdTypes.Float = 0.9;
        var targetOffsetX:StdTypes.Float = 0.09;
        var targetOffsetY:StdTypes.Float = 1.39;
        var targetOffsetZ:StdTypes.Float = 0.3;
        if ((((0 != checkPosX) && (0 != checkPosY)) && (0 != checkPosZ))) {
            lookOffsetX = checkPosX;
            lookOffsetY = checkPosY;
            lookOffsetZ = checkPosZ;
        };
        if ((((0 != posXoffset) && (0 != posYoffset)) && (0 != posZoffset))) {
            targetOffsetX = posXoffset;
            targetOffsetY = posYoffset;
            targetOffsetZ = posZoffset;
        };
        var targetPosition:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.LookPosMake(posX, posY, posZ, targetOffsetX, (posY + targetOffsetY), targetOffsetZ, angle);
        var lookPosition:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.LookPosMake(posX, posY, posZ, lookOffsetX, (posY + lookOffsetY), lookOffsetZ, angle);
        var cameraAngle:StdTypes.Float = main.event.ik.command.IkScriptCommand.MakeDir((cast lookPosition)[1], (cast lookPosition)[2], (cast lookPosition)[3], (cast targetPosition)[1], (cast targetPosition)[2], (cast targetPosition)[3]);
        var lookX:StdTypes.Float = (cast lookPosition)[1];
        var lookY:StdTypes.Float = (cast lookPosition)[2];
        var lookZ:StdTypes.Float = (cast lookPosition)[3];
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([lookX, (posY + 2.42), lookZ]), lua.Table.create([-4.13, cameraAngle, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence("stone_get_kira", "right_attach");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([lookX, lookY, lookZ]), lua.Table.create([-4.13, cameraAngle, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animation);
        main.event.ik.command.IkScriptCommand.FadeEffect("stone_get_aura");
        main.event.ik.command.IkScriptCommand.FadeEffect("stone_get_app");
        main.event.ik.command.IkScriptCommand.FadeEffect("stone_get_kira");
        main.event.ik.command.IkScriptCommand.FadeEffect("stone_get_kira_2");
        return null;
    }

    @:hashAbi("SA77E40D21DA5683B")
    public static function CaptureTournamentIcon(?ofs_x:Dynamic, ?ofs_y:Dynamic):Dynamic
    {
        if ((ofs_y == null)) {
            ofs_y = 180;
        };
        if ((ofs_x == null)) {
            ofs_x = 0;
        };
        var rectangle:Dynamic = cppbindings.CF1DE5DE8.f101D811F();
        untyped (cast rectangle : Dynamic).f6114F654(ofs_x);
        untyped (cast rectangle : Dynamic).f1613C6C2(ofs_y);
        untyped (cast rectangle : Dynamic).f83794811(512);
        untyped (cast rectangle : Dynamic).f0E7145E4(512);
        cppbindings.CC65D64C8.fEA88367D(rectangle);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        cppbindings.CC65D64C8.f3003A0EF(0);
        main.event.ik.command.IkScriptCommand.Suspend();
        while ((cppbindings.CC65D64C8.f846621C6() != (cast 0))) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    @:hashAbi("SF9354EFF16EEE043")
    public static function CaptureRoyaleAppIcon(?ofs_x:Dynamic, ?ofs_y:Dynamic):Dynamic
    {
        if ((ofs_y == null)) {
            ofs_y = 0;
        };
        if ((ofs_x == null)) {
            ofs_x = 0;
        };
        var rectangle:Dynamic = cppbindings.CF1DE5DE8.f101D811F();
        untyped (cast rectangle : Dynamic).f6114F654(ofs_x);
        untyped (cast rectangle : Dynamic).f1613C6C2(ofs_y);
        untyped (cast rectangle : Dynamic).f83794811(846);
        untyped (cast rectangle : Dynamic).f0E7145E4(442);
        cppbindings.CC65D64C8.fEA88367D(rectangle);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        cppbindings.CC65D64C8.f3003A0EF(2);
        main.event.ik.command.IkScriptCommand.Suspend();
        while ((cppbindings.CC65D64C8.f846621C6() != (cast 0))) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        return null;
    }

    public static function SCEDEAB75E66260EC():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fD3C8E07F"]();
        
    }

    public static function SA41464179597FBAA():Dynamic
    {
        return false;
        
    }

    public static function SC20D8767783F61D2():Dynamic
    {
        var position:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.FObj_Get_Pos("Player");
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle("Player");
        var mapName:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetCurrentMapName();
        main.event.ik.command.IkScriptCommand.EventMapChange(mapName, (cast position)[1], (cast position)[2], (cast position)[3], 0, angle, 0);
        return null;
    }
}

@:keep
@:chunk("main")
@:hashAbi("C8343D602EF9E379B")
@:expose("C8343D602EF9E379B")
abstract EaseCameraType(Dynamic)
{
    @:hashAbi("SF8F2D826E2B641F8")
    public static function _new(?easeType:Dynamic):Dynamic
    {
        return easeType;
    }
}
