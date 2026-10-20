package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CD6D7C5EE2CD24D3B")
@:expose("CD6D7C5EE2CD24D3B")
class Ev_npc_A03_z02_05_0016 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A03_z02_05_talk_0016");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A03_z02_05_talk_0016_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
