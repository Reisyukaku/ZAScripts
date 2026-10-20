package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C45F5AB51924BAEFE")
@:expose("C45F5AB51924BAEFE")
class Ev_stopper_71100_000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_07_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_1000_talk_99", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
