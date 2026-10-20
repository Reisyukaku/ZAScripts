package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7A73C749B645FDF6")
@:expose("C7A73C749B645FDF6")
class Ev_m08_5160 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
    }
}
