package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAC88EC1A8FAD7C8D")
@:expose("CAC88EC1A8FAD7C8D")
class Ev_m07_4400 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "main_m7_mega_fushi"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -838.53, 12.01, -315.32, 36.89);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -840.68, 11.37, -316.85, 20.08);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m7_mega_fushi", untyped -837.04, 12.0, untyped -309.44, untyped -160.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4400");
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "main_m7_mega_fushi", "head");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-839.04, 12.97, -314.73]), lua.Table.create([-4.22, -158.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-838.49, 12.86, -313.35]), lua.Table.create([-4.22, -158.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", -839.82, 12.01, -314.69, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-839.86, 13.33, -316.77]), lua.Table.create([-7.32, -158.17, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4400_talk_06", "main_07_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4400_talk_01", "main_07_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -838.53, 12.01, -315.32, 36.89);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -839.82, 12.01, -314.69, 21.97);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m7_mega_fushi", -837.04, 12.0, untyped -309.44, untyped -160.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4400_talk_04", "main_07_01");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4400_select_01", "msg_Ev_m07_4400_select_02"]), 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        var fObjLookAtEnd:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End;
        fObjLookAtEnd("Player");
        if (((0 == selection)))
        {
            untyped this.m_resultParam = 1;
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-838.0, 13.46, -316.66]), lua.Table.create([-5.75, 147.22, 0.0]), 30.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
            var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
            var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
            var isFullHPAndPPAtPartyResult:Dynamic = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
            if (((!lua.abi.Host.truthy(isFullHPAndPPAtPartyResult))))
            {
                var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4400_talk_02", "main_07_01", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
                var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 74);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                waitFObjAction(setAnimationAction3);
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "serious", "npc_main_rival_m");
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 24);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4400_talk_03", "main_07_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m7_mega_fushi", "head");
            var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "main_m7_mega_fushi");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "main_m7_mega_fushi", "head");
            var setTurnToObjAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "main_m7_mega_fushi");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-840.32, 13.49, -317.89]), lua.Table.create([-7.32, -158.17, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-840.02, 13.39, -317.15]), lua.Table.create([-7.32, -158.17, 0.0]), 30.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 491);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay("main_m7_mega_fushi", "npc_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            var setAnimationImmediatelyAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_rival_m", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationImmediatelyAction);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -843.91, 10.26, -326.75, 22.44);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", untyped -845.21, 10.26, untyped -326.07, 19.05);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        };
        untyped this.m_resultParam = selection;
    }
}
