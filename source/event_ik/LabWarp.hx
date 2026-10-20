package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C56998E42D5A60A03")
@:expose("C56998E42D5A60A03")
class LabWarp extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Start();
        cppbindings.C56DE81E7.f187D80E1(true);
        var player:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        var warpPosition:lua.Table<Dynamic, StdTypes.Float> = lua.Table.create([Std.parseFloat(untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC()), Std.parseFloat(untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72()), Std.parseFloat(untyped (cast this.m_eventScriptParam : Dynamic).fB581866B())]);
        var warpAngle:StdTypes.Float = Std.parseFloat(untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5());
        main.event.ik.command.IkScriptCommand.CreateEffect("field/gimmick/holovator/holovator_warp", "LabWarpEffect");
        while (!main.event.ik.command.IkScriptCommand.IsSetUpEffect("LabWarpEffect")) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var eventCameraObject:Dynamic = untyped (cast cppbindings.CDBDC1051.fD39408C8() : Dynamic).fA4560435();
        var eventCamera:Dynamic = cppbindings.C467D18B0.fB41FD22F(eventCameraObject);
        main.event.ik.command.IkScriptCommand.Suspend();
        var start:cppbindings.Vec3 = untyped (cast player : Dynamic).f7360ED03();
        var startPosition:lua.Table<Dynamic, StdTypes.Float> = lua.Table.create([start.x, start.y, start.z]);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition("LabWarpEffect", startPosition[1], (startPosition[2] + 1), startPosition[3]);
        main.event.ik.command.IkScriptCommand.PlayEffect("LabWarpEffect");
        main.event.ik.command.IkScriptCommand.PostEvent3DLocation("PLAY_GMK_FLABS_WARP_IN", startPosition);
        var startTarget:cppbindings.Vec3 = untyped (cast eventCamera : Dynamic).f9E2A01F1();
        var startLookAtX:StdTypes.Float = startTarget.x;
        var startLookAtY:StdTypes.Float = (startTarget.y + 0.5);
        var startLookAtZ:StdTypes.Float = startTarget.z;
        var startCamera:cppbindings.Vec3 = untyped (cast eventCamera : Dynamic).f33A459EF();
        var startCameraPosition:lua.Table<Dynamic, StdTypes.Float> = lua.Table.create([startCamera.x, (startCamera.y + 0.5), startCamera.z]);
        var startAngles:cppbindings.Vec3 = untyped (cast cppbindings.CC8285504.f9AB356BF(startLookAtX, startLookAtY, startLookAtZ, startCameraPosition[1], startCameraPosition[2], startCameraPosition[3], 0) : Dynamic).f643B5D6F();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, startCameraPosition, lua.Table.create([((startAngles.x / (2 * lua.Math.pi)) * 360.0), ((startAngles.y / (2 * lua.Math.pi)) * 360.0), ((startAngles.z / (2 * lua.Math.pi)) * 360.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(12, StdTypes.Int))));
        var frame:StdTypes.Int = 0;
        while ((frame < 1)) {
            frame++;
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        var warpInParticles:Dynamic = main.event.ik.command.IkScriptCommand.GetEffectParticleComp("LabWarpEffect");
        this.Await(function():Dynamic {
            return untyped (cast warpInParticles : Dynamic).f11CC5570();
        });
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var placement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", warpPosition[1], warpPosition[2], warpPosition[3], warpAngle);
        main.event.ik.command.IkScriptCommand.Suspend();
        while (!untyped (cast placement : Dynamic).fFFAA5D50()) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.CameraResetRotation();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Camera_End(false);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Camera_Start();
        main.event.ik.command.IkScriptCommand.Suspend();
        var target:cppbindings.Vec3 = untyped (cast eventCamera : Dynamic).f9E2A01F1();
        var lookAtX:StdTypes.Float = target.x;
        var lookAtY:StdTypes.Float = (target.y + 0.5);
        var lookAtZ:StdTypes.Float = target.z;
        var camera:cppbindings.Vec3 = untyped (cast eventCamera : Dynamic).f33A459EF();
        var cameraPosition:lua.Table<Dynamic, StdTypes.Float> = lua.Table.create([camera.x, (camera.y + 0.5), camera.z]);
        var angles:cppbindings.Vec3 = untyped (cast cppbindings.CC8285504.f9AB356BF(lookAtX, lookAtY, lookAtZ, cameraPosition[1], cameraPosition[2], cameraPosition[3], 0) : Dynamic).f643B5D6F();
        var yaw:StdTypes.Float = angles.x;
        var pitch:StdTypes.Float = angles.y;
        var roll:StdTypes.Float = angles.z;
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0, cameraPosition, lua.Table.create([((yaw / (2 * lua.Math.pi)) * 360.0), ((pitch / (2 * lua.Math.pi)) * 360.0), ((roll / (2 * lua.Math.pi)) * 360.0)]), 50.0, 0);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.S80725197C3054FB8();
        var current:cppbindings.Vec3 = untyped (cast eventCamera : Dynamic).f33A459EF();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([current.x, (current.y - 0.5), current.z]), lua.Table.create([((yaw / (2 * lua.Math.pi)) * 360.0), ((pitch / (2 * lua.Math.pi)) * 360.0), ((roll / (2 * lua.Math.pi)) * 360.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(12, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var fadeFrame:StdTypes.Int = 0;
        while ((fadeFrame < 15)) {
            fadeFrame++;
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition("LabWarpEffect", warpPosition[1], (warpPosition[2] + 1), warpPosition[3]);
        main.event.ik.command.IkScriptCommand.PlayEffect("LabWarpEffect");
        main.event.ik.command.IkScriptCommand.PostEvent3DLocation("PLAY_GMK_FLABS_WARP_OUT", warpPosition);
        var warpOutFrame:StdTypes.Int = 0;
        while ((warpOutFrame < 3)) {
            warpOutFrame++;
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        var warpOutParticles:Dynamic = main.event.ik.command.IkScriptCommand.GetEffectParticleComp("LabWarpEffect");
        this.Await(function():Dynamic {
            return untyped (cast warpOutParticles : Dynamic).f11CC5570();
        });
        cppbindings.C56DE81E7.f187D80E1(false);
    }
}
