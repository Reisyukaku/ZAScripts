package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C93C1C287520A7CFC")
@:expose("C93C1C287520A7CFC")
class Ev_npc_A05_z02_06_0003 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A05_z02_06_talk_0003");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A05_z02_06_talk_0003_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
