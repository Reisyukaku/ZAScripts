package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C96C31B1E41310771")
@:expose("C96C31B1E41310771")
class Ev_m06_1400 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_PYU:Dynamic;

    @:abiSlot(10)
    public var CHR_DEU:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    public function new()
    {
        this.slot11 = "poke_hura";
        this.CHR_DEU = "dyn_deu";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m", "npc_main_friend_f", this.slot11]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_floette", false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_OFF");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M8DB_T0");
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, true);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([0.47, 0.01, 7.3]), 180.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([0.47, 0.01, 7.3]), 180.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot11, lua.Table.create([(-0.03), 1.0, 0.29]), (-166.0), 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-0.01), 0.01, 4.91, 175.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, 0.62, 0, 1.04, (-135.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, 1.3, 0, 3.89, (-163.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-0.03), 1.0, 0.29, 32.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-0.01), 0.01, 7.66, 175.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, (-0.01), 0.01, 4.9, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, 1.29, 0, 7.39, (-163.0));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_DEU, 1.29, 0, 3.89, 0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.48, 2.21, 7.87]), lua.Table.create([(-7.88), 0.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([0.48, 1.41, 7.87]), lua.Table.create([(-7.88), 0.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_1400_talk_01", "main_06_01", this.CHR_DEU, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(scenario[9], (-1.13));
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(scenario[11], 16.0);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.53, 1.36, 2.61]), lua.Table.create([(-7.88), 0.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "rejoice_small_mc", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_02", "main_06_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_03", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.slot11, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-0.43), 1.0, 0.46, 32.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.93), 1.56, (-1.03)]), lua.Table.create([(-10.61), (-157.11), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_04", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_05", "main_06_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_06", "main_06_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 19);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.84, 1.6, 2.78]), lua.Table.create([(-10.61), (-157.11), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-0.15), 1.0, 0.51, 32.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "surprise2", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_07", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_DEU, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.72, 1.51, 5.2]), lua.Table.create([(-10.05), (-11.07), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_08", "main_06_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_09", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PYU, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_10", "main_06_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "sad2", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.52, 1.51, 2.76]), lua.Table.create([(-7.09), 155.88, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_1400_talk_11", "main_06_01", this.CHR_DEU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[10]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[10], 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "sad2", "npc_main_friend_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_DEU, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "serious", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "serious", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_12", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1400_talk_13", "main_06_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_ON");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
