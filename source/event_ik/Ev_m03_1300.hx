package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C83FCA2AFECDDE571")
@:expose("C83FCA2AFECDDE571")
class Ev_m03_1300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m", "npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -666.47, 0.02, -877.48, 134.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -664.92, 0.02, -879.21, 40.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -664.0, 0.03, -877.99, -135.46);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m03_1300");
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.26, 1.33, -877.57]), lua.Table.create([-4.62, 73.13, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M4DB_T3000");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1300_talk_01", "main_03_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-664.2, 1.33, -878.72]), lua.Table.create([1.27, 58.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1300_talk_02", "main_03_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.38, 1.33, -877.39]), lua.Table.create([-4.62, 75.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-662.3, 1.33, -877.7]);
            var cameraVector2:Dynamic = lua.Table.create([-4.62, 75.14, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(1.8, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1300_talk_03", "main_03_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.38, 1.33, -877.39]), lua.Table.create([-4.62, 75.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle2:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector3:Dynamic = lua.Table.create([-662.3, 1.33, -877.7]);
            var cameraVector4:Dynamic = lua.Table.create([-4.62, 75.14, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle2(1.8, cameraVector3, cameraVector4, 40.0, 0, cameraEase2, null, null, null, null);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M4DB_T3000");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1300_talk_03", "main_03_01", "npc_main_friend_f");
        };
        var menuLabels:Dynamic = (["msg_Ev_m03_1300_select_01", "msg_Ev_m03_1300_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        if (((0 == (selection : Dynamic))))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-664.04, 1.14, -878.55]), lua.Table.create([9.29, 55.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle3:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector5:Dynamic = lua.Table.create([-664.33, 1.24, -878.75]);
            var cameraVector6:Dynamic = lua.Table.create([9.29, 55.36, -0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle3(1.0, cameraVector5, cameraVector6, 40.0, 0, cameraEase3, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1300_talk_05", "main_03_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            waitFObjAction(setAnimationAction, null, null, null, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1300_talk_04", "main_03_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -664.92, 0.02, -879.21, 35.5);
        };
        untyped this.m_resultParam = (selection : Dynamic);
    }
}
