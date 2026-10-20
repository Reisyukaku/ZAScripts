package event_ik;

import main.event.ik.base.BaseEvent;
import cppbindings.C29CB89C2 as EventScriptParam;
import cppbindings.C05D9A855 as DemoCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C17FA813454BC362B")
@:expose("C17FA813454BC362B")
class DemoPlay extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var parameters:cppbindings.C29CB89C2 = this.m_eventScriptParam;
        var demoName:String = parameters.f73EE8FEC();
        var demoPath:String = (((("ik_demo/ee/" + demoName) + "/") + demoName) + ".trtml");
        cppbindings.C05D9A855.f635E7B9C(demoPath, "startup", true);
        this.Await_no_timeout(cppbindings.C05D9A855.f08FA26F1);
        cppbindings.C05D9A855.f40B8C6B1();
        this.Await_no_timeout(cppbindings.C05D9A855.f59D006EE);
        cppbindings.C05D9A855.fB051DFDA();
    }
}
