package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEDE55B6650C415D8")
@:expose("CEDE55B6650C415D8")
class Ev_m05_1510 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_ga_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([24.36, 0.01, -16.77]), -43.31, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([24.02, 0.01, -18.78]), -27.5, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ga_boss", lua.Table.create([17.7, 0.01, -10.24]), -90.0, "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_ga_boss", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.04, 0.01, -10.17, 90.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ga_boss", 17.7, 0.01, -10.24, -90.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "surprise", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.77, 1.11, -10.27]), lua.Table.create([4.41, -90.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 21);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.3, lua.Table.create([16.56, 1.25, -10.25]), lua.Table.create([4.41, -90.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m05_1510_talk_01", "main_05_01", "dyn_main_ga_boss", false, true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.15);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([16.88, 1.35, -10.24]), lua.Table.create([-5.93, -58.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "anger", "npc_main_ga_boss");
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 24);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.3, lua.Table.create([17.04, 1.35, -10.01]), lua.Table.create([-5.93, -58.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m05_1510_talk_02", "main_05_01", "dyn_main_ga_boss", false, true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var movementAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 15.7, 0.01, -10.24, 1.0);
        var movementAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 18.2, 0.0, -11.6, 1.0);
        var movementAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 16.95, 0.0, -12.16, 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([13.05, 2.96, -10.14]), lua.Table.create([-27.19, -89.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([14.16, 2.39, -10.16]), lua.Table.create([-27.19, -89.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_ga_boss", lua.Table.create([15.7, -1.0, -10.24]));
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(0, "msg_Ev_m05_1510_talk_03", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.75);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "serious", "npc_main_ga_boss");
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1510_talk_04", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([16.9, 1.5, -10.02]), lua.Table.create([-6.96, -65.21, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "lose", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_ga_boss", lua.Table.create([16.15, -0.5, -8.5]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1510_talk_05", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.7, 1.54, -9.2]), lua.Table.create([-7.65, -55.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_15", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_16", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "surprise_mc", "npc_main_detective");
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "surprise", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_17", "main_05_01", "dyn_main_detective", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 18.2, 0.0, -11.6, -14.06);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([16.57, 1.53, -9.8]), lua.Table.create([-9.12, -55.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_18", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_38", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ga_boss"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_39", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([17.32, 1.41, -10.74]), lua.Table.create([-2.85, -50.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "lose", "npc_main_detective");
        var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_40", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.66, 2.05, -10.62]), lua.Table.create([-14.86, -52.88, -0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", -63.06);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_41", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        var animationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, (("msg_Ev_m05_1500_talk_42" : Dynamic)), (("main_05_01" : Dynamic)), (("dyn_main_ju_boss" : Dynamic)));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        wait_FObj_Action(animationAction7);
        while (true)
        {
            if (1 == this.m_resultParam)
            {
                break;
            }
            else
            {
            };
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.1, 1.59, -8.86]), lua.Table.create([-9.26, -39.99, -0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            var animationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 14);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_boss", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_19", "main_05_01", "dyn_main_detective");
            var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_1500_select_01", "msg_Ev_m05_1500_select_02", "msg_Ev_m05_1500_select_03", "msg_Ev_m05_1500_select_06"]), 0, false, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var animationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var fObj_Reset_AnimationResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_detective");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction8);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction9);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Reset_AnimationResult);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(((0.0 : Dynamic)), (lua.Table.create([16.57, 1.53, -9.8]) : Dynamic), (lua.Table.create([-10.25, -57.23, -0.02]) : Dynamic), ((40.0 : Dynamic)), ((0 : Dynamic)), cameraEase, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            if (0 == menuSelection)
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "sad", "npc_main_detective");
                var animationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 19);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 28);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_20", "main_05_01", (("dyn_main_detective" : Dynamic)));
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ga_boss");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction10);
                var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
                setFacialTemplate((("dyn_main_detective" : Dynamic)), (("normal" : Dynamic)), (("npc_main_detective" : Dynamic)));
            }
            else
            {
                if (1 == menuSelection)
                {
                    untyped this.m_resultParam = 1;
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "lose", "npc_main_detective");
                    var animationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "rejoice_small", "npc_main_ga_boss");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, (("msg_Ev_m05_1500_talk_22" : Dynamic)), (("main_05_01" : Dynamic)), (("dyn_main_detective" : Dynamic)));
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    var wait_FObj_Action2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                    wait_FObj_Action2(animationAction11);
                }
                else
                {
                    if (2 == menuSelection)
                    {
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "sad", "npc_main_detective");
                        var animationAction12:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 19);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_21", "main_05_01", (("dyn_main_detective" : Dynamic)));
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ga_boss");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction12);
                        var setFacialTemplate2:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
                        setFacialTemplate2((("dyn_main_detective" : Dynamic)), (("normal" : Dynamic)), (("npc_main_detective" : Dynamic)));
                    }
                    else
                    {
                        if (3 == menuSelection)
                        {
                            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "sad", "npc_main_detective");
                            var animationAction13:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 19);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 28);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_43", "main_05_01", (("dyn_main_detective" : Dynamic)));
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ga_boss");
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction13);
                            var setFacialTemplate3:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
                            setFacialTemplate3((("dyn_main_detective" : Dynamic)), (("normal" : Dynamic)), (("npc_main_detective" : Dynamic)));
                        }
                        else
                        {
                        };
                    };
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.11, 3.16, -7.95]), lua.Table.create([-30.28, -29.3, -0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "normal", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal", "npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_small", "npc_main_ju_boss");
        var animationAction14:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 20);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_boss", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_23", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_24", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction14);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_small_mc", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 5.57, 0.0, -6.25, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T2000");
        var fObj_Set_TurnResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -54.13);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.98, 1.44, -9.53]), lua.Table.create([-5.94, -56.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction15:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_25", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_26", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction15);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([16.85, 1.61, -9.87]), lua.Table.create([-14.56, -59.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "sad", "npc_main_ga_boss");
        var animationAction16:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ga_boss", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_50", "main_05_01", "dyn_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction16);
        var movementAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 16.18, 0.0, -11.69, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "rejoice_small", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.53, 1.48, -9.57]), lua.Table.create([-8.2, -55.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ga_boss", "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ga_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "lose", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_1500_talk_27", "main_05_01", "dyn_main_detective", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "rejoice_small", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        var fObj_Set_TurnResult3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", -7.28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_28", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationAction17:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction17);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_detective", lua.Table.create([3.75, 1.5, -2.96]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 12.5, 0.0, -9.76, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1500_talk_44", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
