package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4D2A36F4E2923C8")
@:expose("CB4D2A36F4E2923C8")
class Ev_m05_0100 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -607.98, 14.53, -808.23, -134.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -608.76, 14.52, -807.61, -149.22);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "serious", "npc_main_rival_m");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m05_0100");
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -607.63, 14.52, -806.81, -129.19));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-610.99, 15.57, -811.59]), lua.Table.create([-6.55, 71.28, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-606.54, 16.02, -808.01]), lua.Table.create([-6.55, 71.28, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", true);
            var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", -608.76, 14.52, -807.61, 1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-605.52, 15.86, -807.72]), lua.Table.create([-6.77, 72.5, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0100_talk_04", "main_05_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -608.76, 14.52, -807.61, -149.22);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FOOTSTEPS_M12DB_T1000");
            var cameraVector:Dynamic = lua.Table.create([-608.11, 15.86, -809.4]);
            var cameraVector2:Dynamic = lua.Table.create([-1.46, 173.37, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            var cameraVector3:Dynamic = lua.Table.create([-608.11, 15.86, -809.4]);
            var cameraVector4:Dynamic = lua.Table.create([-1.46, 173.37, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FOOTSTEPS_M12DB_T1000");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m05_0100_talk_02", "main_05_01");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0100_select_01", "msg_Ev_m05_0100_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        var waitTime:Dynamic = main.event.ik.command.IkScriptCommand.Wait_Time;
        untyped waitTime(0.3);
        if (((0 == selection)))
        {
            untyped this.m_resultParam = 1;
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
            var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
            var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
            var isFullHPAndPPAtPartyResult:Dynamic = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
            if (((!lua.abi.Host.truthy(isFullHPAndPPAtPartyResult))))
            {
                var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0100_talk_05", "main_05_01", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
                var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 74);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                untyped waitFObjAction(setAnimationAction);
            };
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0100_talk_06", "main_05_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m5_mega_supi", "head");
            var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "main_m5_mega_supi");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "main_m5_mega_supi", "head");
            var setTurnToObjAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "main_m5_mega_supi");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-605.13, 16.06, -805.22]), lua.Table.create([-5.87, 49.46, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-606.22, 15.91, -806.15]), lua.Table.create([-5.87, 49.46, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 491);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_m5_mega_supi", 48.7));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay("main_m5_mega_supi", "npc_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            var setAnimationImmediatelyAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_rival_m", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationImmediatelyAction);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FOOTSTEPS_RESET_T3000");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_M_BOUSOU_AURA");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
            var postEventGlobal:Dynamic = ext.gf.audio.SoundCommand.PostEventGlobal;
            untyped postEventGlobal("SET_BUS_VOLUME_PM_FOOTSTEPS_RESET_T3000");
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -604.78, 14.53, -806.11, -162.44));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        untyped this.m_resultParam = selection;
    }
}
