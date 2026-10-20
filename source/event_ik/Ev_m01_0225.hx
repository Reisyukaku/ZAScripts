package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7DA8F473D2DD4338")
@:expose("C7DA8F473D2DD4338")
class Ev_m01_0225 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_P3DB_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_HOTEL_Z_EV_OP");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-653.75, 24.7, -864.28]), -92.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("ZIGARUDE", lua.Table.create([-654.7, 29.87, -868.76]), -25.5, "npc_zigarude_cell");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("ZIGARUDE", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -653.19, 24.71, -864.46, -87.26));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_EXC_BGM_05");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_01");
        var dynMainRivalMMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -656.49, 24.7, -863.66, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var playerMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -655.01, 24.71, -864.0, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-663.85, 29.66, -868.42]), lua.Table.create([-25.39, -119.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-662.49, 28.91, -867.64]), lua.Table.create([-25.39, -119.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainRivalMMovement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMovement);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-653.8, 26.05, -865.82]), lua.Table.create([-5.16, 137.9, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        var dynMainRivalMTurn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 103.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0225_talk_01", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainRivalMTurn);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_rival_m", lua.Table.create([-651.23, 25.73, -858.1]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-651.23, 25.73, -858.1]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-658.07, 25.93, -865.56]), lua.Table.create([2.82, -144.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-659.11, 25.85, -867.0]), lua.Table.create([2.82, -144.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0225_talk_02", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-655.48, 26.07, -863.77]), lua.Table.create([0.92, 106.74, (-0.0)]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var dynMainRivalMAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0225_talk_03", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainRivalMAnimation);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-654.35, 26.23, -865.06]), lua.Table.create([-7.06, 135.66, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0225_talk_04", "main_01_01", "dyn_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m01_0225_select_01", "msg_Ev_m01_0225_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        var dynMainRivalMAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 30);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.65);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0225_talk_05", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainRivalMAnimation2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-656.21, 26.02, -864.18]), lua.Table.create([4.69, -156.66, 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -655.46, 24.71, -863.78, -63.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 30));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ZIGARUDE", -654.7, 29.87, -868.76, -25.5));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-655.77, 30.71, -869.51]), lua.Table.create([-39.67, 177.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([-655.08, 30.71, -869.47]), lua.Table.create([-39.67, 177.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_MUTE_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_4S");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 3.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_01_02");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
