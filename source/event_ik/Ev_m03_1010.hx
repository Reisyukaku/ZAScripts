package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6A7097AFDE859E79")
@:expose("C6A7097AFDE859E79")
class Ev_m03_1010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["Player", "npc_main_hotel_manager", "npc_pokemon_floette"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "open", "trigger");
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup02", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup03", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teapot", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        var sceneVector:Dynamic = lua.Table.create([8.85, 0.28, 7.73]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", sceneVector, 125.79, "npc_main_friend_m");
        var sceneVector2:Dynamic = lua.Table.create([10.27, 0.34, 6.65]);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", sceneVector2, -89.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1.02, 0.0, -4.4, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_m", 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_f", 70);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", 8.85, 0.28, 7.73, -168.01);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", 10.27, 0.34, 6.65, -89.0);
        var movementAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 1.02, 0.0, 0.05, 0.5);
        var sceneVector3:Dynamic = lua.Table.create([-0.62, 1.64, -1.91]);
        var sceneVector4:Dynamic = lua.Table.create([-10.69, -32.56, -0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector5:Dynamic = lua.Table.create([-0.39, 1.57, 1.45]);
        var sceneVector6:Dynamic = lua.Table.create([-10.69, -32.56, -0.0]);
        var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.15, sceneVector5, sceneVector6, 40.0, 0, cameraEase2);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_CL");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "close", "trigger");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector7:Dynamic = lua.Table.create([-0.6, 1.55, -0.34]);
        var sceneVector8:Dynamic = lua.Table.create([-10.75, -115.56, -0.0]);
        var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_10", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 6.16, 0.31, 3.0, 47.41);
        var sceneVector9:Dynamic = lua.Table.create([5.63, 2.01, 3.65]);
        var sceneVector10:Dynamic = lua.Table.create([-15.61, -126.59, -0.0]);
        var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector9, sceneVector10, 40.0, 0, cameraEase4);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 7.7, 0.31, 4.36, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_11", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector11:Dynamic = lua.Table.create([10.22, 1.42, 7.44]);
        var sceneVector12:Dynamic = lua.Table.create([-2.05, 27.28, -0.0]);
        var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector11, sceneVector12, 40.0, 0, cameraEase5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        var sceneVector13:Dynamic = lua.Table.create([-100.25, 0, 100.25]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj_Offset("dyn_main_friend_m", "dyn_main_friend_f", "head", sceneVector13);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_12", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector14:Dynamic = lua.Table.create([8.01, 1.37, 7.5]);
        var sceneVector15:Dynamic = lua.Table.create([-4.73, -81.29, 0.0]);
        var cameraEase6:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector14, sceneVector15, 40.0, 0, cameraEase6);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector16:Dynamic = lua.Table.create([100.25, 0, 100.25]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj_Offset("dyn_main_friend_f", "dyn_main_friend_m", "head", sceneVector16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_13", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_14", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 7.66, 0.31, 4.42, 46.41);
        var sceneVector17:Dynamic = lua.Table.create([6.05, 1.95, 3.76]);
        var sceneVector18:Dynamic = lua.Table.create([-16.14, -129.4, -0.0]);
        var cameraEase7:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector17, sceneVector18, 40.0, 0, cameraEase7);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_15", "main_03_01", "dyn_main_friend_f");
        var sceneVector19:Dynamic = lua.Table.create([8.13, 1.64, 5.3]);
        var sceneVector20:Dynamic = lua.Table.create([-0.76, 30.23, 0.0]);
        var cameraEase8:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector19, sceneVector20, 40.0, 0, cameraEase8);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        var dialogueChoices:Dynamic = [null, null];
        dialogueChoices[0] = main.event.ik.command.IkScriptCommand.CreateRivalText("msg_Ev_m03_1010_select_01", null, 1);
        var createPlaneTextResult:Dynamic = main.event.ik.command.IkScriptCommand.CreatePlaneText("msg_Ev_m03_1010_select_02");
        dialogueChoices[1] = createPlaneTextResult;
        main.event.ik.command.IkScriptCommand.ShowContextMenuWithTag(dialogueChoices, 0, false, false);
        var sceneVector22:Dynamic = lua.Table.create([8.41, 1.29, 6.84]);
        var sceneVector23:Dynamic = lua.Table.create([0.0, -141.79, 0.0]);
        var cameraEase9:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector22, sceneVector23, 40.0, 0, cameraEase9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector24:Dynamic = lua.Table.create([8.33, 1.29, 6.9]);
        var sceneVector25:Dynamic = lua.Table.create([0.0, -141.79, 0.0]);
        var cameraEase10:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, sceneVector24, sceneVector25, 40.0, 0, cameraEase10);
        var sceneVector26:Dynamic = lua.Table.create([8.82, 1.3, 7.5]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_friend_f", sceneVector26);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_16", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector27:Dynamic = lua.Table.create([10.09, 1.48, 5.7]);
        var sceneVector28:Dynamic = lua.Table.create([-10.71, 161.19, 0.0]);
        var cameraEase11:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector27, sceneVector28, 40.0, 0, cameraEase11);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_17", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector29:Dynamic = lua.Table.create([9.54, 1.36, 7.14]);
        var sceneVector30:Dynamic = lua.Table.create([-6.28, 123.81, 0.0]);
        var cameraEase12:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector29, sceneVector30, 40.0, 0, cameraEase12);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_18", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector31:Dynamic = lua.Table.create([6.05, 1.95, 3.76]);
        var sceneVector32:Dynamic = lua.Table.create([-16.14, -129.4, -0.0]);
        var cameraEase13:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector31, sceneVector32, 40.0, 0, cameraEase13);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_19", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector33:Dynamic = lua.Table.create([8.01, 1.37, 7.5]);
        var sceneVector34:Dynamic = lua.Table.create([-4.73, -81.29, 0.0]);
        var cameraEase14:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector33, sceneVector34, 40.0, 0, cameraEase14);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_20", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_21", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_22", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector35:Dynamic = lua.Table.create([9.26, 1.38, 7.03]);
        var sceneVector36:Dynamic = lua.Table.create([-1.29, -67.96, 0.0]);
        var cameraEase15:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector35, sceneVector36, 40.0, 0, cameraEase15);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_23", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector37:Dynamic = lua.Table.create([10.09, 1.48, 5.7]);
        var sceneVector38:Dynamic = lua.Table.create([-10.71, 161.19, 0.0]);
        var cameraEase16:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector37, sceneVector38, 40.0, 0, cameraEase16);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_24", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_25", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_26", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector39:Dynamic = lua.Table.create([5.63, 2.01, 3.65]);
        var sceneVector40:Dynamic = lua.Table.create([-15.61, -126.59, -0.0]);
        var cameraEase17:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector39, sceneVector40, 40.0, 0, cameraEase17);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 178);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_27", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var sceneVector41:Dynamic = lua.Table.create([9.62, 1.71, 5.6]);
        var sceneVector42:Dynamic = lua.Table.create([-16.0, 159.36, 0.0]);
        var cameraEase18:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector41, sceneVector42, 40.0, 0, cameraEase18);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector43:Dynamic = lua.Table.create([9.53, 1.67, 5.83]);
        var sceneVector44:Dynamic = lua.Table.create([-16.0, 159.36, 0.0]);
        var cameraEase19:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, sceneVector43, sceneVector44, 40.0, 0, cameraEase19);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1010_talk_28", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_03_03");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup02", false);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup03", false);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teapot", false);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
    }
}
