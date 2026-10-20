package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC970CA5B8CD2A381")
@:expose("CC970CA5B8CD2A381")
class Ev_m08_3400 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -686.02, 0.01, -316.04, 107.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -685.47, 0.01, -315.04, 142.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m8_mega_ban", -680.01, 0.01, -319.0, -55.95);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m08_3400");
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m8_mega_ban", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "main_m8_mega_ban", "head");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-683.64, 1.3, -316.76]), lua.Table.create([-4.46, -58.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-687.09, 1.35, -314.7]), lua.Table.create([-4.46, -58.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-679.79, 2.7, -322.4]), lua.Table.create([-19.05, 159.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_friend_m", 32, null, 2.85);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3400_talk_01", "main_08_01", "npc_main_friend_m");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_3400_select_01", "msg_Ev_m08_3400_select_02"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-685.35, 1.57, -316.3]), lua.Table.create([-12.49, 166.46, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "serious", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3400_talk_02", "main_08_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-685.15, 1.69, -317.28]), lua.Table.create([-17.73, 159.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 24);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3400_talk_03", "main_08_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var cameraVector:Dynamic = lua.Table.create([-685.72, 1.5, -317.27]);
            var cameraVector2:Dynamic = lua.Table.create([-5.51, 177.7, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 30.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -686.02, 0.01, -316.04, 107.48);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -685.47, 0.01, -315.04, 142.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m8_mega_ban", -680.01, 0.01, -319.0, -55.95);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            var cameraVector3:Dynamic = lua.Table.create([-685.72, 1.5, -317.27]);
            var cameraVector4:Dynamic = lua.Table.create([-5.51, 177.7, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector3, cameraVector4, 30.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m08_3400_talk_04", "main_08_01");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_3400_select_03", "msg_Ev_m08_3400_select_04"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        var fObjLookAtEnd:Dynamic = main.event.ik.command.IkScriptCommand.FObj_LookAt_End;
        untyped fObjLookAtEnd("Player");
        if (((0 == selection)))
        {
            untyped this.m_resultParam = 1;
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
            var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_friend_m");
            var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_m", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_m");
            var isFullHPAndPPAtPartyResult:Dynamic = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
            if (((!lua.abi.Host.truthy(isFullHPAndPPAtPartyResult))))
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
                var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 74);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                untyped waitFObjAction(setAnimationAction3);
            };
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 14);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3400_talk_06", "main_08_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "serious", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m8_mega_ban", "head");
            var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "main_m8_mega_ban");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "main_m8_mega_ban", "head");
            var setTurnToObjAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_m", "main_m8_mega_ban");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-689.45, 1.5, -316.29]), lua.Table.create([-2.8, -87.98, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-689.45, 1.05, -316.29]), lua.Table.create([-2.8, -87.98, 0.0]), 30.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 491);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay("main_m8_mega_ban", "npc_main_friend_m");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            var setAnimationImmediatelyAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_m", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationImmediatelyAction);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
            var postEventGlobal:Dynamic = ext.gf.audio.SoundCommand.PostEventGlobal;
            untyped postEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -693.82, 0.01, -312.96, 109.4);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -692.38, 0.01, -310.67, 118.19);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        untyped this.m_resultParam = selection;
    }
}
