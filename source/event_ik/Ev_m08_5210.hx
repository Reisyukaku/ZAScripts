package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C93EB4E49C48CBB98")
@:expose("C93EB4E49C48CBB98")
class Ev_m08_5210 extends BaseMainScenario
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
