package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDB82DCD8EC3E5E23")
@:expose("CDB82DCD8EC3E5E23")
class Ev_m10_0020 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "open", "trigger");
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup02", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup03", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teapot", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([7.85, 0.34, 6.9]), 161.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([8.85, 0.28, 7.73]), 125.79, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([10.27, 0.34, 6.65]), -89.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1.02, 0.01, -5.02, 0.01);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURAETTE", lua.Table.create([-2.98, 0.04, -6.12]), -161.52, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_m", 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_f", 70);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", 8.85, 0.28, 7.73, -168.01);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", 10.27, 0.34, 6.65, -89.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -5.01, 0.04, -9.89, 25.74);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HURAETTE", -4.68, 0.55, -10.55, 12.76);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.52, 1.63, -2.29]), lua.Table.create([-10.69, -32.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.67, lua.Table.create([-0.39, 1.57, 1.45]), lua.Table.create([-10.69, -32.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        var movementHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 1.02, 0.04, 0.05, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_CL");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "close", "trigger");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementHandle);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.6, 1.55, -0.34]), lua.Table.create([-10.75, -115.56, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_01", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 6.29, 0.31, 3.02, 46.41);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.63, 2.01, 3.65]), lua.Table.create([-15.61, -126.59, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 7.7, 0.31, 4.36, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_02", "main_10_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_03", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([8.07, 1.47, 6.8]), lua.Table.create([-9.97, -133.74, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_04", "main_10_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([7.56, 1.5, 7.55]), lua.Table.create([-12.24, -84.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([7.55, 1.5, 7.43]), lua.Table.create([-12.24, -84.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_05", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_06", "main_10_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_07", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 7.7, 0.31, 4.36, 36.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([6.3, 1.92, 3.83]), lua.Table.create([-14.11, -126.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_08", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m10_0020_select_01", "msg_Ev_m10_0020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([9.11, 1.47, 5.93]), lua.Table.create([-4.84, -118.16, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([9.06, 1.47, 6.02]), lua.Table.create([-4.84, -118.16, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_09", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_10", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([7.97, 1.49, 6.74]), lua.Table.create([-9.97, -133.74, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([8.11, 1.47, 6.87]), lua.Table.create([-9.97, -133.74, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_11", "main_10_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([6.3, 1.92, 3.83]), lua.Table.create([-14.11, -126.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_12", "main_10_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_13", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -2.98, 0.04, -6.12, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-5.26, 1.25, -10.32]), lua.Table.create([-17.67, -152.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-5.26, 1.94, -10.32]), lua.Table.create([-17.67, -152.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.1);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HURAETTE", -3.4, 1.18, -5.73, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.75, 1.59, -6.64]), lua.Table.create([-8.56, -119.38, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0020_talk_14", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 7.43, 0.31, 4.79, 53.87);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([6.33, 1.7, 5.32]), lua.Table.create([-8.65, 27.44, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([7.98, 1.7, 7.06]), lua.Table.create([-8.65, 27.44, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -124.13));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_10_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
