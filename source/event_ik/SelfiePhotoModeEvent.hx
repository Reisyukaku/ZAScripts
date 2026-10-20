package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C1EE8D05390FAFE97")
@:expose("C1EE8D05390FAFE97")
class SelfiePhotoModeEvent extends BaseEvent
{
    public function new()
    {
        super();
    }
    @:hashAbi("F9D5677973CCA2F41")
    public override function IsSkipCommonCreateAndEnd():Bool
    {
        return true;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped this.slot5 = false;
        this.Await_no_timeout((function():Dynamic
        {
            return !lua.abi.Host.truthy(cppbindings.C56DE81E7.fE6D3994A());
        }));
    }
}
