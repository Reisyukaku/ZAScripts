package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C8F1F7AED6DA94825")
@:expose("C8F1F7AED6DA94825")
class Ev_stopper_021153_000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_02_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_10", "main_02_01", "npc_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
