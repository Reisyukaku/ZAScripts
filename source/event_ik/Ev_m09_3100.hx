package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE76C03AED9ED0B4F")
@:expose("CE76C03AED9ED0B4F")
class Ev_m09_3100 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        cppbindings.C5090F7B8.f92941AC0("flag_Towerfura_Disable", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        this.PlayDemo("ik_demo/ev/d033a/d033a.trtml");
        cppbindings.C5090F7B8.f92941AC0("flag_Towerfura_Disable", false);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
    }
}
