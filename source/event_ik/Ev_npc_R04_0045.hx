package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C009F8AF26990F46A")
@:expose("C009F8AF26990F46A")
class Ev_npc_R04_0045 extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        untyped this.F931F8A64586A46A6("msg_R04_0045_talk_0045");
        untyped this.FC23A9684D395E8D9();
        untyped this.F931F8A64586A46A6("msg_R04_0045_talk_0045_01");
        untyped this.F944A5F3BE9287C6E();
    }
}
