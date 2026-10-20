package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C8A6C9FB7C29C15B3")
@:expose("C8A6C9FB7C29C15B3")
class Ev_m09_2110 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    public function new()
    {
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
        main.event.ik.command.IkScriptCommand.S726C2890C3D75149("t1_lb_tower", "t1_lb_tower", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-641.79), 6.0, (-449.11)]), 80.38, "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([(-636.54), 6.01, (-448.24)]), (-88.14), "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_01", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_02", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_03", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_04", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main09_ga_member_05", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-642.04), 6.01, (-448.07), 89.08);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-635.64), 8.13, (-445.88)]), lua.Table.create([(-13.61), 66.22, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 1);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-640.73), 7.35, (-447.34)]), lua.Table.create([(-3.26), 45.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, (-10.92));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot8, (-171.3));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_small_mc", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2110_talk_01", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 30);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2110_talk_02", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 74);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 74);
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-636.44), 6.01, (-448.73), (-97.79));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, (-639.6), 6.01, (-448.65), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-643.99), 7.22, (-446.28)]), lua.Table.create([(-3.44), (-56.72), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-643.9), 7.22, (-446.17)]), lua.Table.create([(-8.02), (-48.7), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2110_talk_03", "main_09_01", this.slot10, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[10]);
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[9], scenario[10]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-604.15), 6.12, (-475.73)]), lua.Table.create([4.25, (-73.85), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([(-600.85), 6.12, (-464.3)]), lua.Table.create([4.25, (-73.85), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-640.31), 6.01, (-448.69), (-88.14));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2110_talk_04", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2110_talk_05", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-641.71), 7.1, (-448.05)]), lua.Table.create([(-5.91), (-56.79), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2110_talk_06", "main_09_01", this.slot10, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 29);
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "rejoice_small_mc", "npc_main_ga_leader");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-639.56), 6.88, (-447.51)]), lua.Table.create([2.43, 57.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH04");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m09_2110_talk_07", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 24);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "anger", "npc_main_ga_boss");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-641.79), 7.0, (-448.24)]), lua.Table.create([(-0.85), (-65.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var slot10Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2110_talk_08", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot10Animation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 30);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2110_talk_17", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-640.89), 7.31, (-447.48)]), lua.Table.create([(-0.85), 57.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.2);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-641.95), 6.0, (-449.1), 35.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-642.07), 6.01, (-448.05), 86.97);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-640.66), 6.01, (-448.46), (-90.74));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-641.02), 7.17, (-446.36)]), lua.Table.create([(-3.7), 12.97, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2110_talk_09", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.S726C2890C3D75149("t1_lb_tower", "t1_lb_tower", false);
    }
}
