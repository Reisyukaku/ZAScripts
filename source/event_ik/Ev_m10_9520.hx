package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3D1A601226EC7F0D")
@:expose("C3D1A601226EC7F0D")
class Ev_m10_9520 extends BaseMainScenario
{
    @:abiSlot(8)
    public var POKE_IBE:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    @:abiSlot(11)
    public var CHR_PLY:Dynamic;

    public function new()
    {
        untyped (this)[11] = "dyn_ibe";
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
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait(untyped this.POKE_IBE);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(untyped this.POKE_IBE, 203);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.POKE_IBE, -544.27, 19.22, -350.61, -135.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PLY, -547.46, 19.33, -354.9, 39.01);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.34, 20.58, -351.66]), lua.Table.create([-4.39, 176.21, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-544.34, 20.64, -351.66]), lua.Table.create([-4.39, 176.21, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_BOSS_05_STOP");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET_WITHOUT_PM");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.POKE_IBE, "sad2", untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone(untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(untyped this.POKE_IBE);
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9520_talk_01", "main_10_01", untyped this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m10_9520_talk_02", "main_10_01", untyped this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(untyped this.POKE_IBE);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.POKE_IBE, "serious", untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(untyped this.POKE_IBE);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.POKE_IBE, "normal", untyped this.POKE_IBE);
    }
}
