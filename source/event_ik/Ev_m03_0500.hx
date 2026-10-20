package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE3FC8EB66BB7F322")
@:expose("CE3FC8EB66BB7F322")
class Ev_m03_0500 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_trainer_rankY_rankup"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m03_0500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_trainer_rankY_rankup", -361.46, -1.5, -691.82, -35.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -362.24, untyped -1.49, untyped -690.77, 143.484);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("Player", "npc_trainer_rankY_rankup");
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_trainer_rankY_rankup", "Player");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_trainer_rankY_rankup", false);
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-361.57, 1.19, -686.04]), lua.Table.create([-18.4, 4.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-361.62, 0.94, -686.77]), lua.Table.create([-18.4, 4.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-361.53, -0.02, -690.91]), lua.Table.create([-1.84, -1.26, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0500_talk_01", "main_03_01", "npc_trainer_rankY_rankup");
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            showMessage(0, "msg_Ev_m03_0500_talk_02", "main_03_01", "npc_trainer_rankY_rankup");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-361.75, -0.02, -690.92]), lua.Table.create([-1.84, -1.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-361.53, -0.02, -690.91]), lua.Table.create([-1.84, -1.26, 0.0]), 40.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0500_talk_02", "main_03_01", "npc_trainer_rankY_rankup");
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-361.96, -0.18, -689.58]), lua.Table.create([-0.78, -1.54, -0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var menuLabels:Dynamic = (["msg_Ev_m03_0500_select_01", "msg_Ev_m03_0500_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        if (((0 == (selection : Dynamic))))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_trainer_rankY_rankup", -363.87, -1.5, -684.75, -124.36);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -367.54, -1.5, -687.47, 47.42);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-370.65, -0.37, -679.33]), lua.Table.create([0.08, -36.24, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_trainer_rankY_rankup", "Player", "neck");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_trainer_rankY_rankup", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_trainer_rankY_rankup", -365.5, -1.5, -685.96, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -365.88, -1.5, -686.17, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.1);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-366.49, -0.15, -685.03]), lua.Table.create([0.04, -37.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankY_rankup", "serious");
            main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence("Player", "npc_trainer_rankY_rankup");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-365.37, -0.27, -685.23]), lua.Table.create([6.12, 23.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0500_talk_03", "main_03_01", "npc_trainer_rankY_rankup");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_0500_select_03", "msg_Ev_m03_0500_select_04", "msg_Ev_m03_0500_select_05"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-366.51, -0.4, -685.79]), lua.Table.create([18.88, -70.48, 0.0]), 40.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0500_talk_06", "main_03_01", "npc_trainer_rankY_rankup");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            var startLoadingFadeAnimationScene:Dynamic = untyped main.event.ik.command.IkScriptCommand.S5947B527097768D0;
            startLoadingFadeAnimationScene(4);
        }
        else
        {
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_trainer_rankY_rankup", 28);
            main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_trainer_rankY_rankup", false);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0500_talk_04", "main_03_01", "npc_trainer_rankY_rankup");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_trainer_rankY_rankup");
            main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_trainer_rankY_rankup", true);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T1000");
        };
        untyped this.m_resultParam = (selection : Dynamic);
    }
}
