package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEA6DC74168B66C7C")
@:expose("CEA6DC74168B66C7C")
class Ev_m08_4110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_researcher"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_researcher", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -5.33, 0.05, 0.81, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.33, 0.04, -1.1, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_researcher", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.6, 1.48, 0.34]), lua.Table.create([-21.76, 37.48, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.0, lua.Table.create([-4.22, 1.81, 1.7]), lua.Table.create([-21.76, 37.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_01", "main_08_01", "npc_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4110_select_01"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-5.35, 1.39, 0.26]), lua.Table.create([-23.01, 1.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_researcher", lua.Table.create([-2.88, 0.75, 1.04]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "sad", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj_Eye("npc_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_02", "main_08_01", "npc_main_researcher");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4110_select_03", "msg_Ev_m08_4110_select_04"]), 0, false, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.6, 0.79, -1.29]), lua.Table.create([11.0, 147.18, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        if (((0 == selection)))
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            showMessage(0, "msg_Ev_m08_4110_talk_03", "main_08_01", "npc_main_researcher");
        }
        else
        {
            var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            showMessage2(0, "msg_Ev_m08_4110_talk_04", "main_08_01", "npc_main_researcher");
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -5.32, 0.05, 2.09, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.29, 0.04, 0.88, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-3.97, 1.29, 4.08]), lua.Table.create([-4.39, 44.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-3.4, 1.29, 3.51]), lua.Table.create([-4.39, 44.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_07");
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_05", "main_08_01", "npc_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4110_select_05", "msg_Ev_m08_4110_select_06"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.58, 1.53, 1.76]), lua.Table.create([-4.39, 44.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_06", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_07", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.41, 0.47, 5.68]), lua.Table.create([-0.36, 62.99, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(15.0, lua.Table.create([1.76, 0.47, 3.04]), lua.Table.create([-0.36, 62.99, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 27);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_08", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_09", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.36, 1.42, 3.09]), lua.Table.create([-1.32, 34.36, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "sad", "npc_main_researcher");
        var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_10", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "serious", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-5.29, 1.47, 2.11]), lua.Table.create([0.82, 1.78, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_11", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
        var setAnimationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_12", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction10);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.36, 1.42, 3.09]), lua.Table.create([-1.32, 34.36, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_13", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_14", "main_08_01", "npc_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4110_select_07", "msg_Ev_m08_4110_select_08"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction11);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        var setAnimationAction12:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_15", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction12);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-3.84, 1.4, 2.96]), lua.Table.create([-3.68, 48.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 29);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_16", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var resetAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-5.06, 1.57, 1.99]), lua.Table.create([-3.38, 13.94, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction2);
        var setAnimationAction13:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4110_talk_17", "main_08_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction13);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_researcher", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.33, 0.04, -1.1, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
