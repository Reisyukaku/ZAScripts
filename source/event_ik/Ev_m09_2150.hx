package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C8A7A37B7C2A7A257")
@:expose("C8A7A37B7C2A7A257")
class Ev_m09_2150 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var slot14:Dynamic;

    @:abiSlot(15)
    public var slot15:Dynamic;

    @:abiSlot(16)
    public var slot16:Dynamic;

    @:abiSlot(17)
    public var slot17:Dynamic;

    @:abiSlot(18)
    public var slot18:Dynamic;

    public function new()
    {
        this.slot18 = "dyn_game_5";
        this.slot17 = "dyn_game_4";
        this.slot16 = "dyn_game_3";
        this.slot15 = "dyn_game_2";
        this.slot14 = "dyn_game_1";
        this.slot13 = "dyn_spia2";
        this.slot12 = "dyn_spia1";
        this.slot11 = "dyn_mimi";
        this.slot10 = "dyn_tara";
        this.slot9 = "dyn_kana";
        this.slot8 = "Player";
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
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_EVENT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_01", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_02", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_03", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_05", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_04", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_MIMIROP", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_SUPIAA_01", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_SUPIAA_02", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-590.2), 0.28, (-431.67)]), (-77.11), "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([(-590.2), 0.28, (-431.67)]), (-77.11), "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot14, lua.Table.create([(-590.2), 0.28, (-431.67)]), 162.98, "npc_ga_member_m_00");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot15, lua.Table.create([(-590.2), 0.28, (-431.67)]), (-149.26), "npc_ga_member_m_01");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot16, lua.Table.create([(-590.2), 0.28, (-431.67)]), 156.65, "npc_ga_member_m_02");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot17, lua.Table.create([(-590.2), 0.28, (-431.67)]), (-148.05), "npc_ga_member_m_03");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot18, lua.Table.create([(-590.2), 0.28, (-431.67)]), 156.65, "npc_ga_member_f_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot11, lua.Table.create([(-590.2), 0.28, (-431.67)]), 20.55, 428, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot12, lua.Table.create([(-590.2), 0.28, (-431.67)]), 20.55, 15, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot13, lua.Table.create([(-590.2), 0.28, (-431.67)]), 20.55, 15, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot11);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot12);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot13);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-590.2), 0.28, (-431.67), (-62.65));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-590.01), (-0.0), (-461.21), 25.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-591.1), 0.0, (-460.62), 18.93);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot14, (-593.4), 0.27, (-457.28), 162.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot15, (-588.46), 0.0, (-463.49), (-149.26));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot16, (-593.51), 0.0, (-459.53), 156.65);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot17, (-587.45), 0.0, (-463.07), (-148.05));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot18, (-596.26), 0.16, (-456.2), 156.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-593.26), 0.0, (-468.61), 20.55);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, (-597.15), 0.0, (-467.16), 20.55);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, (-590.36), 0.0, (-469.9), 20.55);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-592.69), 1.7, (-423.73)]), lua.Table.create([0.0, (-30.39), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-593.08), 1.7, (-423.06)]), lua.Table.create([0.0, (-30.39), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_2150_talk_09", "main_09_01", this.slot10, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 20);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.34), 1.45, (-430.44)]), lua.Table.create([0.0, (-42.14), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot8, (-160.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.slot8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-592.63), 0.22, (-460.72)]), lua.Table.create([28.35, (-111.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-593.15), (-0.08), (-460.92)]), lua.Table.create([28.35, (-111.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 29);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2150_talk_01", "main_09_01", this.slot10, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 31);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2150_talk_02", "main_09_01", this.slot9, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 40);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-589.65), 0.91, (-458.27)]), lua.Table.create([0.02, 20.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-589.71), 0.91, (-458.44)]), lua.Table.create([0.02, 20.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "surprise_mc", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "surprise_mc", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 40);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 40);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, (-163.97));
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "serious", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, (-176.27));
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.8), 1.55, (-471.96)]), lua.Table.create([(-7.97), (-172.92), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-591.88), 1.63, (-472.54)]), lua.Table.create([(-7.97), (-172.92), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.slot9);
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.slot10);
        var slot9Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2150_talk_03", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var slot10Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 23);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2150_talk_04", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-590.01), 1.4, (-462.75)]), lua.Table.create([(-9.54), 166.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot9Animation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2150_talk_05", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot10Animation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_small", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2150_talk_06", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-588.28), 1.06, (-468.54)]), lua.Table.create([(-3.51), 164.08, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m09_2150_talk_07", "main_09_01", this.slot10, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "serious", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 491);
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[14], 491);
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[15], 491);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m09_2150_talk_08", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 491);
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[18], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[16], 491);
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[17], 491);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot18, 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-590.21), 0.29, (-431.67), (-160.0));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-590.77), 1.29, (-429.66)]), lua.Table.create([0.84, (-2.54), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-590.8), 1.29, (-429.17)]), lua.Table.create([0.84, (-2.54), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "serious", this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot8, (-60.0));
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_BATTLE");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
