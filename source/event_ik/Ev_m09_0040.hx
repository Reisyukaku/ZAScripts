package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE90394C9119A2A13")
@:expose("CE90394C9119A2A13")
class Ev_m09_0040 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var CHR_PYU:Dynamic;

    @:abiSlot(12)
    public var CHR_DEU:Dynamic;

    @:abiSlot(13)
    public var CHR_MAS:Dynamic;

    @:abiSlot(14)
    public var POKE_HURA:Dynamic;

    @:abiSlot(15)
    public var FLD_POKE_HURA:Dynamic;

    public function new()
    {
        this.FLD_POKE_HURA = "npc_pokemon_floette";
        this.POKE_HURA = "dyn_hura";
        this.CHR_MAS = "dyn_mas";
        this.CHR_DEU = "dyn_deu";
        this.CHR_PYU = "dyn_pyu";
        this.slot10 = "dyn_az";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_hotel_manager", "npc_main_friend_f", "npc_main_friend_m", "npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_HURA, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([(-499.76), 0.0, (-592.44)]), 0.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([(-500.8), 0.0, (-590.53)]), 0.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([(-500.71), 0.0, (-591.66)]), 0.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MAS, lua.Table.create([(-499.2), 0.0, (-588.23)]), 0.0, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_HURA, lua.Table.create([(-497.89), 1.0, (-591.7)]), 0.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_HURA, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-498.43), 0.01, (-577.23), 26.09);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-497.28), 0.0, (-577.04), (-53.25));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-499.09), 0.0, (-576.58), 46.16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, (-496.39), 0.0, (-576.06), (-63.08));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, (-497.85), 0.0, (-575.04), 178.18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_HURA, (-497.69), 1.0, (-577.52), (-3.53));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.83), 1.36, (-578.44)]), lua.Table.create([(-4.34), (-136.97), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_05");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_DEU, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_01", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.05), 1.71, (-573.56)]), lua.Table.create([(-10.87), (-23.14), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_02", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_03", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_04", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-498.87), 1.35, (-576.12)]), lua.Table.create([(-4.44), (-39.86), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.POKE_HURA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_HURA, 25);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_HURA, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.POKE_HURA, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_10", "main_09_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-497.87), 1.28, (-578.47)]), lua.Table.create([1.03, (-165.43), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_11", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_12", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MAS);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-497.28), 0.0, (-577.04), (-13.34));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-498.07), 1.31, (-579.31)]), lua.Table.create([(-2.85), (-176.98), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_0040_talk_13", "main_09_01", this.CHR_MAS, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[13], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[13], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[13], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[13], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, (-497.4), 0.0, (-576.66), 0.5);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-497.95), 1.48, (-575.88)]), lua.Table.create([(-7.99), (-35.13), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_HURA, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_RIV, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_HURA, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_14", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_DEU, this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-498.65), 1.41, (-576.32)]), lua.Table.create([(-4.29), (-83.54), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "surprise_mc", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_15", "main_09_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_DEU, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-497.03), 1.41, (-575.66)]), lua.Table.create([(-5.8), 28.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_RIV);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.POKE_HURA, this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_17", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_18", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-497.92), 1.61, (-576.35)]), lua.Table.create([(-3.18), (-176.8), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_HURA, (-497.69), 1.0, (-577.77), 29.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_19", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_RIV, this.CHR_PLY);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.82), 1.37, (-577.08)]), lua.Table.create([(-5.23), (-102.55), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-500.03), 1.37, (-577.13)]), lua.Table.create([(-5.23), (-102.55), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0040_talk_20", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_HURA, true);
    }
}
