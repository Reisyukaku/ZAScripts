package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CB7BD6929662FF656")
@:expose("CB7BD6929662FF656")
class Ev_npc_A04_z01_05_0020 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_A04_z01_05_talk_0020");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_A04_z01_05_talk_0020_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
