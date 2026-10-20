package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CF393462C26C1D085")
@:expose("CF393462C26C1D085")
class Ev_npc_A05_z02_01_0005 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A05_z02_01_talk_0005");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A05_z02_01_talk_0005_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
