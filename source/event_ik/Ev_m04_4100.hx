package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC3AC544839177CC9")
@:expose("CC3AC544839177CC9")
class Ev_m04_4100 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_OTAKU:Dynamic;

    @:abiSlot(9)
    public var FLD_POKE_SIBIRUDON:Dynamic;

    @:abiSlot(10)
    public var POKE_SIBIRUDON:Dynamic;

    @:abiSlot(11)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(12)
    public var CHR_KANA:Dynamic;

    @:abiSlot(13)
    public var CHR_PLY:Dynamic;

    public function new()
    {
        this.CHR_PLY = "main_sibirudon";
        this.CHR_KANA = "dyn_sibi";
        this.CHR_MUKU = "npc_main04_0004";
        this.POKE_SIBIRUDON = "npc_main_ju_leader";
        this.FLD_POKE_SIBIRUDON = "npc_main_holo_ga_boss";
        this.CHR_OTAKU = "Player";
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
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var messageLabel:Dynamic = "ef_concentration_line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", messageLabel);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(messageLabel);
        }));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_OTAKU, "normal", this.CHR_OTAKU);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_small_mc", "npc_main_ju_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_POKE_SIBIRUDON, "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.FLD_POKE_SIBIRUDON, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 143);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KANA, lua.Table.create([(-72.39), 1.42, (-446.49)]), 46.84, "npc_poke_holo_sibirudon");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_PLY, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-68.83), 0.14, (-444.99), (-106.24));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_SIBIRUDON, (-69.36), 0.14, (-443.89), (-115.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.FLD_POKE_SIBIRUDON, (-72.81), 1.43, (-445.57), 71.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0003", (-67.7), 0.14, (-439.85), (-145.64));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", (-67.79), 0.14, (-445.75), (-98.43));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", (-68.74), 0.14, (-440.39), (-147.94));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0006", (-65.99), 0.14, (-441.34), (-127.15));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", (-68.42), 0.14, (-446.31), (-80.96));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0008", (-65.33), 0.14, (-448.38), (-66.67));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0009", (-65.5), 0.14, (-447.25), (-90.56));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0010", (-66.61), 0.15, (-440.29), (-147.97));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0011", (-64.84), 0.14, (-444.95), (-94.02));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0012", (-65.52), 0.14, (-442.56), (-110.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0013", (-64.65), 0.14, (-446.12), (-90.11));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, (-68.29), 0.15, (-444.33), (-109.14));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_OTAKU, this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_SIBIRUDON, this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0004", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0005", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0006", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0007", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0008", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0009", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0010", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0011", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0012", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0013", this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0003", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0006", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0008", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0013", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0010", 143);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-66.84), 1.64, (-444.07)]), lua.Table.create([3.73, 71.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-66.84), 1.85, (-444.07)]), lua.Table.create([3.73, 71.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_02");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_SIBIRUDON, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 1));
        var pendingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0010", 143);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0011", 143);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 143);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_POKE_SIBIRUDON, "rejoice_small_mc", "npc_main_ga_boss");
        pendingAction = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 29));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-70.28), 2.02, (-445.81)]), lua.Table.create([9.32, 93.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4100_talk_05", "main_04_01", this.FLD_POKE_SIBIRUDON, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-72.04), 1.98, (-445.88)]), lua.Table.create([(-11.8), (-114.31), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_POKE_SIBIRUDON, "normal", "npc_main_ga_boss");
        pendingAction = (main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.FLD_POKE_SIBIRUDON));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH03");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_S");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4100_talk_16", "main_04_01", this.FLD_POKE_SIBIRUDON, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-71.88), 2.8, (-445.26)]), lua.Table.create([0.0, 71.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        pendingAction = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 333));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_M");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4100_talk_16", "main_04_01", this.FLD_POKE_SIBIRUDON, true, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        pendingAction = (main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.FLD_POKE_SIBIRUDON));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4100_talk_06", "main_04_01", this.FLD_POKE_SIBIRUDON, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 491);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
            pendingAction = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 77));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-71.88), 1.27, (-447.68)]), lua.Table.create([(-1.6), (-125.73), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(messageLabel);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 18);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_L");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4100_talk_07", "main_04_01", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(messageLabel);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0006", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main04_0004", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0013", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0011", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0010", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 144);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0008", 144);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-74.11), 3.2, (-446.67)]), lua.Table.create([(-22.53), (-112.57), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4100_talk_17", "main_04_01", this.FLD_POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4100_talk_18", "main_04_01", this.FLD_POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-69.28), 1.39, (-446.87)]), lua.Table.create([(-15.99), (-126.16), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_4100_talk_19", "main_04_01", "npc_main_041100_0007", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 2);
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0007", "rejoice_small", "npc_main_041100_0007");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-68.75), 1.59, (-446.24)]), lua.Table.create([0.0, (-116.97), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_4100_talk_20", "main_04_01", "npc_main_041100_0004", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 2);
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0004", "rejoice_small", "npc_main_041100_0004");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-69.94), 1.19, (-444.64)]), lua.Table.create([12.18, (-140.73), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_4100_talk_21", "main_04_01", this.POKE_SIBIRUDON, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 2);
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "rejoice_small", "npc_main_ju_leader");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-69.92), 1.54, (-445.23)]), lua.Table.create([0.0, (-101.03), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_4100_talk_22", "main_04_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 2);
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "rejoice_small", scenario[11]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-68.7), 1.8, (-445.15)]), lua.Table.create([(-18.82), (-150.76), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MUKU, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 1);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MUKU, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-65.52), 1.28, (-446.37)]), lua.Table.create([(-1.22), 106.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var chrKANAAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4100_talk_08", "main_04_01", this.FLD_POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrKANAAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-71.89), 2.79, (-445.27)]), lua.Table.create([0.0, 72.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        pendingAction = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 1));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_FADEOUT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_SILENCE");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_QUIZ_QUESTION02");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_03_A");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4100_talk_09", "main_04_01", this.FLD_POKE_SIBIRUDON, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-70.36), 1.47, (-445.96)]), lua.Table.create([16.28, 86.5, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.FLD_POKE_SIBIRUDON, "rejoice_small", this.FLD_POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4100_talk_23", "main_04_01", this.FLD_POKE_SIBIRUDON);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_M04_PV_0604_00_GLAD2", lua.Table.create([(-72.39), 1.42, (-446.49)]));
        chrKANAAnimation = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 20));
        pendingAction = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 29));
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4100_talk_24", "main_04_01", this.FLD_POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrKANAAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MUKU, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-69.26), 1.58, (-444.67)]), lua.Table.create([(-6.25), (-105.45), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 28));
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4100_talk_10", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4100_talk_11", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_01");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4100_talk_12", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_OTAKU);
        var chrOTAKUAnimation:Dynamic = (main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_OTAKU));
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4100_talk_13", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrOTAKUAnimation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 18));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped this.m_resultParam = 0;
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MUKU, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_PLY, true);
    }
}
