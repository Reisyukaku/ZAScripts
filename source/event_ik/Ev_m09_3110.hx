package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE7687DAED9E9F1C6")
@:expose("CE7687DAED9E9F1C6")
class Ev_m09_3110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        cppbindings.C5090F7B8.f92941AC0("flag_Towerfura_Disable", true);
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_m09_3110", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        this.PlayDemo("ik_demo/ev/d033b/d033b.trtml");
        cppbindings.C5090F7B8.f92941AC0("flag_Towerfura_Disable", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m09_3110_talk_01", "main_09_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_BOSS_03_FINISH");
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        cppbindings.C56DE81E7.fC7452F12();
    }
}
