package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C8CF3ED1E8EDE648F")
@:expose("C8CF3ED1E8EDE648F")
class Ev_stopper_010600_030 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_01_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_main_010610_000_talk_06", "main_01_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
