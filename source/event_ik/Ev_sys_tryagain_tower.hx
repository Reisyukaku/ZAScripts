package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C9E0420AA2452A8D1")
@:expose("C9E0420AA2452A8D1")
class Ev_sys_tryagain_tower extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var selection:Dynamic = 0;
        while (selection == 0)
        {
            main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_Ev_tryagain_climax_talk_01", "main_09_01");
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_tryagain_climax_select_01", "msg_Ev_tryagain_climax_select_02", "msg_Ev_tryagain_climax_select_03"], 0, true, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (selection == 0)
            {
                selection = 1;
                m_resultParam = 1;
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT_M09");
                cppbindings.C56DE81E7.f7F1CB100(true);
            }
            else if (selection == 1)
            {
                main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_Ev_tryagain_climax_talk_02", "main_09_01");
                selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_tryagain_climax_select_04", "msg_Ev_tryagain_climax_select_05"], 0, true, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                if (selection == 0)
                {
                    selection = 2;
                    m_resultParam = 2;
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT_M09");
                }
                else
                {
                    selection = 0;
                }
            }
            else if (selection == 2)
            {
                main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_Ev_tryagain_climax_talk_03", "main_09_01");
                selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_tryagain_climax_select_06", "msg_Ev_tryagain_climax_select_07"], 0, true, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                if (selection == 0)
                {
                    selection = 3;
                    m_resultParam = 3;
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
                }
                else
                {
                    selection = 0;
                }
            }
        }
    }
}
