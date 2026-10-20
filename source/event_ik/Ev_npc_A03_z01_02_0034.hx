package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C6CD0052B0A1C017D")
@:expose("C6CD0052B0A1C017D")
class Ev_npc_A03_z01_02_0034 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A03_z01_02_talk_0034");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A03_z01_02_talk_0034_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
