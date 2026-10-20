package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C6081FC973E569C90")
@:expose("C6081FC973E569C90")
class Ev_npc_R03_0015 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_R03_talk_0015");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_R03_talk_0015_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
