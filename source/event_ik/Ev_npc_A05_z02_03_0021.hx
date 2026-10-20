package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CE7A00ABA002C0C7D")
@:expose("CE7A00ABA002C0C7D")
class Ev_npc_A05_z02_03_0021 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A05_z02_03_talk_0021");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A05_z02_03_talk_0021_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
