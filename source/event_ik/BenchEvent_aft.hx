package event_ik;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:expose("C1911771F2C4E483E")
@:hashAbi("C1911771F2C4E483E")
class BenchEvent_aft extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        IkScriptCommand.Fade_In("transition_fade_inout", 1.5);
        IkScriptCommand.Wait_Fade();
    }
}
