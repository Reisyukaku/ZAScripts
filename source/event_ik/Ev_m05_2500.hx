package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC1E1D75FEF5D19B2")
@:expose("CC1E1D75FEF5D19B2")
class Ev_m05_2500 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_MACHI:Dynamic;

    @:abiSlot(10)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(11)
    public var POKE_SHAN:Dynamic;

    public function new()
    {
        this.POKE_SHAN = "poke_shan";
        this.CHR_SIRO = "dyn_siro";
        this.CHR_MACHI = "dyn_machi";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_ju_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MACHI, lua.Table.create([(-9.95), 2.76, (-291.91)]), (-100.0), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([(-9.95), 2.76, (-291.91)]), (-100.0), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_SHAN, lua.Table.create([(-9.95), 2.76, (-291.91)]), (-100.0), 609, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-6.74), 2.76, (-270.53), (-100.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-7.47), 2.82, (-271.52), (-100.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, (-6.32), 2.75, (-269.31), 95.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_SHAN, (-11.28), 2.78, (-299.54), (-146.3));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-3.19), 3.95, (-270.15)]), lua.Table.create([(-3.2), 83.6, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-4.72), 2.76, (-270.42), (-93.5));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-6.34), 2.81, (-271.46), (-88.5));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, (-6.74), 2.76, (-270.53), 0.5);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MACHI, (-7.47), 2.82, (-271.52), 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 81.0);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MACHI, 80.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-11.34), 3.77, (-270.73)]), lua.Table.create([6.31, (-92.98), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.5, lua.Table.create([(-12.11), 3.68, (-270.77)]), lua.Table.create([6.31, (-92.98), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_07");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0, true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_13", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_14", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2460_talk_15", "main_05_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[9]);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-3.06), 4.3, (-268.26)]), lua.Table.create([(-2.56), 62.61, 0.0]), 29.85, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2500_talk_06", "main_05_01", this.CHR_SIRO, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 22);
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 24);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2500_talk_07", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.POKE_SHAN);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_SIRO, this.POKE_SHAN);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-7.6), 4.19, (-269.33)]), lua.Table.create([(-2.15), 6.92, (-0.0)]), 29.85, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MACHI, (-118.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-7.6), 4.19, (-269.33)]), lua.Table.create([(-2.15), 6.92, (-0.0)]), 29.85, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-7.18), 4.32, (-265.84)]), lua.Table.create([(-2.15), 6.92, (-0.0)]), 29.85, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2500_talk_01", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.POKE_SHAN, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-10.12), 4.01, (-303.36)]), lua.Table.create([(-7.29), 169.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2500_talk_02", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.POKE_SHAN, (-94.74));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_SHAN, (-17.51), 2.92, (-300.56), 0.5);
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-7.18), 4.32, (-265.84)]), lua.Table.create([(-2.15), 6.92, (-0.0)]), 29.85, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2500_talk_03", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2500_talk_04", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MACHI, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2500_talk_05", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
