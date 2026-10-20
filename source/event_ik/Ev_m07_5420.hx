package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF61F6C119B68818E")
@:expose("CF61F6C119B68818E")
class Ev_m07_5420 extends BaseMainScenario
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

    @:abiSlot(18)
    public var CHR_F:Dynamic;

    @:abiSlot(19)
    public var POKE_ZIGA:Dynamic;

    @:abiSlot(20)
    public var POKE_ZIGA2:Dynamic;

    @:abiSlot(21)
    public var FLD_NPC_ZIGA:Dynamic;

    public function new()
    {
        this.FLD_NPC_ZIGA = "npc_pokemon_zygarde";
        this.POKE_ZIGA2 = "dyn_ziga_50";
        this.POKE_ZIGA = "dyn_ziga_10";
        this.CHR_F = "dyn_f";
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
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_boss", "npc_main_pa_leader", "npc_main_ga_boss", "npc_main_ga_leader", "npc_main_ju_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader", "npc_main_f"]);
        main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_ZIGA, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_YUKA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_HAL, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_F, lua.Table.create([21.62, 0.03, (-12.41)]), 180.0, "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_ZIGA, lua.Table.create([15.75, 0.03, (-4.91)]), (-134.94), 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_ZIGA2, lua.Table.create([15.75, 0.03, (-4.91)]), (-134.94), 718, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_YUKA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_HAL, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 203);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.87, 0.03, (-14.43), (-18.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, 22.47, 0.03, (-12.19), (-106.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 24.28, 0.02, (-10.99), (-113.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_F, 22.21, 0.03, (-12.56), (-96.34));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, 14.8, 0.03, (-11.98), 151.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA2, 14.8, 0.03, (-11.98), 151.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lua.Table.create([14.8, 2.5, (-11.98)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.POKE_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KANA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_TARA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KARA, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_JIPU, lua.Table.create([15.75, 0.03, (-4.91)]), 180.0, "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KARA, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JIPU, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, 2.72, 0.03, (-20.99), 51.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, 2.02, 0.03, (-20.62), 57.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, 2.67, 0.03, (-22.22), 51.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, 2.2, 0.03, (-21.88), 52.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, 1.73, 0.03, (-5.57), 121.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JIPU, 1.48, 0.03, (-4.76), 128.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 2.62, 0.03, (-16.24), 64.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.26, 1.34, (-16.26)]), lua.Table.create([(-1.9), (-172.48), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_ZIGA2, 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_01", "main_07_01");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FORMCHANGE_0718_SHORT");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA2, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_ZIGA, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        var zigaLeaveEffEffectKey:Dynamic = "ziga_leave_eff";
        main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/z_move/z_move_disapp", zigaLeaveEffEffectKey, this.POKE_ZIGA, "event_script");
        this.TimeWait(1.0);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(zigaLeaveEffEffectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.POKE_ZIGA, (-155.7));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_ZIGA, 13.97, 0.03, (-15.7), 2.0);
        this.TimeWait(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_MOVE_FAST");
        main.event.ik.command.IkScriptCommand.PlayEffect(zigaLeaveEffEffectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_F, 17.68, 0.03, (-12.85), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([12.98, 1.09, (-13.85)]), lua.Table.create([0.51, (-88.51), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([12.99, 1.09, (-13.69)]), lua.Table.create([0.51, (-88.51), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_08");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_02", "main_07_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_F, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_03", "main_07_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.52, 1.61, (-13.09)]), lua.Table.create([0.51, (-88.51), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_F, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_F);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_04", "main_07_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_F, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.61, 1.37, (-14.5)]), lua.Table.create([(-0.26), (-105.2), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_05", "main_07_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_F);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_F, 12.48, 0.03, (-12.71), 0.5);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, (-5.0));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([11.29, 1.74, (-12.76)]), lua.Table.create([(-4.81), (-92.73), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "serious", "npc_main_f");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_5420_talk_06", "main_07_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.78, 1.74, (-12.23)]), lua.Table.create([(-8.35), 78.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([14.71, 1.74, (-13.37)]), lua.Table.create([(-8.35), 107.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_07", "main_07_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([11.08, 1.7, (-12.82)]), lua.Table.create([(-3.81), (-83.0), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "rejoice_small_mc", "npc_main_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_08", "main_07_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_4S");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_F);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "normal", "npc_main_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_F, 14.65, 0.02, (-2.75), 0.5);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.99, 1.35, (-13.69)]), lua.Table.create([4.03, (-57.66), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_F, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_YUKA, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_HAL, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KARA, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JIPU, 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_TARA, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KANA, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JIPU, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_YUKA, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([14.89, 1.35, (-14.25)]), lua.Table.create([4.03, (-88.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5420_talk_09", "main_07_01", this.CHR_YUKA, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 20);
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[10]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([21.65, 1.44, (-12.47)]), lua.Table.create([0.0, (-109.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([21.81, 1.44, (-12.42)]), lua.Table.create([0.0, (-109.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_10", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_YUKA, 32, null, 5.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([24.89, 1.62, (-13.52)]), lua.Table.create([(-9.09), 100.69, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([24.94, 1.62, (-12.54)]), lua.Table.create([(-9.09), 91.29, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 24.64, 0.02, (-10.53), (-113.0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_11", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_12", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([21.66, 1.47, (-12.94)]), lua.Table.create([(-5.61), (-139.06), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([21.71, 1.47, (-12.98)]), lua.Table.create([(-5.61), (-139.06), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_YUKA, "confident", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_13", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_YUKA, "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 14);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([20.91, 1.36, (-12.45)]), lua.Table.create([(-6.42), (-98.92), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([13.72, 1.36, (-14.31)]), lua.Table.create([(-6.42), (-98.92), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MSBC_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5420_talk_14", "main_07_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
