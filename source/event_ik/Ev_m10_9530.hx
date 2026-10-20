package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3D16DA1226E96584")
@:expose("C3D16DA1226E96584")
class Ev_m10_9530 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    public function new()
    {
        untyped (this)[10] = "dyn_guris";
        untyped (this)[9] = "dyn_guri";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait(untyped this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PLY, -544.27, 19.22, -350.61, -135.95);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.CHR_PLY, "normal", untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(untyped this.CHR_PLY, 203);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.34, 20.58, -351.66]), lua.Table.create([-4.39, 176.21, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-544.34, 20.64, -351.66]), lua.Table.create([-4.39, 176.21, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.CHR_PLY, 20);
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9530_talk_01", "main_10_01", untyped this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.CHR_PLY, "sad2", untyped this.CHR_PLY);
        untyped this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9530_talk_02", "main_10_01", untyped this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.CHR_PLY, "normal", untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
