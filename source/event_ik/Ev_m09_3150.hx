package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE75B05AED9DE9B82")
@:expose("CE75B05AED9DE9B82")
class Ev_m09_3150 extends BaseMainScenario
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
        this.PlayDemo("ik_demo/ev/d035/d035.trtml", false);
    }
}
