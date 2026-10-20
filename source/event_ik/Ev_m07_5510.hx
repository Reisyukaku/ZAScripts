package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CFF2B1511A0A398BE")
@:expose("CFF2B1511A0A398BE")
class Ev_m07_5510 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_YUKA:Dynamic;

    @:abiSlot(11)
    public var CHR_HAL:Dynamic;

    @:abiSlot(12)
    public var CHR_KANA:Dynamic;

    @:abiSlot(13)
    public var CHR_TARA:Dynamic;

    @:abiSlot(14)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(15)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(16)
    public var CHR_KARA:Dynamic;

    @:abiSlot(17)
    public var CHR_JIPU:Dynamic;

    public function new()
    {
        this.CHR_JIPU = "dyn_jipu";
        this.CHR_KARA = "dyn_kara";
        this.CHR_MUKU = "dyn_muku";
        this.CHR_SIRO = "dyn_siro";
        this.CHR_TARA = "dyn_tara";
        this.CHR_KANA = "dyn_kana";
        this.CHR_HAL = "dyn_hal";
        this.CHR_YUKA = "dyn_yuka";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_boss", "npc_main_pa_leader", "npc_main_ga_boss", "npc_main_ga_leader", "npc_main_ju_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader"]);
        main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_YUKA, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KANA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_TARA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KARA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_JIPU, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_HAL, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_YUKA, "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.83, 0.03, (-14.5), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, 15.68, 0.03, (-12.23), 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 18.69, 0.02, (-6.99), (-169.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, 14.87, 0.03, (-0.8), (-179.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 26.43, 0.02, (-7.69), (-118.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, 15.62, 0.03, (-0.61), 172.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, 13.05, 0.03, (-1.84), 166.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, 13.8, 0.03, (-0.7), 171.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, 26.13, 0.03, (-6.38), (-125.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JIPU, 27.25, 0.03, (-4.6), (-125.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.62, 1.73, (-16.04)]), lua.Table.create([(-4.98), (-155.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([14.62, 1.32, (-16.04)]), lua.Table.create([(-4.98), (-155.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 15);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_5510_talk_01", "main_07_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_5510_talk_02", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m07_5510_talk_03", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.2, 1.63, (-13.8)]), lua.Table.create([(-13.35), (-161.35), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_YUKA, 33, null, 5.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_04", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_05", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KARA, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JIPU, 31);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KARA, "rejoice_small_mc", "npc_main_co_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JIPU, "rejoice_small_mc", "npc_main_co_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "rejoice_small_mc", "npc_main_pa_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "rejoice_small_mc", "npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "rejoice_small_mc", "npc_main_ga_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "rejoice_small_mc", "npc_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "rejoice_small_mc", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.73, 1.63, (-5.35)]), lua.Table.create([(-6.44), 175.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([13.93, 1.63, (-5.42)]), lua.Table.create([(-6.44), 175.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_06", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([23.88, 1.57, (-7.67)]), lua.Table.create([(-6.44), (-114.25), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([24.11, 1.57, (-8.18)]), lua.Table.create([(-6.44), (-114.25), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_07", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 1);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.2, 1.63, (-13.8)]), lua.Table.create([(-13.35), (-161.35), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_08", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_OFF");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.12, 1.3, (-15.21)]), lua.Table.create([(-2.53), (-150.71), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_YUKA, 15.69, 0.02, (-13.45), 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_09", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_12", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 74);
        main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_WAZAMASIN34", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 30);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_11", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 30);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.73, 1.37, (-13.03)]), lua.Table.create([(-5.28), (-48.45), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_07_05");
        this.TimeWait(0.5);
        var animationHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_YUKA);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.47, 3.12, (-22.21)]), lua.Table.create([(-9.96), (-145.07), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([8.94, 3.59, (-24.4)]), lua.Table.create([(-9.96), (-145.07), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 31);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5510_talk_10", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HAND_CLAP_2D");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS_4S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_ON");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
    }
}
