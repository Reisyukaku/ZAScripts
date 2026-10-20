package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD47FE924ACBF42DB")
@:expose("CD47FE924ACBF42DB")
class Ev_m06_2850 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([0.44, 0.02, 3.95]), 79.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([1.35, 0.01, 4.67]), (-149.0), "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_f", 32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_m", 32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.48, 0.01, 9.07, 180.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        var playerMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 0.48, 0.01, 5.34, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.59), 2.72, 2.14]), lua.Table.create([(-23.47), (-157.12), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([(-0.59), 2.25, 2.14]), lua.Table.create([(-23.47), (-157.12), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        var dynMainFriendMAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var dynMainFriendFAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendMAnimation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendFAnimation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small_mc", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "rejoice_big_mc", "npc_main_friend_m");
        var dynMainFriendMTurn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", (-32.0));
        var dynMainFriendFTurn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", 4.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_10", "main_06_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMovement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendMTurn);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendFTurn);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.27, 1.45, 6.57]), lua.Table.create([(-7.7), 15.58, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var dynMainFriendMAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_11", "main_06_01", "dyn_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_2850_select_03", "msg_Ev_m06_2850_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var playerAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "anger", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendMAnimation2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.77, 1.63, 4.99]), lua.Table.create([(-6.66), 16.62, 7.05]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "dislike", "npc_main_friend_f");
        var dynMainFriendFAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02_WEAK");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([0.68, 1.59, 4.69]), lua.Table.create([(-6.66), 16.62, 7.05]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m06_2850_talk_12", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendFAnimation2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.KillEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-1.13), 1.43, 3.45]), lua.Table.create([(-5.81), (-122.75), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_friend_m", lua.Table.create([0.12, 1.5, 4.85]));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_05");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2850_talk_01", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.03, 1.46, 4.5]), lua.Table.create([(-5.38), (-140.53), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "serious", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2850_talk_02", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-1.49), 1.44, 5.77]), lua.Table.create([(-6.34), (-61.41), 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var dynMainFriendFAnimation3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 24);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2850_talk_03", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2850_talk_04", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.79), 3.76, 6.62]), lua.Table.create([(-54.84), (-40.33), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([(-0.46), 3.03, 6.23]), lua.Table.create([(-54.84), (-40.33), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2850_talk_05", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2850_talk_06", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M06_2850");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendFAnimation3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "sad", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.27, 1.45, 6.57]), lua.Table.create([(-7.54), 14.39, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var dynMainFriendFAnimation4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_07", "main_06_01", "dyn_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_2850_select_01", "msg_Ev_m06_2850_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var playerAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendFAnimation4);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.69), 2.67, 7.61]), lua.Table.create([(-26.99), (-27.14), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 25);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_08", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_09", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.85, 1.45, 5.44]), lua.Table.create([(-6.63), (-21.21), 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "sad", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_17", "main_06_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-1.49), 1.44, 5.77]), lua.Table.create([(-6.34), (-61.41), 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        var dynMainFriendMAnimation3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var dynMainFriendFAnimation5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_18", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendMAnimation3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendFAnimation5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        var dynMainFriendFAnimation6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_19", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainFriendFAnimation6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2850_talk_20", "main_06_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.47, 0.01, 7.21, 0.0));
    }
}
