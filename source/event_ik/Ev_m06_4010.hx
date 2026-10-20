package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C998710F4A5C73671")
@:expose("C998710F4A5C73671")
class Ev_m06_4010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_co_leader", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_co_boss", lua.Table.create([15.07, 0.08, -34.49]), 0.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_co_leader", lua.Table.create([12.81, 0.01, -18.81]), 167.01, "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.07, 0.03, -26.99, 180.0));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_co_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_co_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_co_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_leader", 2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 15.07, 0.03, -28.46, 1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_co_boss", 15.07, 0.01, -31.43, 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([18.77, 3.09, -25.3]), lua.Table.create([-22.53, 40.72, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([18.22, 2.74, -25.94]), lua.Table.create([-22.53, 40.72, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_leader", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_4010_talk_01", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_4010_talk_02", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m06_4010_talk_03", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.06, 1.52, -29.11]), lua.Table.create([-4.39, -0.19, -0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_co_boss", "head");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_04", "main_06_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_co_boss", "rejoice_small", "npc_main_co_boss");
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_11", "main_06_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_co_boss", "normal", "npc_main_co_boss");
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.43, 1.26, -30.35]), lua.Table.create([6.16, 25.28, -6.3]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.07, 0.01, -29.18, -180.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 30));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_10", "main_06_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([17.56, 1.4, -30.82]), lua.Table.create([-3.75, 88.72, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 15.07, 0.01, -30.34, 1.0));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 30));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_co_boss", 15.07, 0.01, -31.43, 24.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.85, 1.48, -29.3]), lua.Table.create([-5.02, 28.25, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var resetAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_co_boss", lua.Table.create([15.17, 1.55, -29.07]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_05", "main_06_01", "dyn_main_co_boss");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_4010_select_01", "msg_Ev_m06_4010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction2);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_co_boss", "rejoice_small", "npc_main_co_boss");
            var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_06", "main_06_01", "dyn_main_co_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            untyped waitFObjAction(setAnimationAction5);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_co_boss", "rejoice_small", "npc_main_co_boss");
            var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_07", "main_06_01", "dyn_main_co_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            untyped waitFObjAction2(setAnimationAction6);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 14.5, 0.01, -30.29, -180.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.4, 1.47, -30.83]), lua.Table.create([-6.63, 39.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_08", "main_06_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_co_boss", "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([16.1, 1.62, -29.04]), lua.Table.create([-6.86, 45.82, 0.0]), 15.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_co_boss", 15.09, 0.01, -30.26, 0.3));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_co_boss", "battle", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_co_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4010_talk_09", "main_06_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_5S_SUS");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_co_boss", 15.38, 0.01, -22.39, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.22, 1.92, -25.45]), lua.Table.create([-11.71, 1.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(6.0, lua.Table.create([15.27, 2.21, -24.08]), lua.Table.create([-11.71, 1.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 0.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
