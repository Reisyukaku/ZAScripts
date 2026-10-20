package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEDE8E16650C72F61")
@:expose("CEDE8E16650C72F61")
class Ev_m05_1500 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_ga_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([22.51, 0.01, -14.14]), 142.69, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 21.66, 0.01, -14.19, 148.394);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_boss", 24.02, 0.01, -18.78, 105.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 25.3, 0.01, -18.74, -75.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_boss", "npc_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "npc_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([21.81, 2.43, -13.69]), lua.Table.create([-10.68, -29.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([21.81, 1.83, -13.69]), lua.Table.create([-10.68, -29.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 24.36, 0.01, -16.77, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 22.75, 0.01, -16.65, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([22.52, 1.46, -15.33]), lua.Table.create([-6.38, -29.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ju_boss", 6.0));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_boss", "sad", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "npc_main_ju_boss", "head");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_boss", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_03", "main_05_01", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_boss", "normal", "npc_main_ju_boss");
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 25);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "npc_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_04", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([23.4, 2.16, -17.88]), lua.Table.create([-21.37, -51.82, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "anger", "npc_main_ga_boss");
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_05", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_ga_boss", 32, null, 5.38);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_06", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([24.61, 1.44, -17.56]), lua.Table.create([-2.5, 163.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "sad", "npc_main_detective");
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_07", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "normal", "npc_main_detective");
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_08", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([21.79, 1.8, -16.28]), lua.Table.create([-10.78, -56.46, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_ga_boss");
        var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_09", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
        var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_10", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([23.4, 2.16, -17.88]), lua.Table.create([-21.0, -53.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_boss", "npc_main_ga_boss", "head");
        var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_ju_boss", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "npc_main_ju_boss", "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("START_SS_COMMON_LOWAMBI_LP");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_11", "main_05_01", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_1500_talk_12", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([24.65, 1.68, -18.27]), lua.Table.create([15.23, 46.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_boss", "anger", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_13", "main_05_01", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([24.71, 1.82, -18.47]), lua.Table.create([-30.44, -55.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_boss", "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "anger", "npc_main_ga_boss");
        var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_1500_talk_14", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_COMMON_LOWAMBI_LP");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([22.52, 1.46, -15.33]), lua.Table.create([-6.38, -29.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_boss", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_29", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([24.74, 1.42, -18.05]), lua.Table.create([-2.36, -32.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ga_boss", -40.49));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_ga_boss");
        var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 23);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_30", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_31", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([23.3, 1.48, -16.38]), lua.Table.create([-6.76, -52.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_32", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction10);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious", "npc_main_detective");
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", -94.62);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_33", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "rejoice_small", "npc_main_ga_boss");
        var setAnimationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_34", "main_05_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction11);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([22.52, 1.46, -15.33]), lua.Table.create([-6.38, -29.17, -0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "battle", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 491);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_ju_boss", -12.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_35", "main_05_01", "npc_main_ga_boss");
        var menuLabels:Dynamic = (["msg_Ev_m05_1500_select_04", "msg_Ev_m05_1500_select_05"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([24.46, 1.61, -17.92]), lua.Table.create([-16.49, -44.27, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var setAnimationAction12:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 346);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_37", "main_05_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction12);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var setAnimationAction13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_ga_boss", 1);
            waitFObjAction(setAnimationAction13, null, null, null, null, null, null, null);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "sad", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 25);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_36", "main_05_01", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal", "npc_main_ga_boss");
            var waitFObjAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var resetAnimationAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("npc_main_ga_boss");
            waitFObjAction2(resetAnimationAction, null, null, null, null, null, null, null, null);
        };
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        untyped this.m_resultParam = selection;
    }
}
