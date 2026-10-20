package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC854B649E25C9F03")
@:expose("CC854B649E25C9F03")
class Ev_m08_5800 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    public function new()
    {
        this.CHR_GURIS = "dyn_guris";
        this.CHR_GURI = "dyn_guri";
        this.CHR_PLY = "Player";
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
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURI, lua.Table.create([0.7, 0.01, (-0.66)]), 180.0, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURIS, lua.Table.create([0.7, 0.01, (-0.66)]), 180.0, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "normal", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 0.16, 0.01, 1.42, 165.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, 0.81, 0.01, (-0.09), (-15.5));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, (-1.08), 0.01, (-2.61), 18.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.19, 1.43, 3.05]), lua.Table.create([(-6.57), 19.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 172, null, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_01", "main_08_01", this.CHR_GURI);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_5800_select_01", "msg_Ev_m08_5800_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_5800_talk_02", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(scenario[9], lua.Table.create([0.74, 2.5, 0.52]));
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_5800_talk_03", "main_08_01", this.CHR_GURIS, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 22);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[9], "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "sad2", "npc_main_nu_boss_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_GURIS, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_04", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURI);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.57, 1.44, 1.02]), lua.Table.create([3.21, (-11.46), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_07");
        var chrGURIAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 172);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_05", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_06", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(chrGURIAnimation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.86), 1.38, 2.1]), lua.Table.create([(-1.78), (-38.75), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-0.98), 1.38, 2.43]), lua.Table.create([(-1.78), (-38.75), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_07", "main_08_01", this.CHR_GURI);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_5800_select_03", "msg_Ev_m08_5800_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        (main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_08", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_09", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.09), 1.59, (-4.37)]), lua.Table.create([(-8.33), (-168.81), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var chrGURISAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_10", "main_08_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.01, 1.59, 0.48]), lua.Table.create([(-1.97), (-55.93), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        chrGURIAnimation = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_11", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(chrGURISAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.48), 1.5, (-1.73)]), lua.Table.create([(-2.19), 30.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_12", "main_08_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(chrGURIAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.51, 1.42, 0.91]), lua.Table.create([6.02, (-15.38), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        chrGURIAnimation = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_13", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_14", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_15", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(chrGURIAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.03, 1.63, 1.04]), lua.Table.create([(-6.57), 19.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        chrGURIAnimation = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_16", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_17", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 172);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_18", "main_08_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(chrGURIAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.16, 1.53, 3.01]), lua.Table.create([(-8.33), (-0.25), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([0.16, 1.57, 3.32]), lua.Table.create([(-8.33), (-0.25), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 172);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_19", "main_08_01", this.CHR_GURI);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_20", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
