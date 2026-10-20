package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C2BAADAC83E8352B8")
@:expose("C2BAADAC83E8352B8")
class Ev_m03_2100 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_friend_f", "main_hitodeman"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-610.56, 0.15, -778.02]), -71.47, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -604.91, 0.16, -775.6, -88.01);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -610.56, 0.15, -778.02, -71.47);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_hitodeman", -610.98, 0.15, -776.25, -136.97);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "main_hitodeman", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_f", 491);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -608.34, 0.16, -776.55, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-603.7, 1.01, -778.99]), lua.Table.create([-1.09, 120.81, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-604.48, 1.01, -780.15]), lua.Table.create([-1.09, 120.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_01", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-609.22, 0.58, -776.4]), lua.Table.create([-3.51, 94.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_hitodeman", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_hitodeman", 86.03));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_hitodeman", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_02", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-605.88, 1.44, -777.64]), lua.Table.create([-4.59, 100.16, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", 64.03);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_03", "main_03_01", "dyn_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_2100_select_01", "msg_Ev_m03_2100_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-609.42, 1.52, -777.68]), lua.Table.create([-2.33, -142.64, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-609.11, 1.64, -777.78]), lua.Table.create([-3.18, 87.32, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 74);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_04", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-607.76, 2.05, -778.54]), lua.Table.create([-16.29, 111.73, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "smile_bitter", "npc_main_friend_f");
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_05", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "main_hitodeman", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_hitodeman", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_06", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-606.1, 1.44, -779.37]), lua.Table.create([-5.99, 123.81, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_07", "main_03_01", "dyn_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_2100_select_03", "msg_Ev_m03_2100_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_08", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-611.47, 2.0, -779.96]), lua.Table.create([-14.99, -149.38, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-611.64, 2.0, -779.86]), lua.Table.create([-14.99, -149.38, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        var setTurnAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", -112.47);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
        var setTurnAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_hitodeman", 147.53);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_09", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_10", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-611.01, 1.77, -779.06]), lua.Table.create([-8.93, -146.13, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "unique3", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_11", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_12", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        var setTurnAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", 60.03);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-609.41, 1.7, -777.85]), lua.Table.create([-6.41, 91.07, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction4);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_13", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-605.85, 1.53, -777.57]), lua.Table.create([-7.0, 98.41, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "battle", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_hitodeman", 86.03);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2100_talk_14", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2300_talk_01", "main_03_01", "dyn_main_friend_f");
        var menuLabels:Dynamic = (["msg_Ev_m03_2300_select_01", "msg_Ev_m03_2300_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
            var cameraMoveAngleFov:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov;
            var cameraVector:Dynamic = lua.Table.create([-607.73, 2.07, -778.46]);
            var cameraVector2:Dynamic = lua.Table.create([-17.32, 111.31, 0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngleFov(0.0, cameraVector, cameraVector2, 30.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_hitodeman", 37);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2300_talk_03", "main_03_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2300_talk_02", "main_03_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_friend_f", true);
        untyped this.m_resultParam = selection;
    }
}
