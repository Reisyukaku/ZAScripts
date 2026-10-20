package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C938660B7C7E39307")
@:expose("C938660B7C7E39307")
class Ev_m09_2020 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    public function new()
    {
        this.slot11 = "dyn_tai";
        this.slot10 = "dyn_muku";
        this.slot9 = "dyn_siro";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.S726C2890C3D75149("t1_lb_tower", "t1_lb_tower", true);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-642.9), 0.0, (-554.28)]), (-35.28), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([(-642.9), 0.0, (-554.28)]), (-24.48), "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot11, lua.Table.create([(-642.9), 0.0, (-554.28)]), 152.19, 870, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot10, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-653.56), 0.01, (-558.11), (-107.22));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-653.04), 0.0, (-556.95), (-103.34));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-653.04), 0.0, (-556.95), (-24.48));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-617.61), (-0.0), (-547.67), 152.19);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-648.42), 6.13, (-557.65)]), lua.Table.create([(-8.7), 84.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-648.42), 2.73, (-557.65)]), lua.Table.create([(-8.7), 84.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_01", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, (-654.94), 0.01, (-556.91), 0.5);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-653.75), 0.0, (-556.46), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-654.94), 0.01, (-556.91), (-27.51));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-653.75), 0.0, (-556.46), (-28.57));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.51), 2.3, (-540.03)]), lua.Table.create([(-8.7), (-63.71), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_02", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-644.78), 0.01, (-554.47), 52.99);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-643.2), 0.0, (-553.11), (-135.78));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-644.72), 1.55, (-553.37)]), lua.Table.create([8.49, (-97.24), (-0.01)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_04", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-646.08), 1.13, (-554.26)]), lua.Table.create([8.49, (-97.24), (-0.01)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_05", "main_09_01", this.slot9);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m09_2020_select_01", "msg_Ev_m09_2020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, lua.Table.create([(-633.67), 10.41, (-546.89)]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos(this.slot9, lua.Table.create([(-633.67), 10.41, (-546.89)]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-644.19), 1.61, (-554.64)]), lua.Table.create([1.54, (-126.43), (-0.01)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-644.19), 1.61, (-554.64)]), lua.Table.create([15.76, (-126.43), (-0.01)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_07", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_08", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, lua.Table.create([(-621.34), 12.42, (-542.63)]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-616.36), 0.0, (-547.49), (-38.6));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-614.24), 0.02, (-549.19), (-60.2));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-614.82), 2.99, (-552.49)]), lua.Table.create([26.87, 146.92, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-614.82), (-0.31), (-552.49)]), lua.Table.create([26.87, 146.92, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        var slot9Action:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot9, this.slot8);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-614.05), 1.25, (-550.68)]), lua.Table.create([2.03, 157.19, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot9Action);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_11", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-615.78), 1.69, (-548.52)]), lua.Table.create([0.0, 157.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_12", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_13", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 77);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-615.07), 1.65, (-549.88)]), lua.Table.create([(-0.0), 150.47, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-619.02), 0.0, (-548.79), 98.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-616.51), 1.27, (-549.64)]), lua.Table.create([(-9.78), 112.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 40));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-618.37), 0.01, (-548.95), (-6.63));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-615.01), 0.01, (-549.51), (-60.2));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-616.8), 0.0, (-547.62), (-51.16));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-618.26), 0.2, (-552.33)]), lua.Table.create([12.54, (-170.16), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-617.51), 0.2, (-552.4)]), lua.Table.create([12.54, (-179.06), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        slot9Action = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 244));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_2020_talk_14", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot9Action);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-616.11), 2.63, (-551.91)]), lua.Table.create([(-13.93), 160.36, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 37);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 245);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_JUSTICE_PUNCH_IRON");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-616.45), 2.38, (-550.94)]), lua.Table.create([(-13.93), 160.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 1.0, 14, 0);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 1.0, 14, 1);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 1.0, 14, 2);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3, true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-615.59), 0.01, (-548.77), (-51.3));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-617.42), 0.0, (-548.03), (-53.28));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-619.21), 0.01, (-548.72), (-29.82));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-620.5), 1.1, (-545.05)]), lua.Table.create([0.0, (-35.92), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 491);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-620.74), 6.75, (-552.5)]), lua.Table.create([(-22.7), 171.2, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-623.61), 6.75, (-552.95)]), lua.Table.create([(-22.7), 171.2, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1(this.slot9, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-619.78), 0.02, (-548.26), 98.55);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-617.41), 0.0, (-547.87), 133.69);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-614.12), 2.47, (-552.47)]), lua.Table.create([(-11.84), 141.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-613.93), 0.0, (-556.71), (-19.4));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_15", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-616.68), 1.82, (-549.08)]), lua.Table.create([0.0, 150.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot10, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        this.TimeWait(1.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "surprise_mc", "npc_main_ju_boss");
        this.TimeWait(1.0);
        var slot10Movement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, (-615.03), 0.0, (-553.65), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-617.41), 0.0, (-547.87), 133.69);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-616.49), 0.01, (-548.03), 172.23);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-615.97), 1.74, (-545.04)]), lua.Table.create([(-9.57), 5.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_28", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_16", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MUSCLE_WHOOSH03");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_2020_talk_25", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot10Movement);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-614.73), 1.15, (-552.04)]), lua.Table.create([0.0, 12.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, true);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2020_talk_26", "main_09_01", this.slot10, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[10]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[10], 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "normal", "npc_main_ju_leader");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, (-615.5), 0.0, (-552.48), 0.5);
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-615.82), 0.01, (-547.82), (-160.34));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-616.56), 0.0, (-549.93), 10.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-617.32), 0.0, (-547.98), 143.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-619.78), 0.02, (-548.26), 115.55);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-613.32), 1.17, (-549.59)]), lua.Table.create([(-3.69), 102.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var slot9Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 32, null, 4.35);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_27", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_29", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(slot9Animation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_30", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_17", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_18", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        slot9Action = (main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot9, this.slot8));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-616.05), 1.62, (-548.08)]), lua.Table.create([9.45, 107.08, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot11, 85.55);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot9Action);
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 30);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2020_talk_22", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-615.82), 0.01, (-547.82), (-104.36));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-616.53), 1.3, (-548.4)]), lua.Table.create([5.79, (-136.21), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 30);
        this.TimeWait(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S726C2890C3D75149("t1_lb_tower", "t1_lb_tower", false);
    }
}
