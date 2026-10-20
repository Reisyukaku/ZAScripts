package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C59502C277D913861")
@:expose("C59502C277D913861")
class Ev_m04_0140 extends BaseMainScenario
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

    public function new()
    {
        untyped (this)[14] = "npc_pokemon_floette";
        untyped (this)[13] = "dyn_deu";
        untyped (this)[12] = "dyn_pyu";
        untyped (this)[11] = "dyn_riv";
        untyped (this)[10] = "dyn_hura";
        untyped (this)[9] = "npc_main_hotel_manager";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_hotel_manager", "npc_main_rival_m", "npc_main_friend_m", "npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot10, lua.Table.create([1.28, 1.5, -3.9]), -1.87, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([0.0, 0.0, 0.0]), 0.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, lua.Table.create([0.0, 0.0, 0.0]), 0.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot13, lua.Table.create([0.0, 0.0, 0.0]), 0.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 6.89, 0.31, 3.45, -63.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, 1.42, 0.01, 0.7, 36.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 1.97, 1.9, 2.83, 58.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 2.18, -0.0, 6.5, -36.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, 3.37, 0.01, 6.44, -44.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, 3.13, -0.0, 4.96, -41.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var slot8Movement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, 4.26, 0.31, 4.58, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 2.75, 0.0, 5.9, -36.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot11, 0.39, 0.0, 8.38, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, 4.0, 0.31, 5.56, -44.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, 0.81, 0.03, 9.12, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, 3.71, 0.15, 3.93, -41.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot13, 0.37, 0.0, 7.87, 0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.65, 1.43, 2.44]), lua.Table.create([-2.58, -133.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, 2.63, 0.01, 2.29, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.49, 1.57, 5.81]), lua.Table.create([1.98, 19.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_0140_talk_01", "main_04_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot8Movement);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[9]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_02", "main_04_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 74);
        var selectedPokemon:Dynamic = this.Get_InitSelectPokemon(0);
        if (152 == selectedPokemon)
        {
            main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_MEGANIUMUNAITO");
            main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_03", "main_04_01", this.slot9);
        }
        else if (498 == selectedPokemon)
        {
            main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_ENBUONAITO");
            main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_05", "main_04_01", this.slot9);
        }
        else if (158 == selectedPokemon)
        {
            main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_OODAIRUNAITO");
            main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_04", "main_04_01", this.slot9);
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.3, 1.93, 3.8]), lua.Table.create([8.93, 31.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_small", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_06", "main_04_01", this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_09", "main_04_01", this.slot9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_07", "main_04_01", this.slot9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_small", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_13", "main_04_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0140_talk_08", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -2.88, -0.0, -7.27, 76.29);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
