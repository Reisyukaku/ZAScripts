package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C829E203AE5AD9720")
@:expose("C829E203AE5AD9720")
class Ev_m08_7010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    @:abiSlot(11)
    public var CHR_F:Dynamic;

    @:abiSlot(12)
    public var POKE_ZIGA:Dynamic;

    @:abiSlot(13)
    public var FLD_RIZA:Dynamic;

    @:abiSlot(14)
    public var FLD_MOB1:Dynamic;

    public function new()
    {
        untyped (this)[14] = "npc_R06_01_0003";
        untyped (this)[13] = "npc_pokemon_riza";
        untyped (this)[12] = "dyn_ziga";
        untyped (this)[11] = "dyn_f";
        untyped (this)[10] = "dyn_guris";
        untyped (this)[9] = "dyn_guri";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f", "npc_main_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        var textResource:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/cafe");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResource);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResource);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_RIZA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_MOB1, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURI, lua.Table.create([-539.64, 0.95, -586.42]), -50.28, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURIS, lua.Table.create([-541.95, 0.0, -587.07]), 0.06, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_F, lua.Table.create([-540.42, 0.0, -584.59]), -125.94, "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_ZIGA, lua.Table.create([-540.58, 0.0, -584.32]), -134.94, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "battle");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_F, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -551.78, 0.01, -568.51, 35.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -550.31, 0.0, -566.44, -149.44);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -546.41, 0.0, -565.73, -114.72);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_F, -550.34, 0.01, -562.58, 153.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, -540.05, 3.66, -586.4, -23.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-558.8, 3.97, -570.24]), lua.Table.create([-7.8, -109.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-558.8, 1.87, -570.24]), lua.Table.create([-7.8, -109.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.8, true);
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-551.86, 1.48, -567.14]), lua.Table.create([0.47, -8.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-551.86, 1.27, -567.14]), lua.Table.create([0.47, -8.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m08_7010_talk_01", "main_08_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m08_7010_talk_02", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m08_7010_talk_03", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_GURI, lua.Table.create([-550.75, 1.0, -567.13]));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-551.42, 1.63, -564.73]), lua.Table.create([-8.31, -62.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-551.81, 1.63, -565.5]), lua.Table.create([-8.31, -62.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURIS, -548.56, 0.0, -566.72, 0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "sad2", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_20", "main_08_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-553.41, 1.43, -568.85]), lua.Table.create([-4.84, -112.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-553.15, 1.44, -568.69]), lua.Table.create([-4.84, -112.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7010_talk_04", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-550.88, 1.59, -567.33]), lua.Table.create([-0.13, -146.89, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-550.73, 1.59, -567.11]), lua.Table.create([-0.13, -146.89, -0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M08_7010_FL_WHOOSH05");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_05", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7010_talk_06", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-551.43, 1.53, -567.18]), lua.Table.create([-2.65, -113.67, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_07", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_08", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "rejoice_small", "npc_main_nu_boss_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "lose", "npc_main_nu_boss_m");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 175);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-553.4, 0.91, -567.93]), lua.Table.create([8.12, -86.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURI, -550.9, 0.0, -567.48, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_09", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "smile", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 30);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_10", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_7010_select_01", "msg_Ev_m08_7010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-551.43, 1.59, -567.98]), lua.Table.create([-1.26, -130.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7010_talk_11", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "rejoice_big_mc", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 18);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURI);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_13", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-552.74, 1.4, -568.65]), lua.Table.create([-1.05, -110.5, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 74);
        main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_WAZAMASIN49", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_small_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.SAF4C948ABBCA57BD();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7010_talk_12", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 18);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURI, -544.6, 0.0, -575.82, 0.5);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURIS, -543.73, 0.0, -574.91, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, true);
        this.TimeWait(3.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_8S_SUS");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.53, 1.36, -574.62]), lua.Table.create([5.16, -8.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -544.78, 0.0, -574.61, -176.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -543.73, 0.0, -574.91, 149.32);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURI, -544.6, 0.0, -575.82, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.POKE_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.POKE_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-544.51, 1.38, -574.8]), lua.Table.create([5.16, -8.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        var zigaLeaveEffEffectKey:Dynamic = "ziga_leave_eff";
        main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/z_move/z_move_disapp", zigaLeaveEffEffectKey, this.POKE_ZIGA, "event_script");
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(zigaLeaveEffEffectKey);
        }));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_ZIGA, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-540.8, 4.14, -584.33]), lua.Table.create([3.31, -10.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-540.69, 4.18, -584.56]), lua.Table.create([3.31, -10.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_ZIGA, 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_7010_talk_21", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.POKE_ZIGA);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.POKE_ZIGA, this.CHR_PLY);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.51, 1.38, -574.8]), lua.Table.create([5.16, -8.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_ZIGA, -540.41, 3.63, -585.72, 2.0);
        this.TimeWait(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_MOVE_FAST");
        main.event.ik.command.IkScriptCommand.PlayEffect(zigaLeaveEffEffectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, false);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-544.86, 1.38, -574.88]), lua.Table.create([5.16, -8.49, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.85, 1.48, -577.1]), lua.Table.create([0.14, -156.39, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 200);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_22", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_F, -550.38, 0.01, -560.87, 168.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, -549.85, 0.0, -570.79, -25.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -551.78, 0.01, -568.51, 135.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_ZIGA, 65);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-550.07, 0.43, -569.36]), lua.Table.create([-12.95, -3.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURI, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURIS, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_ZIGA, 17);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise2", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-548.21, 0.51, -570.85]), lua.Table.create([5.28, 111.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-547.99, 0.44, -571.01]), lua.Table.create([5.28, 111.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_7010_talk_24", "main_08_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_F, true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_F, -549.9, 0.01, -564.72, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-551.94, 1.45, -569.43]), lua.Table.create([-9.36, -171.42, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-551.68, 1.45, -569.47]), lua.Table.create([-9.36, -171.42, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "battle");
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_F, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_F);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_08_SUS");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_14", "main_08_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-549.68, 1.87, -565.84]), lua.Table.create([-12.17, 166.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_15", "main_08_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-551.68, 1.32, -569.88]), lua.Table.create([-2.45, -174.13, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_16", "main_08_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_F, lua.Table.create([-546.67, 5.0, -563.74]));
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-550.34, 0.57, -566.38]), lua.Table.create([31.71, -146.46, -0.0]), 45.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-550.12, 0.83, -566.04]), lua.Table.create([31.71, -146.46, -0.0]), 45.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_17", "main_08_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-550.76, 0.64, -572.16]), lua.Table.create([-1.45, -167.47, 0.0]), 45.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_ZIGA, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.POKE_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_ZIGA, 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_7010_talk_23", "main_08_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.POKE_ZIGA, -100.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-550.76, 0.64, -572.16]), lua.Table.create([-1.45, -179.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 120.0);
        main.event.ik.command.IkScriptCommand.S1B35E8E6D3B2A662(this.CHR_PLY, true, false, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos_Eye(this.CHR_PLY, lua.Table.create([-1101.28, 0.0, -1141.84]));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_ZIGA, -550.41, 0.0, -570.88, 2.0);
        this.TimeWait(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_MOVE_FAST");
        main.event.ik.command.IkScriptCommand.PlayEffect(zigaLeaveEffEffectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-550.16, 1.69, -565.6]), lua.Table.create([-1.45, -167.47, 0.0]), 45.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7010_talk_18", "main_08_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-551.42, 1.3, -569.39]), lua.Table.create([-1.97, -173.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-551.6, 1.25, -569.84]), lua.Table.create([-1.97, -173.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7010_talk_19", "main_08_01", this.CHR_F, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[11], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj_Eye(scenario[8], scenario[11], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_4S_SUS");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_MOB1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_RIZA, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal");
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResource);
    }
}
