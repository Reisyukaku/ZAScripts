package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C223D6312177585BA")
@:expose("C223D6312177585BA")
class Ev_m10_9240 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_Xerneas", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_researcher", lua.Table.create([-845.56, -5.7, -603.82]), 101.92, "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Force("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -840.41, -5.54, -604.19, 64.31);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_researcher", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-842.28, -4.08, -604.2]), lua.Table.create([-2.64, -102.5, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-842.28, -4.34, -604.2]), lua.Table.create([-2.64, -102.51, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_researcher", -842.28, -5.7, -604.55, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-837.74, -4.19, -605.8]), lua.Table.create([-6.91, 113.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small_mc", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9240_talk_01", "main_10_01", "dyn_main_researcher", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_researcher", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -100.69);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "serious", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_researcher", -842.24, -5.7, -604.56, 90.11);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-840.99, -4.19, -604.78]), lua.Table.create([-6.91, 113.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_02", "main_10_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small", "npc_main_researcher");
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_03", "main_10_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "normal", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-838.8, -4.11, -604.94]), lua.Table.create([-5.99, 105.99, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 1));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_04", "main_10_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_researcher"));
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_05", "main_10_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-840.63, -3.64, -604.89]), lua.Table.create([-21.21, 103.62, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-840.87, -3.74, -604.83]), lua.Table.create([-21.21, 103.62, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_06", "main_10_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-843.78, -4.74, -605.73]), lua.Table.create([3.79, -118.78, 0.0]), 37.98, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-843.66, -4.74, -605.95]), lua.Table.create([3.79, -118.78, 0.0]), 37.98, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "normal");
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 24);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_07", "main_10_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-840.98, -4.24, -604.8]), lua.Table.create([-1.6, 108.01, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_researcher", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_researcher", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 2));
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_researcher", 33, null, 4.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_08", "main_10_01", "dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-837.48, -4.17, -606.43]), lua.Table.create([-6.6, 120.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 1));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small", "npc_main_researcher");
        var showExtraResearchReplyResult:Dynamic = main.event.ik.command.IkScriptCommand.SCEDEAB75E66260EC();
        if (true == showExtraResearchReplyResult)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 29);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_09", "main_10_01", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_researcher");
            waitFObjAction(resetAnimationAction, null, null, null, null, null, null, null, null);
        }
        else
        {
            var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9240_talk_10", "main_10_01", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "rejoice_small_mc", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_researcher");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_researcher", -849.08, -5.7, -601.55, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-841.77, -4.16, -604.21]), lua.Table.create([-1.75, -97.29, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_10_03");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
