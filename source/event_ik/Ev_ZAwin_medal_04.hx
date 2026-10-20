package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C5B3A23A86B7D26D4")
@:expose("C5B3A23A86B7D26D4")
class Ev_ZAwin_medal_04 extends main.event.ik.base.BaseZaRewardEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        this.FCA4AB983F3B7598B();
        this.F931F8A64586A46A6("msg_zs_medal_04_01");
        this.FCAA81491EE1DCCA4(true);
        main.event.ik.command.IkScriptCommand.S17D266FFC93302D7(this.F232EB3B08664C18B());
    }
}
