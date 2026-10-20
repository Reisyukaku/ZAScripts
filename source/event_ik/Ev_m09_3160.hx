package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE7577FAED9DB81F9")
@:expose("CE7577FAED9DB81F9")
class Ev_m09_3160 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -452.26, 3.07, -487.42, 17.11);
        cppbindings.C5090F7B8.f92941AC0("flag_Towerfura_Disable", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_crystals_enable", false);
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_m09_3150", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        this.PlayDemo("ik_demo/ev/d037a/d037a.trtml", false);
    }
}
