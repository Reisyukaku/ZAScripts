package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C34119D1221B37186")
@:expose("C34119D1221B37186")
class Ev_m10_9420 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    public function new()
    {
        untyped (this)[9] = "npc_main_secretary";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped (this)[9], untyped (this)[8], "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped (this)[8], untyped (this)[9], "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_START");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9420_talk_01", "main_10_01", untyped (this)[9]);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9420_talk_02", "main_10_01", untyped (this)[9]);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
