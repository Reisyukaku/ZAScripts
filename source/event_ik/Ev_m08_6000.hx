package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCC313A31F165B8F8")
@:expose("CCC313A31F165B8F8")
class Ev_m08_6000 extends BaseMainScenario
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
        this.slot14 = "npc_pokemon_floette";
        this.slot13 = "dyn_huraette";
        this.slot12 = "npc_main_hotel_manager";
        this.slot11 = "dyn_deu";
        this.slot10 = "dyn_pyu";
        this.slot9 = "dyn_riv";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_m", "npc_main_friend_f", "npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "open", "trigger");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-0.21), 0.02, (-6.29)]), (-5.57), "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([0.91, 0.0, (-6.53)]), (-33.52), "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([0.33, 0.01, (-6.7)]), (-8.59), "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot13, lua.Table.create([(-2.14), 1.86, (-5.97)]), 67.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-0.18), 0.01, (-4.59), (-90.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, (-2.59), (-0.0), (-5.11), 76.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, 0.25, 0.01, (-7.99), (-20.07));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 0.79, 0.01, (-8.66), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 1.16, 0.0, (-8.1), (-33.52));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.03, 0.99, (-5.16)]), lua.Table.create([14.05, 102.86, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6000_talk_60", "main_08_01", this.slot12);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6000_talk_61", "main_08_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_CL");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot9, "head");
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot13, 90.0);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-0.21), 0.02, (-6.29), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot11, 0.33, 0.01, (-6.7), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, 0.91, 0.0, (-6.53), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot8, "head");
        this.TimeWait(0.1);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_CL");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "close", "trigger");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.66, 1.41, (-3.62)]), lua.Table.create([(-5.51), 24.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6000_talk_01", "main_08_01", this.slot9);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_6000_select_01", "msg_Ev_m08_6000_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6000_talk_02", "main_08_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6000_talk_03", "main_08_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6000_talk_04", "main_08_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[12], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[9], scenario[12]);
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[12], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[12], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[12], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.44), 1.8, (-5.9)]), lua.Table.create([7.66, 111.61, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 18);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot12);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6000_talk_50", "main_08_01", this.slot12);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6000_talk_51", "main_08_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_OP");
    }
}
