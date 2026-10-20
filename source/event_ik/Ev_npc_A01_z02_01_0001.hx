package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CCEAD30686EFBBD1D")
@:expose("CCEAD30686EFBBD1D")
class Ev_npc_A01_z02_01_0001 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A01_z02_01_talk_0001");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A01_z02_01_talk_0001_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
