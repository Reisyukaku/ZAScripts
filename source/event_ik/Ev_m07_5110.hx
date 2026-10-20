package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDC8569118D040AD2")
@:expose("CDC8569118D040AD2")
class Ev_m07_5110 extends BaseMainScenario
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
        var scenario:Ev_m07_5110 = this;
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KANA, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_YUKA, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.83, 0.03, (-14.5), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, 15.47, 0.03, (-12.82), 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, 14.76, 0.02, (-16.02), 36.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_pa_leader", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.87, 1.75, (-15.49)]), lua.Table.create([(-6.6), (-155.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([14.87, 1.52, (-15.49)]), lua.Table.create([(-6.6), (-155.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "anger", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 24);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M07_5110_OTAKU_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m07_5110_talk_01", "main_07_01", this.CHR_KANA, true, true);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M07_5110_OTAKU_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m07_5110_talk_02", "main_07_01", this.CHR_KANA, true, true);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5110_talk_03", "main_07_01", this.CHR_KANA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.68, 1.47, (-13.31)]), lua.Table.create([(-6.57), 5.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 20);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5110_talk_04", "main_07_01", this.CHR_YUKA, null, null, (function():Dynamic
        {
            scenario.TimeWait(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.CHR_PLY, "surprise2", scenario.CHR_PLY);
            scenario.TimeWait(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.CHR_PLY, "normal", scenario.CHR_PLY);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario.CHR_PLY, scenario.CHR_YUKA);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5110_talk_05", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_TARA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KARA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_JIPU, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_HAL, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.71, 0.03, (-16.34), 54.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 18.53, 0.03, (-14.59), 56.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, 21.76, 0.03, (-12.21), (-90.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 22.66, 0.03, (-10.16), (-108.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, 14.14, 0.03, (-14.82), 65.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, 12.58, 0.03, (-14.72), 48.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, 12.69, 0.03, (-11.08), 120.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, 13.17, 0.03, (-10.07), 119.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, 18.71, 0.03, (-10.48), 116.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JIPU, 18.4, 0.03, (-9.41), 137.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.86, 3.33, (-13.47)]), lua.Table.create([(-3.87), (-95.34), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([7.86, 1.71, (-13.47)]), lua.Table.create([(-3.87), (-95.34), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5110_talk_06", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5110_talk_07", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5110_talk_08", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
