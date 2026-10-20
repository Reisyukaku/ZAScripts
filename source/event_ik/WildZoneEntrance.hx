package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CD44050B9C44429C2")
@:expose("CD44050B9C44429C2")
class WildZoneEntrance extends BaseEvent
{
    @:abiSlot(8)
    public var targetDirection:Dynamic;

    public function new()
    {
        this.targetDirection = lua.Table.create([0, 0, 0]);
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var ownerSnapshot:event_ik.WildZoneEntrance = this;
        untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72();
        untyped (cast this.m_eventScriptParam : Dynamic).fB581866B();
        untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5();
        var transInfo:Array<String> = ((cast untyped (cast this.m_eventScriptParam : Dynamic).fB581866B() : String)).split(",");
        var x:StdTypes.Float = Std.parseFloat(transInfo[0]);
        var y:StdTypes.Float = Std.parseFloat(transInfo[1]);
        var z:StdTypes.Float = Std.parseFloat(transInfo[2]);
        var seInfo:Array<String> = ((cast untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5() : String)).split(",");
        var seLocation:lua.Table<Dynamic, StdTypes.Float> = lua.Table.create([Std.parseFloat(seInfo[1]), Std.parseFloat(seInfo[2]), Std.parseFloat(seInfo[3])]);
        var rayIgnoreFlags:Dynamic = cppbindings.CA915E6CD.f7AC1FE6B(8);
        untyped (cast rayIgnoreFlags : Dynamic).fC71B3CED(cppbindings.CA915E6CD.f7AC1FE6B(2));
        var castResult:Dynamic = cppbindings.C44E7275D.f101D811F();
        var rayOption:Dynamic = rayIgnoreFlags;
        if ((rayIgnoreFlags == null)) {
            rayOption = cppbindings.CA915E6CD.f0DC6CEFD();
        };
        if (!cppbindings.C98FA6616.fD324515F(castResult, x, (y + 2), z, x, (y - 4), z, 1, rayOption, function(rayResult:Dynamic):Dynamic {
            return true;
        })) {
            return;
        };
        this.m_isResetMotionAtCommonEnd = false;
        cppbindings.C56DE81E7.f187D80E1(true);
        var identifier:Array<String> = ((cast untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() : String)).split("_");
        var effectObjName:String = ((((("farea_" + identifier[1]) + "_") + identifier[2]) + "_") + identifier[3]);
        var isFoundFunc:(String, Dynamic) -> Dynamic = function(fileName:String, targetEffectName:Dynamic):Dynamic {
            var splitFileName:Array<String> = fileName.split("_");
            if ((splitFileName[(splitFileName.length - 2)] == targetEffectName)) {
                return (splitFileName[(splitFileName.length - 1)].indexOf(("" + identifier[5])) != -1);
            } else {
                return false;
            };
        };
        var loopParticle:Dynamic = cppbindings.C56DE81E7.f94DEBA38(untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72(), effectObjName, function(fileName:Dynamic):Dynamic {
            return isFoundFunc(fileName, "loop");
        });
        var outParticle:Dynamic = null;
        var inParticle:Dynamic = null;
        var outEffectKey:String = "zone_entrance_out";
        var inEffectKey:String = "zone_entrance_in";
        var attachEffect:(Dynamic, Dynamic, Dynamic) -> StdTypes.Void = function(effectKey:Dynamic, scene:Dynamic, parent:Dynamic):StdTypes.Void {
            if ((parent != null)) {
                var effectObject:Dynamic = untyped (cast scene : Dynamic).fD4E64AB7(effectKey);
                if ((effectObject != null)) {
                    untyped (cast effectObject : Dynamic).f4D31CD40(parent);
                };
            };
        };
        var stopEmitting:Dynamic -> StdTypes.Void = function(particle:Dynamic):StdTypes.Void {
            if ((particle != null)) {
                untyped (cast particle : Dynamic).fDFB25276(false);
            };
        };
        if ((loopParticle != null)) {
            var resourcePath:String = main.event.ik.command.IkScriptCommand.SE6ED292B2B4BAC83(loopParticle);
            var dataIndex:StdTypes.Int = resourcePath.indexOf("ik_effect/data/");
            if ((dataIndex != -1)) {
                var loopEffectName:String = resourcePath.substring((dataIndex + "ik_effect/data/".length), resourcePath.lastIndexOf("."));
                var outEffectName:String = StringTools.replace(loopEffectName, "loop", "out");
                var inEffectName:String = StringTools.replace(loopEffectName, "loop", "in");
                main.event.ik.command.IkScriptCommand.CreateEffect(outEffectName, outEffectKey, untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72());
                main.event.ik.command.IkScriptCommand.CreateEffect(inEffectName, inEffectKey, untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72());
                var findObject:(Dynamic, Dynamic) -> Dynamic = function(root:Dynamic, name:Dynamic):Dynamic {
                    if ((root != null)) {
                        var found:Dynamic = untyped (cast root : Dynamic).fD4E64AB7(name);
                        if ((found != null)) {
                            return found;
                        };
                        cppbindings.CEE286767.fFA589FB8(root, function(child:Dynamic):StdTypes.Void {
                            if ((found == null)) {
                                found = untyped (cast child : Dynamic).fD4E64AB7(name);
                            };
                        });
                        return found;
                    };
                    return null;
                };
                var scene:Dynamic = cppbindings.C682D8E4F.fEF94D11D(untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72());
                if ((scene != null)) {
                    var effectParent:Dynamic = findObject(scene, effectObjName);
                    attachEffect(outEffectKey, scene, effectParent);
                    attachEffect(inEffectKey, scene, effectParent);
                };
                this.Await(function():Dynamic {
                    if (main.event.ik.command.IkScriptCommand.IsSetUpEffect(outEffectKey)) {
                        return main.event.ik.command.IkScriptCommand.IsSetUpEffect(inEffectKey);
                    } else {
                        return false;
                    };
                });
                outParticle = main.event.ik.command.IkScriptCommand.GetEffectParticleComp(outEffectKey);
                inParticle = main.event.ik.command.IkScriptCommand.GetEffectParticleComp(inEffectKey);
                stopEmitting(outParticle);
                stopEmitting(inParticle);
            };
        };
        if ((loopParticle != null)) {
            untyped (cast loopParticle : Dynamic).f61A204B1();
        };
        if ((outParticle != null)) {
            main.event.ik.command.IkScriptCommand.PlayEffect(outEffectKey);
            main.event.ik.command.IkScriptCommand.PostEvent3DLocation(seInfo[0], seLocation);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_DisableWallCollision("Player", false);
        var player:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        var partner:Dynamic = untyped (cast player : Dynamic).f4F420785();
        if ((partner != null)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_InvincibleForAccessor(partner, true);
        } else {
            this.CreateSubCorutin("find_partner", function():StdTypes.Void {
                while ((partner == null)) {
                    partner = untyped (cast player : Dynamic).f4F420785();
                    if ((partner != null)) {
                        main.event.ik.command.IkScriptCommand.FObj_Set_InvincibleForAccessor(partner, true);
                    };
                    ownerSnapshot.Suspend();
                };
            });
        };
        var landing:cppbindings.Vec3 = untyped (cast castResult : Dynamic).f1B877572();
        var warpPosition:lua.Table<Dynamic, StdTypes.Float> = lua.Table.create([landing.x, landing.y, landing.z]);
        var playerPosition:cppbindings.Vec3 = untyped (cast player : Dynamic).f7360ED03();
        var direction:cppbindings.Vec3 = cppbindings.C7A48E3FC.fD9D3C136((warpPosition[1] - playerPosition.x), (warpPosition[2] - playerPosition.y), (warpPosition[3] - playerPosition.z));
        this.targetDirection = lua.Table.create([direction.x, direction.y, direction.z]);
        var targetDirection:Dynamic = this.targetDirection;
        var destinationAdjust:Dynamic = cppbindings.C56DE81E7.fC50CD537();
        warpPosition = lua.Table.create([(warpPosition[1] + (targetDirection[1] * destinationAdjust)), (warpPosition[2] + (targetDirection[2] * destinationAdjust)), (warpPosition[3] + (targetDirection[3] * destinationAdjust))]);
        main.event.ik.command.IkScriptCommand.Suspend();
        while (main.event.ik.command.IkScriptCommand.SE3474B3D31F0AAE2()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var movement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", warpPosition[1], warpPosition[2], warpPosition[3]);
        var arrived:Dynamic = this.WaitActionAndFixCamera(function():Dynamic {
            return !untyped (cast movement : Dynamic).fFFAA5D50();
        });
        var targetX:StdTypes.Float = warpPosition[1];
        var targetZ:StdTypes.Float = warpPosition[3];
        var current:cppbindings.Vec3 = untyped (cast player : Dynamic).f7360ED03();
        var closeEnough:StdTypes.Bool = ((0.8 * 0.8) >= cppbindings.C7A48E3FC.fCAD0B5F8(targetX, 0.0, targetZ, current.x, 0.0, current.z));
        if ((!arrived || !closeEnough)) {
            var retryResult:Dynamic = cppbindings.C44E7275D.f101D811F();
            var retryOption:Dynamic = rayIgnoreFlags;
            if ((rayIgnoreFlags == null)) {
                retryOption = cppbindings.CA915E6CD.f0DC6CEFD();
            };
            if (cppbindings.C98FA6616.fD324515F(retryResult, warpPosition[1], (warpPosition[2] + 2), warpPosition[3], warpPosition[1], (warpPosition[2] - 4), warpPosition[3], 1, retryOption, function(rayResult:Dynamic):Dynamic {
                return true;
            })) {
                var retryLanding:cppbindings.Vec3 = untyped (cast retryResult : Dynamic).f1B877572();
                warpPosition = lua.Table.create([retryLanding.x, retryLanding.y, retryLanding.z]);
            };
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", null, true);
            var warpX:StdTypes.Float = warpPosition[1];
            var warpY:StdTypes.Float = warpPosition[2];
            var warpZ:StdTypes.Float = warpPosition[3];
            var angles:lua.Table<Int, Float> = ({
                var _this:cppbindings.CD5675BA5 = (cast untyped (cast player : Dynamic).f64857644());
                {
                    var v:cppbindings.Vec3 = _this.f643B5D6F();
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
            movement = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang_with_Reset("Player", warpX, warpY, warpZ, (((cast angles)[2] / (2 * lua.Math.pi)) * 360.0));
        };
        if ((partner != null)) {
            untyped (cast partner : Dynamic).fA73BFE2C();
        };
        if ((outParticle != null)) {
            main.event.ik.command.IkScriptCommand.FadeEffect(outEffectKey);
        };
        if ((inParticle != null)) {
            main.event.ik.command.IkScriptCommand.PlayEffect(inEffectKey);
            {
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
                {
                    main.event.ik.command.IkScriptCommand.Suspend();
                };
            };
            main.event.ik.command.IkScriptCommand.FadeEffect(inEffectKey);
        };
        if ((loopParticle != null)) {
            untyped (cast loopParticle : Dynamic).fA5130C84(true, 0);
        };
        if ((!arrived || !closeEnough)) {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movement);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", null, true);
        };
        cppbindings.C56DE81E7.f187D80E1(false);
    }

    @:hashAbi("F31B4F2F354659CF5")
    public function WaitActionAndFixCamera(?loopPredicate:Dynamic):Dynamic
    {
        var player:cppbindings.C65853BD0 = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        var cameraFixed:StdTypes.Bool = false;
        var completed:StdTypes.Bool = true;
        var elapsed:StdTypes.Float = 0.0;
        main.event.ik.command.IkScriptCommand.Suspend();
        while (lua.abi.Host.truthy(loopPredicate())) {
            {
                untyped __lua__("_G[{0}] = {1}", "_hx_do_first_1", (cast false));
            };
            var target:lua.Table<Int, Float> = (cast this.targetDirection);
            var forward:lua.Table<Int, Float> = ({
                var _this:cppbindings.CD5675BA5 = player.f64857644();
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
            var angle:StdTypes.Float = ((main.util.Math.GetVectorAngle(target, forward) / (2 * lua.Math.pi)) * 360.0);
            if (((angle < 10) && !cameraFixed)) {
                cppbindings.C56DE81E7.f6E6DA4AE("INTERACT_ZONE");
                cppbindings.C56DE81E7.f0A6B2A3D();
                var reset:cppbindings.Vec3 = cppbindings.C56DE81E7.f2A710937();
                var resetCamera:Dynamic = main.event.ik.command.IkScriptCommand.CameraResetRotation;
                resetCamera(null, reset.x, reset.y, reset.z);
                cameraFixed = true;
            };
            elapsed += main.event.ik.command.IkScriptCommand.Suspend();
            if ((elapsed >= 30.0)) {
                completed = false;
                break;
            };
        };
        return completed;
    }
}
