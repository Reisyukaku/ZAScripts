package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CC3E5EA1559A47046")
@:expose("CC3E5EA1559A47046")
class LabInteractFailed extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResource:Dynamic = null;
        untyped this.m_eventScriptParam.f73EE8FEC();
        untyped this.m_eventScriptParam.fBF448F72();
        untyped this.m_eventScriptParam.fB581866B();
        textResource = main.event.ik.command.TextResourceManager.GetTextResourcePath(Std.string(m_eventScriptParam.f73EE8FEC()) + "/" + Std.string(m_eventScriptParam.fBF448F72()));
        main.event.ik.command.TextResourceManager.LoadTextResource(textResource);
        Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResource);
        });
        main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, this.m_eventScriptParam.fB581866B(), this.m_eventScriptParam.fBF448F72());
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResource);
    }
}
