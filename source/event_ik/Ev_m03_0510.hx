package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE40014B66BBB0CAB")
@:expose("CE40014B66BBB0CAB")
class Ev_m03_0510 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([(-367.21), (-1.51), (-688.25)]), 113.02, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_trainer_rankY_rankup", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("tmp_dny_ol_f_00", lua.Table.create([(-361.34), (-1.51), (-691.49)]), (-36.5), "npc_ol_f_00");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("tmp_dny_ol_f_00", "sad2");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-362.2), (-1.49), (-690.34), 159.05);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-361.73), 0.01, (-688.85)]), lua.Table.create([(-9.24), 3.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_dny_ol_f_00", 22);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0510_talk_01", "main_03_01", "tmp_dny_ol_f_00");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0510_talk_07", "main_03_01", "tmp_dny_ol_f_00");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("tmp_dny_ol_f_00", (-363.12), (-1.5), (-705.17), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_dny_ol_f_00", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-154.45));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-362.11), (-0.19), (-691.41)]), lua.Table.create([2.02, 170.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("tmp_dny_ol_f_00", false);
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter("tmp_dny_ol_f_00");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0510_sys_02", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0510_sys_03", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m03_0510_sys_04", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-362.2), (-1.5), (-690.34), 172.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", (-363.72), (-1.51), (-689.73), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-365.66), 0.05, (-689.84)]), lua.Table.create([(-9.62), 143.39, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.1, lua.Table.create([(-361.53), (-0.0), (-691.72)]), lua.Table.create([(-9.62), 143.39, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-65.8));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0510_talk_05", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0510_talk_06", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_03_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_ON");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
