package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CBAF541483423F17A")
@:expose("CBAF541483423F17A")
class Ev_m04_4040 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(9)
    public var CHR_KANA:Dynamic;

    @:abiSlot(10)
    public var CHR_PLY:Dynamic;

    @:abiSlot(11)
    public var CHR_OTAKU:Dynamic;

    @:abiSlot(12)
    public var POKE_SIBIRUDON:Dynamic;

    @:abiSlot(13)
    public var FLD_POKE_SIBIRUDON:Dynamic;

    public function new()
    {
        this.FLD_POKE_SIBIRUDON = "main_sibirudon";
        this.POKE_SIBIRUDON = "dyn_sibi";
        this.CHR_OTAKU = "npc_main04_0004";
        this.CHR_PLY = "npc_main_ju_leader";
        this.CHR_KANA = "npc_main_holo_ga_boss";
        this.CHR_MUKU = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_holo_ga_boss", "npc_main_ju_leader", "npc_main04_0004", "npc_main_041100_0003", "npc_main_041100_0004", "npc_main_041100_0005", "npc_main_041100_0006", "npc_main_041100_0007", "npc_main_041100_0008", "npc_main_041100_0009", "npc_main_041100_0011", "npc_main_041100_0012", "npc_main_041100_0013"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_OFF");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_SIBIRUDON, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "normal", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 1);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.POKE_SIBIRUDON, lua.Table.create([(-72.39), 1.42, (-446.49)]), 46.84, "npc_poke_holo_sibirudon");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_SIBIRUDON, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "normal", this.CHR_MUKU);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", "npc_main_ju_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_KANA, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0003", "normal", "npc_main_041100_0003");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0004", "normal", "npc_main_041100_0004");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0005", "normal", "npc_main_041100_0005");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0006", "normal", "npc_main_041100_0006");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0007", "normal", "npc_main_041100_0007");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0008", "normal", "npc_main_041100_0008");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0009", "normal", "npc_main_041100_0009");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0011", "normal", "npc_main_041100_0011");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0012", "normal", "npc_main_041100_0012");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0013", "normal", "npc_main_041100_0013");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, (-72.81), 1.44, (-445.57), 71.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-69.2), 0.14, (-428.61), (-154.1));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_SIBIRUDON, (-72.39), 1.42, (-446.49), 46.84);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-72.02), 2.59, (-446.23)]), lua.Table.create([11.67, 133.14, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "rejoice_small", "npc_main_holo_ga_boss");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_04");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4040_talk_01", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-72.09), 2.71, (-445.33)]), lua.Table.create([7.69, 71.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "normal", "npc_main_holo_ga_boss");
        this.TimeWait(0.5);
        var chrKANAAnimation:Dynamic = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 28));
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4040_talk_02", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrKANAAnimation);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        chrKANAAnimation = (main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_KANA));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-64.39), 0.15, (-432.01), (-157.21));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-69.2), 0.14, (-428.61), (-154.1));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, (-68.38), 0.15, (-432.35), (-150.7));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", (-64.38), 0.14, (-451.68), (-97.14));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", (-66.93), 0.14, (-434.12), (-135.39));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0013", (-59.52), 0.14, (-453.35), (-62.11));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", (-65.58), 0.14, (-429.09), (-146.19));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0009", (-67.36), 0.14, (-429.15), (-149.63));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0012", (-60.96), 0.14, (-451.11), (-100.23));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", (-65.33), 0.14, (-434.27), (-147.9));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0006", (-61.9), 0.14, (-450.11), (-70.89));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0003", (-63.34), 0.14, (-453.38), (-84.98));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0011", (-70.48), 0.14, (-431.92), (-170.57));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0008", (-60.84), 0.14, (-457.03), (-85.84));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0010", (-59.95), 0.14, (-457.27), (-68.79));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrKANAAnimation);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-71.7), 2.62, (-445.2)]), lua.Table.create([7.69, 71.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "rejoice_small", "npc_main_holo_ga_boss");
        chrKANAAnimation = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 174));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_05");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4040_talk_11", "main_04_01", "npc_main_holo_ga_boss", true, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrKANAAnimation);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        chrKANAAnimation = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 333));
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4040_talk_12", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrKANAAnimation);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "serious", "npc_main_holo_ga_boss");
        chrKANAAnimation = (main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_KANA));
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4040_talk_13", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrKANAAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-70.36), 1.69, (-445.96)]), lua.Table.create([10.59, 86.5, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        this.k_HoloEffect(this.POKE_SIBIRUDON, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "rejoice_small", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4040_talk_14", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_M04_PV_0604_00_GLAD2", lua.Table.create([(-72.39), 1.42, (-446.49)]));
        var pokeSIBIRUDONAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 20);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_RESET");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pokeSIBIRUDONAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-61.76), 3.74, (-424.13)]), lua.Table.create([(-16.36), 28.37, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0011", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0006", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0003", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0008", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0010", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0013", 22);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_QUIZ_CORRECT_ANSWER");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4040_talk_03", "main_04_01", this.CHR_OTAKU, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template(this.CHR_MUKU, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 20));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-70.36), 1.69, (-445.96)]), lua.Table.create([10.59, 86.5, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "battle", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 33);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4040_talk_04", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 1);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0003");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0004");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0005");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0006");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0009");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0012");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0010");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0011");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0007");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0013");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-66.56), 0.16, (-443.9), (-111.02));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-70.24), 0.14, (-442.58), (-155.43));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, (-68.18), 0.14, (-445.06), (-103.21));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0003", (-69.16), 0.14, (-446.86), (-84.98));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", (-68.25), 0.14, (-445.93), (-99.64));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", (-70.96), 0.14, (-442.06), (-147.94));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0006", (-69.57), 0.14, (-441.71), (-155.07));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0009", (-69.79), 0.14, (-443.56), (-120.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0012", (-68.49), 0.14, (-444.02), (-131.23));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0010", (-62.63), 0.14, (-450.9), (-89.39));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", (-69.13), 0.14, (-448.76), (-64.27));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0013", (-67.59), 0.14, (-447.47), (-75.2));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 143);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0003", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 143);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-65.34), 1.56, (-444.11)]), lua.Table.create([(-4.81), 84.59, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_OTAKU, this.CHR_MUKU));
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4040_talk_06", "main_04_01", this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4040_talk_07", "main_04_01", this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-66.92), 1.91, (-444.82)]), lua.Table.create([(-26.86), (-157.5), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4040_talk_08", "main_04_01", "npc_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4040_talk_09", "main_04_01", "npc_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4040_talk_10", "main_04_01", "npc_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_ON");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_SIBIRUDON, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_OTAKU, this.CHR_KANA);
        main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
    }

    @:hashAbi("FBDD58087485296DE")
    public function k_HoloEffect(?OBJ_NAME:Dynamic, ?visibility:Dynamic):Dynamic
    {
        var effectKey:String = "holo_disapp_chara02";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara02", effectKey);
        this.Await(function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        });
        var position:lua.Table<Int, Float> = (cast main.event.ik.command.IkScriptCommand.FObj_Get_Pos(OBJ_NAME));
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle(OBJ_NAME);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, (cast position)[1], ((cast position)[2] + 0.5), (cast position)[3]);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey, 0, angle, 0);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(OBJ_NAME, visibility);
        return null;
    }
}
