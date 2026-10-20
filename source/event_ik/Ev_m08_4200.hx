package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD0E15C415A5D8264")
@:expose("CD0E15C415A5D8264")
class Ev_m08_4200 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_main_nu_boss_f", "ob0004_00_normal_09");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-541.07), 0.01, (-585.83), 118.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_m", (-539.47), 0.64, (-586.88), (-56.28));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_f", (-542.37), 0.0, (-587.15), 44.56);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_riza", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-546.86), 1.65, (-585.73)]), lua.Table.create([(-5.05), (-74.62), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([(-546.58), 1.65, (-584.69)]), lua.Table.create([(-5.05), (-74.62), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        var femaleBossDislike = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 23);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_20", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-542.93), 1.37, (-585.66)]), lua.Table.create([3.44, (-76.91), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(femaleBossDislike);
        var femaleBossReset = main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var maleBossGreeting = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_01", "main_08_01", "npc_main_nu_boss_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4200_select_01", "msg_Ev_m08_4200_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(femaleBossReset);
        var femaleBossIdle = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_f", 2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        var playerGreeting = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossGreeting);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerGreeting);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-540.93), 1.85, (-586.34)]), lua.Table.create([4.7, (-77.37), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_m", "rejoice_big_mc", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_nu_boss_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_m", "normal", "npc_main_nu_boss_m");
        var maleBossDislike = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 23);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_02", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_03", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossDislike);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(femaleBossIdle);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-551.13), 5.42, (-585.61)]), lua.Table.create([(-23.4), (-83.6), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([(-549.52), 4.72, (-585.79)]), lua.Table.create([(-23.4), (-83.6), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_04", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-541.38), 1.76, (-585.54)]), lua.Table.create([6.19, (-54.75), (-0.0)]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_f", 1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(6.0, lua.Table.create([(-540.56), 1.94, (-586.12)]), lua.Table.create([11.07, (-54.76), 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_05", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_06", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("npc_main_nu_boss_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_m", "serious", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_07");
        var maleBossExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_07", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossExplanation);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-541.35), 1.42, (-584.66)]), lua.Table.create([3.24, (-26.03), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var maleBossReply = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_08", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossReply);
        var maleBossReaction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_09", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossReaction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-542.94), 1.88, (-582.88)]), lua.Table.create([(-7.63), (-27.22), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var maleBossLongExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_nu_boss_m", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_10", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var femaleBossReaction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_f", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_11", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(maleBossLongExplanation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(femaleBossReaction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "anger", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-542.07), 1.54, (-585.64)]), lua.Table.create([(-4.07), 3.19, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_m", "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 24);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_4200_talk_12", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-541.33), 1.33, (-583.64)]), lua.Table.create([1.1, (-6.37), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_m", "npc_main_nu_boss_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var maleBossAnswer = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_13", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(maleBossLongExplanation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossAnswer);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 30);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_4200_talk_14", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-538.63), 2.58, (-586.24)]), lua.Table.create([(-24.08), 74.68, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var maleBossFarewell = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_15", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossFarewell);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_nu_boss_m", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_16", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "anger_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-539.86), 1.44, (-585.84)]), lua.Table.create([(-2.23), 75.92, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_nu_boss_f"));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "normal", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_nu_boss_f"));
        main.event.ik.command.IkScriptCommand.StartRotomPhoneInstallSequence("Player");
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_INSTALL_APP");
        main.event.ik.command.IkScriptCommand.PlayInstallMotionRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var femaleBossFarewell = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_17", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(femaleBossFarewell);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-543.53), 2.43, (-583.22)]), lua.Table.create([(-13.95), (-33.71), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 14);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_18", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PutAwayInstallRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAwayInstall("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_m", "head");
        var playerTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 120.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurn);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 14);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4200_talk_19", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-543.78), 0.01, (-583.35), (-52.95));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
