package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDA39524B20EF105")
@:expose("CDDA39524B20EF105")
class Ev_m06_2939 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_2940_talk_25", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
