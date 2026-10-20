package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6FAF275126FA3B22")
@:expose("C6FAF275126FA3B22")
class Ev_m04_5050 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ga_boss", "npc_main_ga_leader"]);
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ga_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ga_leader", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.25, 0.01, -10.79, 95.02);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ga_leader", lua.Table.create([16.7, 0.0, -9.19]), -174.51, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ga_boss", lua.Table.create([16.54, 0.01, -10.78]), -84.01, "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.23, 1.37, -10.4]), lua.Table.create([0.17, 62.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_leader", "dyn_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ga_boss", false);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_5050_sys_01", "main_04_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_5050_sys_02", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m04_5050_sys_03", "main_04_01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.34, 0.01, -9.27, 95.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ga_boss", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.07, 1.35, -10.54]), lua.Table.create([-2.73, -84.47, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var dynMainGaBossAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_5050_OTAKU_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([15.54, 1.43, -10.68]), lua.Table.create([-2.73, -84.47, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage_Auto(0.7, 1, "msg_Ev_m04_5050_talk_01", "main_04_01", "dyn_main_ga_boss", false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_5050_OTAKU_WHOOSH03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.35, 1.11, -10.41]), lua.Table.create([2.94, -49.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([15.64, 1.11, -10.14]), lua.Table.create([2.94, -49.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.25, 0.01, -10.79, 95.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        var dynMainGaBossAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 24);
        main.event.ik.command.IkScriptCommand.ShowMessage_Auto(1.0, 1, "msg_Ev_m04_5050_talk_02", "main_04_01", "dyn_main_ga_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.51, 1.44, -10.7]), lua.Table.create([-3.37, -85.79, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_ga_boss", false);
        main.event.ik.command.IkScriptCommand.ShowMessage_Auto(3.0, 0, "msg_Ev_m04_5050_talk_03", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation2);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_ga_boss", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.47, 1.68, -11.47]), lua.Table.create([-16.83, -136.35, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_leader", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_boss", "dyn_main_ga_leader", "head");
        var dynMainGaBossTurn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ga_boss", 16.49);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_17", "main_04_01", "dyn_main_ga_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ga_boss");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.75, 0.85, -8.98]), lua.Table.create([14.04, 6.87, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ga_leader", false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "surprise_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_ga_boss", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([16.63, 1.22, -9.99]), lua.Table.create([14.04, 6.87, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_04_SUS");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_5050_talk_14", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ga_leader", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_ga_boss", true);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.64, 1.55, -11.3]), lua.Table.create([-13.07, -135.59, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_leader", 23);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_15", "main_04_01", "dyn_main_ga_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.64, 1.24, -9.86]), lua.Table.create([9.4, 6.77, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var dynMainGaBossAnimation3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "rejoice_small_mc");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_02_SUS");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_16", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([17.56, 1.54, -9.95]), lua.Table.create([-7.97, 59.45, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ga_boss", -84.01));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        var dynMainGaBossAnimation4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.5, 1.09, -10.16]), lua.Table.create([9.77, -59.63, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage_Auto(1.5, 0, "msg_Ev_m04_5050_talk_04", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.34, 1.53, -9.94]), lua.Table.create([-10.35, -58.19, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_05", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var dynMainGaBossAnimation5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_06", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.68, 1.6, -11.76]), lua.Table.create([-10.61, -139.41, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.8, lua.Table.create([15.88, 1.54, -11.53]), lua.Table.create([-10.61, -139.41, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var dynMainGaBossAnimation6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_07", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation6);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.71, 1.37, -10.26]), lua.Table.create([0.89, -57.02, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var dynMainGaBossAnimation7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 74);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_18", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.29, 1.36, -10.44]), lua.Table.create([-0.46, 72.91, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var playerAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_WAZAMASIN72", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.71, 1.37, -10.26]), lua.Table.create([0.89, -57.02, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var dynMainGaBossAnimation8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 74);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_08", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.29, 1.36, -10.44]), lua.Table.create([-0.46, 72.91, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var playerAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m04_5050_talk_19", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowImportantItemWindow("ITEMID_SAINIRINONUI", true);
        main.event.ik.command.IkScriptCommand.Wait_End_ImportantItemWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.34, 1.54, -9.71]), lua.Table.create([-10.28, -58.1, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.7, lua.Table.create([14.23, 1.54, -9.88]), lua.Table.create([-10.28, -58.1, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_09", "main_04_01", "dyn_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal");
        var dynMainGaBossAnimation9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_10", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainGaBossAnimation9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 29);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5050_talk_11", "main_04_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_04_05");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_SUS");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_03");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
    }
}
