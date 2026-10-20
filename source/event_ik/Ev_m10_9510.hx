package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3D1DC61226EF6236")
@:expose("C3D1DC61226EF6236")
class Ev_m10_9510 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    public function new()
    {
        untyped (this)[11] = "main_Yveltal";
        untyped (this)[10] = "dyn_guris";
        untyped (this)[9] = "dyn_guri";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var eventParameters:Dynamic = null;
        eventParameters = this.m_eventScriptParam;
        eventParameters = eventParameters.f73EE8FEC();
        if ("0" == eventParameters)
        {
            eventParameters = "line01";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", eventParameters);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(eventParameters);
            }));
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 1);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "serious", this.slot8);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -544.27, 19.22, -350.61, -135.95);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -547.46, 19.33, -354.9, 39.01);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.7, 21.22, -350.06]), lua.Table.create([-10.49, 57.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-542.7, 20.75, -350.06]), lua.Table.create([-10.49, 57.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.26, 20.72, -351.85]), lua.Table.create([-8.86, 171.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.slot8);
            main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.slot8);
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.slot8);
            main.event.ik.command.IkScriptCommand.LookAtRotomPhone(this.slot8);
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9510_talk_01", "main_10_01", this.slot9);
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9510_talk_02", "main_10_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9510_talk_03", "main_10_01", this.slot10);
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9510_talk_04", "main_10_01", this.slot10);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.slot8);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.7, 20.75, -350.06]), lua.Table.create([-10.49, 57.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.slot8);
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_APP_PV_DELAY_ON");
            this.TimeWait(0.5);
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-544.46, 20.59, -352.7]);
            var cameraVector2:Dynamic = lua.Table.create([-10.49, 57.54, 5.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            cameraMoveAngle(0.3, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 17);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(eventParameters);
            main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m10_9510_talk_05", "main_10_01", null, true, true);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Shake(1.2, 0.2, 13, 0);
            main.event.ik.command.IkScriptCommand.Camera_Shake(1.2, 0.2, 13, 1);
            main.event.ik.command.IkScriptCommand.Camera_Shake(1.2, 0.2, 13, 2);
            this.TimeWait(1.5);
            main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_BOSS_05_READY");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            eventParameters = this.m_eventScriptParam;
            eventParameters = eventParameters.f73EE8FEC();
            if ("1" == eventParameters)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m10_9510_talk_06", "main_10_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                eventParameters = untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand;
                eventParameters("EV_STOP_LYER_EVENT_LOW_0S");
            };
        };
    }
}
