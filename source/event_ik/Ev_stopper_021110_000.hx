package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CA285F4A09775A9CC")
@:expose("CA285F4A09775A9CC")
class Ev_stopper_021110_000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_02_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        var isTextReady = function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        };
        this.Await(isTextReady);
        var phase:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE");
        if (((21110 == phase) || (21150 == phase)))
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_0110_talk_16", "main_02_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        };
        if (((21160 == phase) || (21199 == phase)))
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_main_021110_000_talk_08", "main_02_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        };
        if ((((21200 == phase) || (21400 == phase)) || (21500 == phase)))
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_12", "main_02_01", "npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        };
        if (23000 == phase)
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_22", "main_02_01", "npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        };
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
