package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C76CD2DD015197563")
@:expose("C76CD2DD015197563")
class Ev_stopper_30202_30300_000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_03_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var phase:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE");
        if (30300 == phase)
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0040_talk_30", "main_03_01", "npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        };
        if (30360 == phase)
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0090_talk_15", "main_03_01", "npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        };
        if (30400 == phase)
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0100_talk_04", "main_03_01", "npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        };
        if (((30360 != phase) || (30400 != phase)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0030_talk_13", "main_03_01", "npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
