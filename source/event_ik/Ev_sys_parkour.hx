package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CC401D7A0BF7AF906")
@:expose("CC401D7A0BF7AF906")
class Ev_sys_parkour extends main.event.ik.base.BaseTalkNpcEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped this.FCA4AB983F3B7598B();
        main.event.ik.command.IkScriptCommand.ShowMessageWindow(0, "msg_A04_z01_04_talk_21", "t1_A04", this.slot8);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped this.FC23A9684D395E8D9();
        main.event.ik.command.IkScriptCommand.ShowMessageWindow(0, "msg_A04_z01_04_talk_22", "t1_A04", this.slot8);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped this.F944A5F3BE9287C6E();
    }
}
