package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C82A1A63AE5B0B0A9")
@:expose("C82A1A63AE5B0B0A9")
class Ev_m08_7000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    @:abiSlot(11)
    public var FLD_RIZA:Dynamic;

    public function new()
    {
        untyped (this)[11] = "npc_pokemon_riza";
        untyped (this)[10] = "npc_main_nu_boss_f";
        untyped (this)[9] = "npc_main_nu_boss_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -541.58, 0.01, -585.84, 140.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -539.61, 0.66, -586.89, -56.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -541.95, 0.0, -587.07, 16.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_GURI, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-541.98, 1.15, -584.99]), lua.Table.create([14.51, -39.81, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_07_SUS");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_02", "main_08_01", this.CHR_GURI);
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_7000_select_01", "msg_Ev_m08_7000_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 32, null, 4.65);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.03, 1.39, -584.93]), lua.Table.create([-0.81, -12.04, -0.0]), 40.0, 0, cameraEase, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cHRGURIS:Dynamic = this.CHR_GURIS;
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(cHRGURIS, "serious", "npc_main_nu_boss_f");
        if (0 == (selection : Dynamic))
        {
        }
        else
        {
            if (1 == (selection : Dynamic))
            {
                var showMessageWithDisplayingAction:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction;
                var cHRGURIS2:Dynamic = this.CHR_GURIS;
                var callback:Dynamic = function():Dynamic
                {
                    scenario.F32FAD7D4DF3ACA95(0.7);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
                    return null;
                };
                showMessageWithDisplayingAction(0, "msg_Ev_m08_7000_talk_03", "main_08_01", cHRGURIS2, null, null, callback);
            };
        };
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7000_talk_04", "main_08_01", this.CHR_GURIS, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            return null;
        }));
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_7000_select_03", "msg_Ev_m08_7000_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 32, null, 4.65);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_05", "main_08_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.74, 1.19, -583.89]), lua.Table.create([5.85, -33.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7000_talk_06", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(2.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(scenario[10], lua.Table.create([-542.22, 0.0, -586.34]));
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[10]);
            main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(scenario[10], false);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_7000_talk_07", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            scenario.F32FAD7D4DF3ACA95(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "serious", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(scenario[10], true);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[8], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_08", "main_08_01", this.CHR_GURI);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_7000_select_05", "msg_Ev_m08_7000_select_06", "msg_Ev_m08_7000_select_07"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-540.24, 2.06, -586.2]), lua.Table.create([8.8, -41.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-540.16, 2.1, -586.3]), lua.Table.create([8.8, -41.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "smile", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_09", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-540.1, 2.12, -586.36]), lua.Table.create([8.8, -41.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_10", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.85, 0.81, -584.07]), lua.Table.create([12.89, -40.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([-543.02, 0.81, -584.22]), lua.Table.create([11.75, -45.07, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 172, null, 3.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_11", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_12", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_13", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.FLD_RIZA, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-540.83, 1.11, -582.2]), lua.Table.create([4.56, -26.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-540.26, 1.1, -581.92]), lua.Table.create([4.56, -26.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_20", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_RIZA, 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_RIZA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -548.66, 0.01, -564.34, 36.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -547.35, 0.0, -562.62, -160.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-545.79, 2.55, -564.8]), lua.Table.create([6.95, -57.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-546.66, 2.42, -564.25]), lua.Table.create([6.95, -57.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M08_7000_CAMERA_WHOOSH05_6DB_LOW");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-552.6, 0.86, -560.52]), lua.Table.create([7.0, -57.92, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURI, -547.82, 0.0, -563.13, 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -548.12, 0.01, -563.65, 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-549.27, 1.34, -562.61]), lua.Table.create([7.0, -57.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence(this.CHR_PLY, this.CHR_GURI, "ob0004_00_normal_09");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "serious", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-548.2, 1.28, -562.43]), lua.Table.create([2.32, -12.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_7000_talk_18", "main_08_01", this.CHR_GURI);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_7000_talkselect_08", "msg_Ev_m08_7000_talkselect_09", "msg_Ev_m08_7000_talkselect_10"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-549.11, 1.18, -563.6]), lua.Table.create([11.75, -98.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_7000_talk_17", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_7000_talk_19", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
    }
}
