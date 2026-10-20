package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C110C50A291D867DD")
@:expose("C110C50A291D867DD")
class Ev_m02_1040 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_researcher"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.WordSet_Number(2, main.event.ik.command.IkScriptCommand.GetNumberOfRegisteredBooks(), 2);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_researcher", lua.Table.create([-5.4, 0.02, -1.12]), 5.73, "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -3.88, 0.06, 1.26, -133.31));
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_researcher", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_researcher", 71));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_researcher", -5.4, 0.02, -1.12, 5.73);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_researcher", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.87, 0.89, -0.01]), lua.Table.create([-11.03, 50.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-4.87, 1.14, -0.01]), lua.Table.create([-11.03, 50.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-2.72, 1.54, 1.55]), lua.Table.create([-9.88, 63.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_01", "main_02_01", "dyn_main_researcher");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_1040_select_01", "msg_Ev_m02_1040_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.85, 1.13, -0.09]), lua.Table.create([-7.05, 47.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (0 == selection)
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_06", "main_02_01", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_07", "main_02_01", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_researcher", 1));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_researcher", -5.32, 0.08, 1.01, 6.62);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -5.31, 0.06, 2.36, -172.83);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_researcher", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 14);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.3, 0.41, 1.27]), lua.Table.create([1.86, 76.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-4.93, 1.38, 1.85]), lua.Table.create([6.91, 29.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_02", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.25, 1.54, 3.26]), lua.Table.create([-10.58, 38.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_03", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var dynMainResearcherAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_04", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainResearcherAnimation);
        var dynMainResearcherAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 21);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.42, 1.3, 2.39]), lua.Table.create([3.89, 34.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.3, lua.Table.create([-4.93, 1.47, 1.64]), lua.Table.create([3.89, 34.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m02_1040_talk_05", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainResearcherAnimation2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_21", "main_02_01", "dyn_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_1040_select_05", "msg_Ev_m02_1040_select_06"]), 0, false, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_22", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-5.39, 1.13, 2.12]), lua.Table.create([16.24, 21.71, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-5.1, 1.13, 2.0]), lua.Table.create([16.24, 21.71, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var dynMainResearcherAnimation3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_23", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainResearcherAnimation3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.25, 1.54, 3.26]), lua.Table.create([-10.58, 38.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_24", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-5.08, 1.44, 1.41]), lua.Table.create([15.81, 38.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-4.67, 1.14, 1.94]), lua.Table.create([15.81, 38.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m02_1040_talk_25", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m02_1040_talk_26", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m02_1040_talk_27", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-2.83, 2.38, 4.49]), lua.Table.create([-19.77, 42.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-2.53, 2.54, 4.81]), lua.Table.create([-19.77, 42.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Facial("dyn_main_researcher", 356, 451, 405);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_28", "main_02_01", "dyn_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_1040_select_07", "msg_Ev_m02_1040_select_08"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Facial("dyn_main_researcher", 352, 451, 401);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-5.16, 1.57, 1.33]), lua.Table.create([3.89, 34.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-4.85, 1.42, 1.78]), lua.Table.create([5.69, 34.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m02_1040_talk_29", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.25, 1.54, 3.26]), lua.Table.create([-10.58, 38.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_30", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_31", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_0024");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small_mc");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-5.2, 1.49, 1.8]), lua.Table.create([2.93, 36.7, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-4.99, 1.49, 1.64]), lua.Table.create([2.93, 36.7, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_32", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.9, 1.43, 1.33]), lua.Table.create([-2.01, 154.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "normal");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneInstallSequence("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_INSTALL_APP");
        main.event.ik.command.IkScriptCommand.PlayInstallMotionRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1040_talk_33", "main_02_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayInstallRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAwayInstall("Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.25, 1.54, 3.26]), lua.Table.create([-10.58, 38.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_researcher", "head");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_34", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_35", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var dynMainResearcherAnimation4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_36", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainResearcherAnimation4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.87, 1.45, 1.75]), lua.Table.create([3.89, 34.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_37", "main_02_01", "dyn_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1040_talk_38", "main_02_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
