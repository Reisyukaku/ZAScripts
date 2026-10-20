package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import cppbindings.C29CB89C2 as EventScriptParam;

@:keep
@:chunk("event_ik")
@:hashAbi("C7A64D585F7F23852")
@:expose("C7A64D585F7F23852")
class Sys_FadeEvent extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var parameters:cppbindings.C29CB89C2 = this.m_eventScriptParam;
        var isFadeOut:StdTypes.Bool = (parameters.f73EE8FEC() == "1");
        parameters = this.m_eventScriptParam;
        var fadeType:String = (if ((parameters.fBF448F72() == "1")) {
            "White";
        } else {
            "transition_fade_inout";
        });
        if (isFadeOut) {
            main.event.ik.command.IkScriptCommand.Fade_Out(fadeType);
        } else {
            main.event.ik.command.IkScriptCommand.Fade_In(fadeType);
        };
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
