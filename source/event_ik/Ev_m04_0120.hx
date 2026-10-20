package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5964B0277DA2C1B7")
@:expose("C5964B0277DA2C1B7")
class Ev_m04_0120 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_f", "npc_main_friend_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
        var setTurnToObjLookAtAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
        var setTurnToObjLookAtAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_friend_f", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjLookAtAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjLookAtAction2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_f");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_21", "main_04_01", "npc_main_friend_f");
        var menuLabels:Dynamic = (["msg_Ev_m04_0120_select_01", "msg_Ev_m04_0120_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        var hideMessageWindow:Dynamic = main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (0 == selection)
        {
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 10.48, 0.31, 2.5, 140.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", 8.94, 0.32, 2.32, 98.96);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", 11.43, 0.3, 1.27, -16.66);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", 9.18, 0.32, 3.38, 150.42);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([10.82, 1.7, 4.41]), lua.Table.create([-2.72, -0.42, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_11", "main_04_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([10.91, 1.66, 1.91]), lua.Table.create([-3.12, 116.41, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 28);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_12", "main_04_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_13", "main_04_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m"));
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_m", 10.84, 0.32, -2.94, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T1500");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_0120_CLOTH_L");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.UpdateReplace();
            main.event.ik.command.IkScriptCommand.WaitReplace();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_24", "main_04_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 10.08, 0.31, 2.1, 140.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", 9.43, 0.32, 1.79, 130.1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", 11.21, 0.3, 1.27, -105.66);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", 11.33, 0.31, -4.43, -3.39);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1500");
            var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_m", 10.84, 0.31, -2.94, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([10.15, 1.64, 4.99]), lua.Table.create([-5.85, 3.76, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([10.59, 1.64, 4.91]), lua.Table.create([-5.85, 3.76, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "rejoice_small", "npc_main_friend_m");
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_14", "main_04_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_m", 11.52, 0.31, -5.29, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([10.32, 1.52, -7.6]), lua.Table.create([4.86, -28.14, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_friend_m", lua.Table.create([9.92, 2.5, -10.3]));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", 11.02, 0.31, -7.47, 180.0));
            var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_m", 10.9, 0.31, -8.66, 1.0);
            var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.67, 0.31, -5.3, -165.21);
            var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", 11.3, 0.31, -4.31, 179.6);
            var setPosAngAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", 11.95, 0.3, -6.42, -177.95);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_15", "main_04_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction3);
            var moveToPosXYZAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 11.55, 0.31, -6.81, 1.0);
            var moveToPosXYZAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", 11.61, 0.32, -5.36, 1.0);
            var moveToPosXYZAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_f", 11.95, 0.3, -7.89, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([10.25, 1.73, -9.63]), lua.Table.create([-4.15, -145.76, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction4);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction5);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_friend_f", lua.Table.create([9.92, 2.5, -10.3]));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_rival_m", lua.Table.create([9.92, 2.5, -10.3]));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([9.92, 2.5, -10.3]));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "rejoice_small", "npc_main_friend_m");
            var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_25", "main_04_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_01");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([10.94, 1.59, -7.35]), lua.Table.create([4.94, 18.74, -0.18]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.55, 0.31, -6.81, -163.72);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", 11.61, 0.3, -5.36, -176.49);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", 11.95, 0.3, -7.89, -126.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "rejoice_big_mc", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([11.14, 1.54, -6.76]), lua.Table.create([4.94, 18.74, -0.18]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_friend_m");
            var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", -9.99);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_16", "main_04_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([10.87, 1.73, -7.82]), lua.Table.create([-4.16, -153.47, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_0120_talk_17", "main_04_01", "npc_main_rival_m", null, null, (function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                return null;
            }));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
            var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_30", "main_04_01", "npc_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_0120_select_03", "msg_Ev_m04_0120_select_04"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([9.92, 2.5, -10.3]));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_small", "Player");
            var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([12.59, 1.88, -5.8]), lua.Table.create([-4.8, 31.21, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_18", "main_04_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var cameraVector:Dynamic = lua.Table.create([9.52, 1.7, -8.95]);
            var cameraVector2:Dynamic = lua.Table.create([-6.34, -124.87, 0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "npc_main_rival_m", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
            var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_19", "main_04_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
            var setAnimationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_20", "main_04_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction10);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0120_talk_22", "main_04_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped this.m_resultParam = selection;
    }
}
