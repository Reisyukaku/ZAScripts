package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB8F6F45B83BACD4B")
@:expose("CB8F6F45B83BACD4B")
class Ev_m08_3600 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -148.39, 0.34, -743.2, 127.46);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -146.63, 0.33, -742.98, 159.37);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m8_mega_suta", -143.09, 0.33, -747.28, -47.04);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m08_3600");
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m8_mega_suta", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "main_m8_mega_suta", "head");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-145.02, 1.13, -745.36]), lua.Table.create([-6.14, -49.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-149.24, 1.72, -741.81]), lua.Table.create([-6.14, -49.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            var cameraVector:Dynamic = lua.Table.create([-146.99, 1.77, -743.25]);
            var cameraVector2:Dynamic = lua.Table.create([-4.46, 84.98, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 30.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            var cameraVector3:Dynamic = lua.Table.create([-146.99, 1.77, -743.25]);
            var cameraVector4:Dynamic = lua.Table.create([-4.46, 84.98, -0.0]);
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m08_3600_talk_04", "main_08_01");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_3600_select_03", "msg_Ev_m08_3600_select_04"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        var fObjLookAtEnd:Dynamic = main.event.ik.command.IkScriptCommand.FObj_LookAt_End;
        untyped fObjLookAtEnd("Player");
        if (((0 == selection)))
        {
            untyped this.m_resultParam = 1;
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-149.37, 1.75, -742.63]), lua.Table.create([-4.75, -70.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
            var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_friend_f");
            var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_f", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_f");
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3600_talk_01", "main_08_01", "npc_main_friend_f");
            var menuLabels:Dynamic = (["msg_Ev_m08_3600_select_01", "msg_Ev_m08_3600_select_02"]);
            var selection2:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (((0 == selection2)))
            {
                var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small_mc", "npc_main_friend_f");
                var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
                untyped waitFObjAction(setAnimationAction3, null, null, null, null, null, null, null, null, null, null, null);
            }
            else
            {
                var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
                var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 19);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3600_talk_02", "main_08_01", "npc_main_friend_f");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var waitFObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                untyped waitFObjAction2(setAnimationAction5);
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
            main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
            var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 25);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0));
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3600_talk_03", "main_08_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "serious", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m8_mega_suta", "head");
            var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "main_m8_mega_suta");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "main_m8_mega_suta", "head");
            var setTurnToObjAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_f", "main_m8_mega_suta");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-150.36, 2.76, -740.83]), lua.Table.create([-13.45, -49.78, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-150.36, 2.31, -740.83]), lua.Table.create([-13.45, -49.78, -0.0]), 30.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 491);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay("main_m8_mega_suta", "npc_main_friend_f");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            var setAnimationImmediatelyAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_f", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationImmediatelyAction);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -157.78, 0.35, -732.24, 136.79);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -155.63, 0.33, -732.4, -82.49);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        untyped this.m_resultParam = selection;
    }
}
