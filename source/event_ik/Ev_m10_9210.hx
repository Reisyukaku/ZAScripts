package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C224E61121783F587")
@:expose("C224E61121783F587")
class Ev_m10_9210 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var eventParameters:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Force("Player", 1);
        var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -832.63, -5.65, -596.81, 56.89);
        var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_Xerneas", -828.41, -5.45, -594.55, -118.45);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_Xerneas", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-830.99, -3.8, -595.02]), lua.Table.create([9.79, -89.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-833.74, -4.51, -596.51]), lua.Table.create([9.79, -89.95, 0.0]), 40.0, 0, cameraEase, null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9210_talk_01", "main_10_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9210_talk_02", "main_10_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9210_talk_03", "main_10_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        eventParameters = this.m_eventScriptParam;
        eventParameters = eventParameters.f73EE8FEC();
        if ("0" == eventParameters)
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_APP_PV_DELAY_ON");
            eventParameters = "line01";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", eventParameters);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(eventParameters);
            }));
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-833.85, -4.52, -596.57]), lua.Table.create([7.74, -94.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_Xerneas", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-830.99, -3.8, -595.02]), lua.Table.create([9.79, -89.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_Xerneas", 491));
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_Xerneas", 40);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(eventParameters);
            var cameraMoveAngleFov:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov;
            var cameraVector:Dynamic = lua.Table.create([-831.0, -4.4, -594.71]);
            var cameraVector2:Dynamic = lua.Table.create([21.91, -81.03, -10.24]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngleFov(1.5, cameraVector, cameraVector2, 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m10_9210_talk_04", "main_10_01", "main_Xerneas", true, true);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.6);
            main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_BOSS_05_READY");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            main.event.ik.command.IkScriptCommand.FadeEffect(eventParameters);
        }
        else
        {
            eventParameters = this.m_eventScriptParam;
            eventParameters = eventParameters.f73EE8FEC();
            if ("1" == eventParameters)
            {
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m10_9210_talk_05", "main_10_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW_0S");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                eventParameters = untyped main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll;
                eventParameters();
            };
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
    }
}
