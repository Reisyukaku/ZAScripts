package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CF965EAD8094B286C")
@:expose("CF965EAD8094B286C")
class Ev_sys_wait_spawner_empty extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var spawnerName:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if (spawnerName == null || spawnerName == "")
        {
            return;
        }
        var remaining:Float = 10.0;
        while (remaining > 0)
        {
            if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f8457FF7A(spawnerName)))
            {
                break;
            }
            var delta:Float = main.event.ik.command.IkScriptCommand.Suspend();
            remaining = remaining - delta;
        }
    }
}
