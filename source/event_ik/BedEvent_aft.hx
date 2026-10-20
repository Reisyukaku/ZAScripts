package event_ik;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:expose("CBBE4415C6B52447D")
@:hashAbi("CBBE4415C6B52447D")
class BedEvent_aft extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_FORCE_OFF");
        IkScriptCommand.Fade_In("transition_fade_inout", 1.5);
        IkScriptCommand.Wait_Fade();
    }
}
