package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C4BB9F6F232D2DBF4")
@:expose("C4BB9F6F232D2DBF4")
class Ev_sys_athletic_give_up extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/sub_113");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var promptLabel:Dynamic = "";
        var challengeType:Dynamic = untyped this.m_eventScriptParam.f73EE8FEC();
        if ("0" == challengeType)
        {
            promptLabel = "msg_Ev_sub_113_000_talk_01";
        }
        else if ("1" == challengeType)
        {
            promptLabel = "msg_Ev_sub_113_000_talk_03";
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, promptLabel, "sub_113");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_113_000_select_01", "msg_Ev_sub_113_000_select_02"]), null, true, null, null, null, "sub_113");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_SUB_0113_GIVEUP");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        };
        untyped this.m_resultParam = selection;
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
