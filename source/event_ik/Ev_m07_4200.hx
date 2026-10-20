package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7822EA1A71E07C4B")
@:expose("C7822EA1A71E07C4B")
class Ev_m07_4200 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_f", "main_m7_mega_thiru"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -303.92, 26.93, -341.99, 75.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -307.06, 26.92, -341.38, 82.35);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m7_mega_thiru", -294.2, 26.93, -340.32, -108.32);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4200");
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-299.56, 28.17, -342.06]), lua.Table.create([-7.13, -108.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-297.93, 27.95, -341.53]), lua.Table.create([-7.13, -108.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_f", -304.19, 26.92, -341.12, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-306.23, 28.39, -343.58]), lua.Table.create([-7.4, -112.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-306.42, 28.39, -343.13]), lua.Table.create([-7.4, -112.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4200_talk_01", "main_07_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-305.3, 28.41, -343.09]), lua.Table.create([-5.15, -140.18, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "sad", "npc_main_friend_f");
            var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_f", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4200_talk_02", "main_07_01", "npc_main_friend_f");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4200_select_01", "msg_Ev_m07_4200_select_02"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 24);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4200_talk_03", "main_07_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var cameraMoveAngleFov:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov;
            var cameraVector:Dynamic = lua.Table.create([-305.01, 28.37, -341.36]);
            var cameraVector2:Dynamic = lua.Table.create([-3.84, -66.1, 0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngleFov(0.0, cameraVector, cameraVector2, 30.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_f");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -303.92, 26.93, -341.99, 75.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -304.19, 26.92, -341.12, 84.87);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m7_mega_thiru", -294.2, 26.93, -340.32, -108.32);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            var cameraMoveAngleFov2:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov;
            var cameraVector3:Dynamic = lua.Table.create([-303.13, 28.38, -341.0]);
            var cameraVector4:Dynamic = lua.Table.create([-4.32, 32.36, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngleFov2(0.0, cameraVector3, cameraVector4, 30.0, 0, cameraEase2, null, null, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4200_talk_06", "main_07_01");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4200_select_03", "msg_Ev_m07_4200_select_04"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        var fObjLookAtEnd:Dynamic = main.event.ik.command.IkScriptCommand.FObj_LookAt_End;
        fObjLookAtEnd("Player");
        if (((0 == selection)))
        {
            untyped this.m_resultParam = 1;
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-304.52, 28.38, -343.27]), lua.Table.create([-3.84, -163.09, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
            var flagValue2:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4200");
            if (((false == flagValue2)))
            {
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            }
            else
            {
                var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_friend_f");
                var setTurnToObjAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_f", "Player");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction4);
                main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_f");
            };
            var isFullHPAndPPAtPartyResult:Dynamic = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
            if (((!lua.abi.Host.truthy(isFullHPAndPPAtPartyResult))))
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
                var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4200_talk_04", "main_07_01", "npc_main_friend_f");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
                var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 74);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            };
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4200_talk_05", "main_07_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "serious", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m7_mega_thiru", "head");
            var setTurnToObjAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "main_m7_mega_thiru");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "main_m7_mega_thiru", "head");
            var setTurnToObjAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_f", "main_m7_mega_thiru");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction6);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-307.01, 28.81, -341.96]), lua.Table.create([-7.31, -97.27, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraVector5:Dynamic = lua.Table.create([-307.01, 28.53, -341.96]);
            var cameraVector6:Dynamic = lua.Table.create([-7.31, -97.27, -0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, cameraVector5, cameraVector6, 25.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 491);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_m7_mega_thiru", -93.32);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay("main_m7_mega_thiru", "npc_main_friend_f");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            var setAnimationImmediatelyAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_f", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationImmediatelyAction);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -306.05, 26.93, -344.6, 70.97);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -303.91, 26.93, -339.06, 114.94);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        };
        untyped this.m_resultParam = selection;
    }
}
