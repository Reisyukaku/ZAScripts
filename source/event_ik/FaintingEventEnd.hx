package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CECE8542821208DA5")
@:expose("CECE8542821208DA5")
class FaintingEventEnd extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_gameover_gameover_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
