package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CBAFFB348342D07B5")
@:expose("CBAFFB348342D07B5")
class Ev_m04_4030 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_KANA:Dynamic;

    @:abiSlot(10)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var CHR_OTAKU:Dynamic;

    public function new()
    {
        this.CHR_OTAKU = "npc_main04_0004";
        this.slot11 = "npc_main04_0003";
        this.CHR_MUKU = "npc_main_ju_leader";
        this.CHR_KANA = "npc_main_holo_ga_boss";
        this.CHR_PLY = "Player";
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
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "normal", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, (-72.84), 1.44, (-446.27), 71.96);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_OFF");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-72.22), 2.66, (-446.82)]), lua.Table.create([11.67, 133.14, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_a", lua.Table.create([(-68.37), 0.14, (-442.61)]), (-133.45), "npc_main_041100_0010");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_04");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "rejoice_small", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4030_talk_01", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-72.23), 2.7, (-446.07)]), lua.Table.create([12.99, 71.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "normal", "npc_main_holo_ga_boss");
        this.TimeWait(0.5);
        var animationHandle:Dynamic = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 28));
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4030_talk_02", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        animationHandle = (main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_KANA));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-57.96), 0.16, (-455.3), (-56.94));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-61.12), 0.15, (-458.12), (-53.66));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, (-62.38), 0.15, (-454.21), (-49.61));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0003", (-57.54), 0.14, (-457.13), (-62.97));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", (-59.88), 0.15, (-452.33), (-76.52));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", (-63.0), 0.15, (-451.99), (-94.02));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0008", (-63.41), 0.15, (-455.85), (-52.43));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_a", (-57.18), 0.14, (-452.41), (-78.45));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0012", (-59.78), 0.14, (-457.55), (-49.21));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", (-69.69), 0.14, (-434.29), (-148.17));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0006", (-71.09), 0.14, (-434.34), (-137.13));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0009", (-68.46), 0.15, (-436.38), (-128.84));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0011", (-70.37), 0.14, (-436.62), (-116.94));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0013", (-71.44), 0.14, (-430.51), (-110.29));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-71.6), 2.45, (-445.86)]), lua.Table.create([12.99, 71.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "anger", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 175);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_05");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4030_talk_07", "main_04_01", "npc_main_holo_ga_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "lose", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4030_talk_08", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-52.88), 3.74, (-456.7)]), lua.Table.create([(-16.36), 110.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0003", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0008", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_a", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0006", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0011", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 22);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_RESET");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_QUIZ_CORRECT_ANSWER");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4030_talk_03", "main_04_01", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template(this.CHR_PLY, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 20));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_SILENCE");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE2_SILENCE_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE1_SILENCE");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_KANA);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0007");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0011");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0008");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0003");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0004");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_041100_0012");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_a");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-66.56), 0.16, (-443.9), (-111.02));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, (-69.68), 0.14, (-445.18), (-103.21));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-70.24), 0.14, (-442.58), (-155.43));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0003", (-69.16), 0.14, (-446.86), (-84.98));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", (-68.09), 0.14, (-445.68), (-99.64));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", (-70.96), 0.14, (-442.06), (-147.94));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0006", (-69.57), 0.14, (-441.71), (-155.07));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", (-69.13), 0.14, (-448.76), (-64.27));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0008", (-68.56), 0.14, (-447.5), (-81.56));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0009", (-69.79), 0.14, (-443.56), (-120.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_a", (-68.37), 0.14, (-442.61), (-133.45));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0011", (-66.91), 0.14, (-446.04), (-94.02));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0012", (-68.33), 0.14, (-443.89), (-131.23));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0013", (-66.03), 0.14, (-447.1), (-82.29));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-61.83), 3.77, (-445.9)]), lua.Table.create([(-20.2), 101.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-61.12), 3.77, (-446.99)]), lua.Table.create([(-20.2), 101.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-71.6), 2.55, (-446.21)]), lua.Table.create([9.22, 93.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-71.81), 2.62, (-446.2)]), lua.Table.create([9.22, 93.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "anger", "npc_main_holo_ga_boss");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_03_A");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_QUIZ_QUESTION02");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4030_talk_04", "main_04_01", "npc_main_holo_ga_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-71.95), 2.66, (-446.2)]), lua.Table.create([9.22, 93.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4030_talk_09", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-67.43), 1.57, (-444.48)]), lua.Table.create([(-6.25), (-121.11), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 28));
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4030_talk_05", "main_04_01", "npc_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_ON");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
