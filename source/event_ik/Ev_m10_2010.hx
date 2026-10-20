package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF0A262E85E44E78A")
@:expose("CF0A262E85E44E78A")
class Ev_m10_2010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A03_z02_04_0002", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_A03_z02_04_2", false);
        if (main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_037_020") == false)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub037_001", false);
        }
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-257.0, 0.09, -285.15]), -140.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([-261.73, 0.09, -282.18]), 131.09, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -257.85, 0.1, -286.38, 40.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", false);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-267.11, 5.07, -284.31]), lua.Table.create([-23.11, -81.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-266.26, 4.71, -284.44]), lua.Table.create([-23.11, -81.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-258.76, 1.96, -285.92]), lua.Table.create([-19.14, -113.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([-258.51, 1.87, -285.81]), lua.Table.create([-19.14, -113.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-257.57, 1.49, -285.4]), lua.Table.create([-19.14, -113.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.SD4A65D417E1E87B3("dyn_main_rival_m", 455);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-257.83, 1.0, -286.11]), lua.Table.create([-1.26, -136.77, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-257.83, 1.45, -286.11]), lua.Table.create([-1.26, -136.77, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        var rivalAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_2010_talk_01", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalAnimation);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_2010_talk_02", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-257.46, 1.47, -285.15]), lua.Table.create([-1.26, 19.78, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m10_2010_talk_08", "main_10_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var rewardCount:Int = cppbindings.C56DE81E7.f470EECED();
        for (index in 0...rewardCount)
        {
            var reward:Dynamic = cppbindings.C56DE81E7.f32353140(index);
            main.event.ik.command.IkScriptCommand.StartItemGetSequence(reward.f0562A11A(), reward.f5A484C47());
        }
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", true);
        var moveAction = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", -259.76, 0.09, -283.9, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-259.86, 1.71, -285.24]), lua.Table.create([-12.11, -76.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(6, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.2, lua.Table.create([-261.68, 1.71, -283.83]), lua.Table.create([-12.11, -76.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(6, Int)));
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("Player", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_2010_talk_03", "main_10_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("dyn_main_rival_m"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_detective", "head");
        var turnAction = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -69.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        var turnAction2 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -34.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_2010_talk_04", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnAction2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_2010_talk_05", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_rival_m", "head");
        var moveAction2 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -259.15, 0.09, -284.24, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-257.89, 1.53, -287.44]), lua.Table.create([-7.3, 166.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(6, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveAction2);
        main.event.ik.command.IkScriptCommand.FObj_Start_LipSync("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_detective", 32, null, 4.0));
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_2010_talk_06", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        var turnAction3 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 146.89);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnAction3);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-259.07, 1.25, -285.68]), lua.Table.create([5.95, 177.76, -0.0]), 34.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-259.09, 1.36, -285.2]), lua.Table.create([5.95, 177.76, -0.0]), 34.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_2010_talk_07", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
