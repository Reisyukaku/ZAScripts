package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C63B1FF99A2D19D97")
@:expose("C63B1FF99A2D19D97")
class Ev_m02_0140 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var actorId:Dynamic = lua.abi.Host.concat(Std.string("tmp"), Std.string("npc_main_rival_m"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId, lua.Table.create([-539.24, 0.0, -975.1]), 142.99, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(actorId, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -535.82, 0.01, -977.84, -172.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-535.69, 0.86, -976.69]), lua.Table.create([26.96, 4.7, 0.0]), 50.6, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-536.46, 10.06, -986.14]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-535.56, 0.64, -975.18]), lua.Table.create([26.96, 4.7, 0.0]), 50.6, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(actorId, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(actorId, -542.21, 0.0, -972.46, 135.49);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-541.4, 1.59, -972.01]), lua.Table.create([-9.91, -32.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-542.69, 1.59, -970.77]), lua.Table.create([-9.92, -32.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0140_talk_01", "main_02_01", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -536.14, 0.01, -978.9, -30.9);
        var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(actorId, -538.86, 0.0, -975.85, 135.39);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-536.75, 1.47, -976.8]), lua.Table.create([-12.27, 109.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(actorId, lua.Table.create([-534.44, 1.67, -981.55]));
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -536.86, 0.0, -977.85, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraVector:Dynamic = lua.Table.create([-534.62, 1.48, -979.17]);
        var cameraVector2:Dynamic = lua.Table.create([-12.27, 109.03, 0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ((("0" == getEventModeResult)))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_small_mc");
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0140_talk_02", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -536.1, 0.01, -977.94, 15.6);
            untyped waitFObjAction(setPosAngAction2, null, null, null, null, null, null, null);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_small");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0140_talk_03", "main_02_01", actorId);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0140_talk_04", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0140_talk_06", "main_02_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-536.46, 1.54, -976.02]), lua.Table.create([-11.45, 3.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(actorId);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -538.57, 0.0, -975.38, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -535.93, 0.01, -979.17, -12.9);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-535.63, 1.14, -975.77]), lua.Table.create([0.0, 4.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -175.1);
            var cameraVector3:Dynamic = lua.Table.create([-535.57, 1.21, -975.01]);
            var cameraVector4:Dynamic = lua.Table.create([1.58, 4.64, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(actorId);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
    }
}
