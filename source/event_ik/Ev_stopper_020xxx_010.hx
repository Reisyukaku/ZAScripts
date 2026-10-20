package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C2D6BA2EE658DFFFA")
@:expose("C2D6BA2EE658DFFFA")
class Ev_stopper_020xxx_010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_02_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var phase:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        if (23600 == phase)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_2070_talk_05", "main_02_01");
        }
        else if (24000 == phase)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_2080_talk_07", "main_02_01");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_main_025400_020_talk_09", "main_02_01");
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
