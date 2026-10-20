package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4BB196F4E155A69")
@:expose("CB4BB196F4E155A69")
class Ev_m05_0190 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var npcAdult01BF03Id:Dynamic = lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_adult01_b_f_03"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcAdult01BF03Id, lua.Table.create([-213.81, 15.58, -557.05]), -163.13, "npc_adult01_b_f_03");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_main_friend_f", "ob0004_00_normal_01");
        var playerPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -214.72, 15.59, -560.2, 77.6);
        var npcMainFriendFPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -213.32, 15.58, -559.65, -64.89);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerPlacement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFPlacement);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "sad", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_f", 27));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-214.61, 16.88, -559.02]), lua.Table.create([1.45, -64.2, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_07", "main_05_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_f"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-214.83, 17.03, -559.36]), lua.Table.create([-3.75, -75.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.3, lua.Table.create([-215.84, 16.98, -559.53]), lua.Table.create([-4.22, -73.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_f", -98.48));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_f");
        var npcMainFriendFAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_08", "main_05_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0200_select_03", "msg_Ev_m05_0200_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var playerAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFAnimation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        var npcMainFriendFAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_09", "main_05_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFAnimation2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcAdult01BF03Id, "Player", "head");
        var pendingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(npcAdult01BF03Id, -214.45, 15.58, -558.86, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-215.38, 17.0, -559.85]), lua.Table.create([-2.96, -138.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var npcMainFriendFPlacement2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -213.81, 15.58, -560.44, -50.58);
        var playerPlacement2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -214.63, 15.59, -560.18, 130.58);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFPlacement2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerPlacement2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-216.35, 16.84, -560.86]), lua.Table.create([-2.63, -119.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcAdult01BF03Id, "head");
        var playerTurn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 34.58);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", npcAdult01BF03Id, "head");
        var npcMainFriendFTurn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_f", 5.42);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var pendingAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01BF03Id, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_01", "main_05_01", npcAdult01BF03Id);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0200_select_01", "msg_Ev_m05_0200_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurn);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFTurn);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01BF03Id, "sad");
        var pendingAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01BF03Id, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_02", "main_05_01", npcAdult01BF03Id);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01BF03Id, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_03", "main_05_01", npcAdult01BF03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-214.68, 16.9, -559.02]), lua.Table.create([0.26, -14.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcAdult01BF03Id, "npc_main_friend_f", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01BF03Id, "normal");
        var pendingAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(npcAdult01BF03Id);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var npcMainFriendFAnimation3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_11", "main_05_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction4);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFAnimation3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-216.35, 16.84, -560.86]), lua.Table.create([-2.63, -119.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01BF03Id, "rejoice_small");
        var pendingAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01BF03Id, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_04", "main_05_01", npcAdult01BF03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01BF03Id, "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(npcAdult01BF03Id);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(npcAdult01BF03Id, -212.36, 15.58, -551.81, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-215.32, 16.98, -558.76]), lua.Table.create([-2.91, -33.75, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
        var playerTurn2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
        var npcMainFriendFTurn2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_f", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurn2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFTurn2);
        var npcMainFriendFAnimation4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_10", "main_05_01", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0200_select_05", "msg_Ev_m05_0200_select_06"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var playerAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFAnimation4);
        var npcMainFriendFAnimation5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFAnimation5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "sad", "npc_main_friend_f");
        var npcMainFriendFAnimation6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_12", "main_05_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFAnimation6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-214.53, 17.06, -559.55]), lua.Table.create([-1.58, -28.93, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "surprise", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "serious", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-215.82, 16.81, -557.61]), lua.Table.create([-4.61, -30.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
        var npcMainFriendFAnimation7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0200_talk_15", "main_05_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainFriendFAnimation7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_f", -210.74, 15.58, -556.48, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 43.09);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
