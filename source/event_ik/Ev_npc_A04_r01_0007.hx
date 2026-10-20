package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C534D56E16B294E21")
@:expose("C534D56E16B294E21")
class Ev_npc_A04_r01_0007 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A04_r01_talk_0007");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A04_r01_talk_0007_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
