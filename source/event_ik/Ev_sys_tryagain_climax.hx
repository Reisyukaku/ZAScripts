package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE59E40401821ECB0")
@:expose("CE59E40401821ECB0")
class Ev_sys_tryagain_climax extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_01");
        main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_Ev_tryagain_mega_talk_01", "main_09_01");
        var choices = (["msg_Ev_tryagain_mega_select_01", "msg_Ev_tryagain_mega_select_02"]);
        var selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            untyped this.m_resultParam = selection;

            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT_M09");
        };
        if (((1 == selection)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_Ev_tryagain_climax_talk_03", "main_09_01");
            choices = (["msg_Ev_tryagain_climax_select_06", "msg_Ev_tryagain_climax_select_07"]);
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (((0 == selection)))
            {
                untyped this.m_resultParam = 1;

                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
            };
            if (((1 == selection)))
            {
                untyped this.m_resultParam = 0;

                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT_M09");
            };
        };
    }
}
