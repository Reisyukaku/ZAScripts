package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF61860119B624E7C")
@:expose("CF61860119B624E7C")
class Ev_m07_5400 extends BaseMainScenario
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

    @:abiSlot(19)
    public var slot19:Dynamic;

    @:abiSlot(20)
    public var slot20:Dynamic;

    @:abiSlot(21)
    public var slot21:Dynamic;

    public function new()
    {
        this.slot21 = "npc_main_pa_boss";
        this.slot20 = "npc_pokemon_zygarde";
        this.slot19 = "dyn_ziga";
        this.slot18 = "dyn_f";
        this.slot17 = "dyn_jipu";
        this.slot16 = "dyn_kara";
        this.slot15 = "dyn_muku";
        this.slot14 = "dyn_siro";
        this.slot13 = "dyn_tara";
        this.slot12 = "dyn_kana";
        this.slot11 = "dyn_hal";
        this.slot10 = "dyn_yuka";
        this.slot9 = "dyn_riv";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_boss", "npc_main_pa_leader", "npc_main_ga_boss", "npc_main_ga_leader", "npc_main_ju_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader", "npc_main_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot21, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot8, this.slot21);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot21, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_01", "main_07_01", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot20, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot13, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot14, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot15, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot16, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot17, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot18, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot19, lua.Table.create([15.75, 0.03, (-4.91)]), (-134.94), 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot17, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 15.78, 0.03, (-13.94), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 15.78, 0.03, (-10.13), 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 19.91, 0.02, (-12.01), (-90.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot18, 11.96, 0.03, (-11.12), 80.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot19, 10.79, 0.03, (-12.08), 90.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, 2.72, 0.03, (-20.99), 49.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot14, 2.02, 0.03, (-20.62), 64.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, 2.67, 0.03, (-22.22), 42.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot15, 2.2, 0.03, (-21.88), 43.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot16, 1.73, 0.03, (-5.57), 107.68);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot17, 1.48, 0.03, (-4.76), 122.68);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, 2.65, 0.03, (-16.03), 70.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.83, 4.06, (-12.23)]), lua.Table.create([(-2.84), (-91.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([10.83, 1.49, (-12.23)]), lua.Table.create([(-2.84), (-91.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_06");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 2);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.3, 1.39, (-11.08)]), lua.Table.create([0.0, (-149.3), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_02", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_03", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        var slot19Movement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot19, 14.8, 0.03, (-11.98), 2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.54, 0.5, (-13.42)]), lua.Table.create([0.95, (-107.79), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot19, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot19, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 1);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot19, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.28, 1.71, (-15.36)]), lua.Table.create([(-17.35), (-175.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot19Movement);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot19, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot19, this.slot8);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID(this.slot19, 8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_04", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([11.98, 2.15, (-14.8)]), lua.Table.create([(-17.69), (-130.67), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([11.24, 2.46, (-15.43)]), lua.Table.create([(-17.69), (-130.67), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_05", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_06", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.23, 0.81, (-12.94)]), lua.Table.create([3.95, (-104.66), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot19, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_07", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "sad2", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([18.86, 1.55, (-12.29)]), lua.Table.create([(-1.77), (-105.94), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_08", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot18, 13.59, 0.03, (-11.05), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot18, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot18, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot18, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([11.47, 0.26, (-11.14)]), lua.Table.create([4.98, (-82.52), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([11.05, 0.26, (-11.09)]), lua.Table.create([4.98, (-82.52), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(3.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.48, 1.51, (-11.83)]), lua.Table.create([0.0, 127.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([14.48, 1.67, (-11.83)]), lua.Table.create([0.0, 127.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_09", "main_07_01", this.slot18);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.55, 1.02, (-20.28)]), lua.Table.create([7.76, 63.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot14, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_10", "main_07_01", this.slot14);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_11", "main_07_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 33);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_12", "main_07_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot12);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5400_talk_13", "main_07_01", this.slot15, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[15], 14);
            scenario.F32FAD7D4DF3ACA95(1.0);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot16, "surprise_mc", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.98, 1.32, (-5.91)]), lua.Table.create([0.36, 116.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot17, "surprise_mc", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot17, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_14", "main_07_01", this.slot17);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot17, this.slot16, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_15", "main_07_01", this.slot17);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot16, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_16", "main_07_01", this.slot16);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.29, 1.17, (-15.99)]), lua.Table.create([(-1.91), 173.24, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_08");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot18, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot18, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_17", "main_07_01", this.slot18);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.65, 1.69, (-12.28)]), lua.Table.create([(-1.91), 173.24, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot18, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_18", "main_07_01", this.slot18);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.89, 0.45, (-11.56)]), lua.Table.create([11.95, (-49.68), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_19", "main_07_01", this.slot18);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.12, 1.19, (-13.27)]), lua.Table.create([12.11, (-49.68), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_20", "main_07_01", this.slot18);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.77, 1.21, (-10.7)]), lua.Table.create([(-3.91), (-79.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([14.87, 1.21, (-10.16)]), lua.Table.create([(-3.91), (-79.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_21", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MSBC_WHOOSH01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.87, 1.21, (-10.16)]), lua.Table.create([(-3.91), (-79.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([14.87, 1.45, (-10.16)]), lua.Table.create([(-3.91), (-79.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_5400_talk_22", "main_07_01", this.slot10, true, true, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.7);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "surprise_mc", "npc_main_pa_leader");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot19, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.04, 1.51, (-15.03)]), lua.Table.create([(-8.02), (-159.41), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_23", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_24", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.82, 1.37, (-11.15)]), lua.Table.create([0.9, 177.49, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot10, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_25", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_26", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot18, this.slot10, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot18, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot10, this.slot18);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([17.27, 1.26, (-10.52)]), lua.Table.create([0.47, 92.48, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot10, 172, null, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_27", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5400_talk_28", "main_07_01", this.slot18, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[18]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[18], 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[18], "normal", "npc_main_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.96, 0.11, (-14.78)]), lua.Table.create([11.31, 175.02, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot18, this.slot19, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot19, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_29", "main_07_01", this.slot18);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_small_mc", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_30", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, (-160.0));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot11, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5400_talk_31", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
    }
}
