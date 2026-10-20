package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import cppbindings.C56DE81E7;

@:keep
@:chunk("event_ik")
@:hashAbi("C8F5BD30600C19328")
@:expose("C8F5BD30600C19328")
class RoyaleEndResult extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        if (C56DE81E7.f19472C1C())
        {
            IkScriptCommand.StartSequenceRoyaleResult();
        }
    }
}
