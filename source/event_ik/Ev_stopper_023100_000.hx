package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C59F3A2FC53DA2D23")
@:expose("C59F3A2FC53DA2D23")
class Ev_stopper_023100_000 extends BaseMainScenario
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
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_025000_000_talk_02", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
