package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CE2BFD4C26346169F")
@:expose("CE2BFD4C26346169F")
class Ev_npc_A02_z01_05_0014 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A02_z01_05_talk_0014");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A02_z01_05_talk_0014_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
