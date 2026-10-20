package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C11D50B120E6CF8D1")
@:expose("C11D50B120E6CF8D1")
class Ev_m10_9010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_researcher"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PL_MUTE_T0");
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
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.0, lua.Table.create([-4.22, 1.81, 1.7]), lua.Table.create([-21.76, 37.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_01", "main_10_01", "npc_main_researcher");
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_02", "main_10_01", "npc_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m10_9010_select_01", "msg_Ev_m10_9010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-5.35, 1.39, 0.26]), lua.Table.create([-23.01, 1.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_researcher", lua.Table.create([-2.88, 0.75, 1.04]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "sad", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj_Eye("npc_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_03", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.6, 0.79, -1.29]), lua.Table.create([11.0, 147.18, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_04", "main_10_01", "npc_main_researcher");
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_05", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -5.32, 0.05, 2.09, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.29, 0.04, 0.88, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-3.97, 1.29, 4.08]), lua.Table.create([-4.39, 44.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-3.4, 1.29, 3.51]), lua.Table.create([-4.39, 44.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var animationHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_06", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_07", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.91, 1.53, 1.99]), lua.Table.create([-4.22, 31.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_08", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_09", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.36, 1.42, 3.09]), lua.Table.create([-1.32, 34.36, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_researcher", 32, null, 4.68);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_10", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-5.29, 1.47, 2.11]), lua.Table.create([1.76, 1.78, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "serious", "npc_main_researcher");
        var animationHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_11", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 2));
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_researcher", 33, null, 4.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9010_talk_12", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 1));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 29);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PL_RESET_T500");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_researcher", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 71);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.33, 0.04, -1.1, 0.0));
    }
}
