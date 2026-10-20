package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C1934A012123C7833")
@:expose("C1934A012123C7833")
class Ev_m10_9100 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_researcher", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 71));
        var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -5.33, 0.05, 0.81, 180.0);
        var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.33, 0.04, -1.1, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-5.3, 1.3, 0.22]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_researcher", lua.Table.create([-5.29, 1.44, -0.11]));
        var cameraVector:Dynamic = lua.Table.create([-4.22, 1.81, 1.7]);
        var cameraVector2:Dynamic = lua.Table.create([-21.76, 37.48, 0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = eventParameters.f73EE8FEC();
        if ((("1" == eventMode)))
        {
            var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m10_9100_2nd");
            if (((false == flagValue)))
            {
                var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 175);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_01", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            };
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_02", "main_10_01", "npc_main_researcher");
            var menuLabels:Dynamic = (["msg_Ev_m10_9100_select_01", "msg_Ev_m10_9100_select_02"]);
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (((1 == selection)))
            {
                var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small", "npc_main_researcher");
                var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_03", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            }
            else
            {
                var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
                var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
                untyped emptyTableResult[1] = -6.21;
                untyped emptyTableResult[2] = 0.5;
                untyped emptyTableResult[3] = 0.59;
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_researcher", emptyTableResult);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_04", "main_10_01", "npc_main_researcher");
                var flagValue2:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Main10_X_Oyabun_01");
                var flagValue3:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Main10_X_Oyabun_02");
                var flagValue4:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Main10_X_Oyabun_03");
                var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
                if (((false == flagValue2)))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_05", "main_10_01", "npc_main_researcher");
                };
                if (((false == flagValue3)))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_06", "main_10_01", "npc_main_researcher");
                };
                if (((false == flagValue4)))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_07", "main_10_01", "npc_main_researcher");
                };
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "Player", "head");
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "serious", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_researcher", 32, null, 4.51);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_10", "main_10_01", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PL_RESET_T500");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            var eventParameters3:Dynamic = this.m_eventScriptParam;
            var eventMode2:Dynamic = eventParameters3.f73EE8FEC();
            if ((("0" == eventMode2)))
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small", "npc_main_researcher");
                var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_20", "main_10_01", "npc_main_researcher", false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_researcher", 32, null, 4.51);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_21", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "Player", "head");
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_researcher", "head");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher"));
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 1));
                var setPosAngAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -5.32, 0.05, 2.09, 180.0);
                var setPosAngAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.29, 0.04, 0.88, 0.0);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction3);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction4);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-3.4, 1.29, 3.51]), lua.Table.create([-4.39, 44.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 14);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_22", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.91, 1.53, 1.99]), lua.Table.create([-4.22, 31.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
                var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 25);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "sad", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "Player", "head");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_23", "main_10_01", "npc_main_researcher", false);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_24", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-3.59, 1.37, 2.44]), lua.Table.create([-3.47, 62.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 28);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_25", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_26", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.47, 1.42, 2.93]), lua.Table.create([-1.31, 34.8, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
                var setAnimationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 21);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_27", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction10);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "serious", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_28", "main_10_01", "npc_main_researcher");
                var setAnimationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 18);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_29", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction11);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-5.29, 1.47, 2.11]), lua.Table.create([1.76, 1.78, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var setAnimationAction12:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 2);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_30", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction12);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small_mc", "npc_main_researcher");
                var setAnimationAction13:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 174);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9100_talk_31", "main_10_01", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction13);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PL_RESET_T500");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher"));
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
                main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_researcher", false);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 71));
                var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var setPosAngAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.33, 0.04, -1.1, 0.0);
                waitFObjAction(setPosAngAction5, null, null, null, null, null, null);
            };
        };
    }
}
