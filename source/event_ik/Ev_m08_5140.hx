package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7A6CDB49B6400144")
@:expose("C7A6CDB49B6400144")
class Ev_m08_5140 extends BaseMainScenario
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
