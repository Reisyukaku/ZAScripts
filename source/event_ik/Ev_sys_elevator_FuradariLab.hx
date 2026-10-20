package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEC913629901A8018")
@:expose("CEC913629901A8018")
class Ev_sys_elevator_FuradariLab extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/elevator");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var firstDestinationLabel:Dynamic = "msg_select_labo_02";
        var secondDestinationLabel:Dynamic = "msg_select_labo_03";
        if ("0" == (untyped this.m_eventScriptParam.f73EE8FEC()))
        {
            firstDestinationLabel = "msg_select_labo_02";
            secondDestinationLabel = "msg_select_labo_03";
        };
        if ("1" == (untyped this.m_eventScriptParam.f73EE8FEC()))
        {
            firstDestinationLabel = "msg_select_labo_01";
            secondDestinationLabel = "msg_select_labo_03";
        };
        if ("2" == (untyped this.m_eventScriptParam.f73EE8FEC()))
        {
            firstDestinationLabel = "msg_select_labo_01";
            secondDestinationLabel = "msg_select_labo_02";
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_elevator_01", "elevator");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu([firstDestinationLabel, secondDestinationLabel, "msg_select_cancel"], 0, true, false, null, null, "elevator");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ("0" == (untyped this.m_eventScriptParam.f73EE8FEC()))
        {
            if (0 == selection)
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped this.m_resultParam = 0;
            }
            else if (1 == selection)
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped this.m_resultParam = 1;
            }
        }
        if ("1" == (untyped this.m_eventScriptParam.f73EE8FEC()))
        {
            if (0 == selection)
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped this.m_resultParam = 2;
            }
            else if (1 == selection)
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped this.m_resultParam = 1;
            }
        }
        if ("2" == (untyped this.m_eventScriptParam.f73EE8FEC()))
        {
            if (0 == selection)
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped this.m_resultParam = 2;
            }
            else if (1 == selection)
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped this.m_resultParam = 0;
            }
        }
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
