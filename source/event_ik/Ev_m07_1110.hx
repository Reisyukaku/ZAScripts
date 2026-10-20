package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5D49B932E693FDB6")
@:expose("C5D49B932E693FDB6")
class Ev_m07_1110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-506.43, 0.01, -905.77]), -97.9, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-506.42, 0.0, -907.13]), -76.4, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main07_0001", lua.Table.create([-508.96, 0.15, -906.51]), 98.49, "npc_main07_0001");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -507.87, 0.01, -906.49, -85.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main07_0001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main07_0001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main07_0001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main07_0001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_R01_036", false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-506.65, 0.86, -906.64]), lua.Table.create([13.65, 93.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-508.12, 1.43, -906.55]), lua.Table.create([13.65, 93.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main07_0001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_1110_talk_01", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-506.8, 1.06, -907.86]), lua.Table.create([5.23, 132.49, 0.03]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-507.03, 1.09, -907.65]), lua.Table.create([5.23, 132.49, 0.03]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null, null);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_08", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main07_0001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_S_ITEM_GET_EVENT");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m07_1100_talk_20", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_22", "main_07_01", "dyn_main07_0001");
        var menuLabels:Dynamic = (["msg_Ev_m07_1100_select_01", "msg_Ev_m07_1100_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        var hideMessageWindow:Dynamic = main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (0 == selection)
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main07_0001", 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -507.46, 0.01, -906.5, -85.4);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CHANGE_UNIFORM");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.CharacterDressup(11, "p2_lwb0004_00_tapered_tex_01_r02_c08");
            main.event.ik.command.IkScriptCommand.CharacterDressup(12, "p2_upb0005_01_jacketshirt_normal_r02_c02");
            main.event.ik.command.IkScriptCommand.CharacterDressup(6, "p0_hdw9999_00_none");
            main.event.ik.command.IkScriptCommand.CharacterDressup(8, "p0_lgw0002_00_high_tex_00_07");
            main.event.ik.command.IkScriptCommand.CharacterDressup(4, "p0_ftw0006_00_opera_normal_00");
            main.event.ik.command.IkScriptCommand.CharacterDressupSave();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-508.38, 1.0, -906.82]), lua.Table.create([-17.1, -118.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-508.29, 1.0, -906.99]), lua.Table.create([-17.1, -118.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-508.11, 1.5, -906.19]), lua.Table.create([-24.69, -54.24, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-508.06, 1.5, -906.12]), lua.Table.create([-24.69, -54.24, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-508.61, 0.22, -906.51]), lua.Table.create([-3.72, -88.79, -0.03]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-508.61, 1.4, -906.51]), lua.Table.create([-3.72, -88.79, -0.03]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 85);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-506.54, 1.11, -907.19]), lua.Table.create([7.01, 122.21, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-506.62, 1.11, -907.32]), lua.Table.create([7.01, 122.21, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main07_0001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main07_0001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main07_0001", "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_23", "main_07_01", "dyn_main07_0001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main07_0001", -508.95, 0.15, -906.41, 98.49);
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-505.39, 1.45, -906.01]);
            var cameraVector2:Dynamic = lua.Table.create([-5.51, 96.27, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main07_0001", "dyn_main_rival_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_rival_m", "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_24", "main_07_01", "dyn_main07_0001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main07_0001", -508.95, 0.15, -906.41, 98.49);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -507.46, 0.01, -906.5, -85.4);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-505.4, 1.45, -906.09]), lua.Table.create([-5.51, 96.27, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraVector3:Dynamic = lua.Table.create([-505.39, 1.45, -906.01]);
            var cameraVector4:Dynamic = lua.Table.create([-5.51, 96.27, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, cameraVector3, cameraVector4, 40.0, 0, cameraEase2, null, null, null, null);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main07_0001", "dyn_main_rival_m", "head");
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main07_0001", 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_24", "main_07_01", "dyn_main07_0001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main07_0001", -508.96, 0.15, -906.51, 98.49);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -506.48, 0.0, -907.25, -76.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-507.66, 1.15, -906.58]), lua.Table.create([-0.86, -123.45, 0.0]), 43.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 175));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_09", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_10", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -506.42, 0.0, -907.13, -76.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-507.39, 1.24, -907.11]), lua.Table.create([5.82, 111.96, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main07_0001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main07_0001", 174));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_11", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-505.49, 1.24, -908.84]), lua.Table.create([-2.65, 138.16, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main07_0001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_26", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-507.27, 1.34, -907.67]), lua.Table.create([-2.22, -142.94, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-507.16, 1.34, -907.75]), lua.Table.create([-2.22, -142.94, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main07_0001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_13", "main_07_01", "dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main07_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_14", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_15", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-505.09, 0.67, -909.26]), lua.Table.create([6.55, 139.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.5, lua.Table.create([-505.51, 0.67, -909.62]), lua.Table.create([6.55, 139.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", -53.63);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -130.19);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 116.6);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_16", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_17", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-507.73, 1.46, -907.61]), lua.Table.create([-6.95, -157.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 59.1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_18", "main_07_01", "dyn_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_1100_talk_19", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
