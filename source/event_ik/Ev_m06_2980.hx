package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDD850624B1F50079")
@:expose("CDD850624B1F50079")
class Ev_m06_2980 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var actorId:Dynamic = lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_main_friend_f"));
        var actorId2:Dynamic = lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_main_friend_m"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId, lua.Table.create([0.94, -0.01, 2.35]), 0.53, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId2, lua.Table.create([-0.5, 0.01, 2.25]), 15.46, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.5, 0.01, 8.11, 180.0));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId2, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.23, 1.35, 4.35]), lua.Table.create([-2.53, 164.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 0.5, 0.01, 5.7, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, 0.81, -0.01, 4.38, 0.5);
        var moveToPosXYZAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId2, 0.08, 0.01, 4.41, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.94, 1.32, 6.24]), lua.Table.create([-4.03, 51.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction3);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_01", "main_06_01", actorId);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_2980_select_01", "msg_Ev_m06_2980_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId2, 32, null, 2.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId2, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_02", "main_06_01", actorId2);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId2, 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_13", "main_06_01", actorId2);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.83, 1.52, 5.64]), lua.Table.create([-7.73, 16.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "sad", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, actorId2, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 19);
        var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(actorId2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_03", "main_06_01", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId2, "anger", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId2, actorId, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId2, 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_04", "main_06_01", actorId2);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId2, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId2, "Player", "head");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone("Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2980_talk_05", "main_06_01", "npc_main_co_boss", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2980_talk_06", "main_06_01", "npc_main_co_boss", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m06_2980_talk_07", "main_06_01", "npc_main_co_boss", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.94, 1.32, 6.24]), lua.Table.create([-4.03, 51.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        var setAnimationOneShotAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId, 32, null, 4.01);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_08", "main_06_01", actorId);
        var menuLabels:Dynamic = (["msg_Ev_m06_2980_select_03", "msg_Ev_m06_2980_select_04"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "sad", "npc_main_friend_f");
            var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_10", "main_06_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            untyped waitFObjAction(setAnimationAction6);
        }
        else
        {
            var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "sad", "npc_main_friend_f");
            var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_09", "main_06_01", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            untyped waitFObjAction2(setAnimationAction8);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "sad", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId2, "sad", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.83, 1.52, 5.64]), lua.Table.create([-7.73, 16.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_11", "main_06_01", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId2, 25);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2980_talk_12", "main_06_01", actorId2);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
