package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCDB462D46BCBEDC2")
@:expose("CCDB462D46BCBEDC2")
class Ev_talk_025500_000 extends BaseMainScenario
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
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_talk_09", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
