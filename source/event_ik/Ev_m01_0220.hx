package event_ik;

import main.event.ik.base.BaseMainScenario;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C7DA8F973D2DD4BB7")
@:expose("C7DA8F973D2DD4BB7")
class Ev_m01_0220 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        IkScriptCommand.GetFlagValue("flag_Ev_m01_0220");
        IkScriptCommand.ShowMessage(2, "msg_Ev_m01_0220_sys_01", "main_01_01");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_m01_0220_select_01", "msg_Ev_m01_0220_select_02"], 0, true, false);
        IkScriptCommand.HideMessageWindow();
        if (selection == 0)
        {
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S_LOW");
            IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            IkScriptCommand.Wait_Fade();
            IkScriptCommand.Wait_Time(1.0);
            IkScriptCommand.FObj_Set_Pos_Ang("Player", 2.41, 0.01, 0.09, -31.08);
            IkScriptCommand.Wait_FObj_Action();
        }
        m_resultParam = selection;
        IkScriptCommand.HideMessageWindow();
    }
}
