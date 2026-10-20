package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5436A432E1521054")
@:expose("C5436A432E1521054")
class Ev_m07_1000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-505.66, 0.0, -905.94]), -95.91, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-505.54, 0.0, -906.92]), -89.9, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main07_0001", lua.Table.create([-496.63, 0.01, -908.56]), -84.01, "npc_main07_0001");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("Player", false);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main07_0001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_R01_036", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -504.61, 0.02, -906.24, -92.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-503.6, 1.06, -907.31]), lua.Table.create([3.22, 116.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 111.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", 52.6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-502.46, 0.88, -908.97]), lua.Table.create([3.22, 116.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_01", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_02", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main07_0001", -510.08, 0.19, -906.17, 90.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -504.52, 0.01, -906.25, -89.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -505.83, 0.0, -905.91, 111.09);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -505.81, 0.0, -906.78, 63.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-509.96, 1.52, -906.9]), lua.Table.create([-7.65, -106.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([-510.03, 1.52, -906.66]), lua.Table.create([-7.65, -106.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main07_0001", -509.22, 0.16, -906.17, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main07_0001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_03", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -94.41);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", -71.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main07_0001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main07_0001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "surprise_mc");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "surprise_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main07_0001", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_04", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-508.2, 1.58, -906.56]), lua.Table.create([2.87, 110.49, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_05", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-507.43, 0.71, -906.62]), lua.Table.create([16.94, 118.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-507.66, 0.71, -907.03]), lua.Table.create([16.94, 118.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main07_0001", true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_06", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_07", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-508.56, 1.42, -906.5]), lua.Table.create([16.94, 118.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_08", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -505.65, 0.0, -906.92, -80.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-510.23, 1.74, -906.77]), lua.Table.create([-9.98, -107.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_09", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-508.13, 1.53, -906.63]), lua.Table.create([6.33, 123.65, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-508.24, 1.53, -906.79]), lua.Table.create([6.33, 123.65, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_10", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-505.44, 1.48, -906.25]), lua.Table.create([-0.35, 91.28, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([-507.76, 1.63, -906.2]), lua.Table.create([-0.35, 91.28, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_1000_talk_19", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "smile");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-503.51, 1.57, -908.34]), lua.Table.create([-10.07, 130.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main07_0001", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_17", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_18", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-507.16, 1.39, -906.95]), lua.Table.create([-1.83, -128.69, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-506.94, 1.4, -906.78]), lua.Table.create([-1.83, -128.69, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "dislike");
        var dynMainRivalMAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_11", "main_07_01", "dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "smile_bitter");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainRivalMAnimation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-506.35, 1.5, -907.8]), lua.Table.create([-10.78, -147.96, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_12", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "dislike");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_13", "main_07_01", "dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-503.2, 1.64, -907.85]), lua.Table.create([-12.62, 120.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 105.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", 64.6);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var dynMainRivalMAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1000_talk_14", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainRivalMAnimation2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
