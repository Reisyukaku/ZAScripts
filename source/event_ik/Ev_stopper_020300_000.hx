package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEA973B8CFE1E6C3A")
@:expose("CEA973B8CFE1E6C3A")
class Ev_stopper_020300_000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = null;
        textResourcePath = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_02_01");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var workValue:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE");
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = eventParameters.f73EE8FEC();
        if ("0" == eventMode)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_020500_030_talk_03", "main_02_01", "npc_main_rival_m", false);
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        };
        var eventParameters3:Dynamic = this.m_eventScriptParam;
        var eventMode2:Dynamic = eventParameters3.f73EE8FEC();
        if ("1" == eventMode2)
        {
            if (20500 == workValue)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0060_talk_03", "main_02_01", "npc_main_rival_m", false);
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            }
            else
            {
                if (20700 == workValue)
                {
                    main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
                    main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
                    main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
                    main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
                    main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_main_020500_030_talk_03", "main_02_01", "npc_main_rival_m", false);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
                    main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
                    main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
                    var terminateRotomPhoneAll:Dynamic = untyped main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll;
                    terminateRotomPhoneAll();
                };
            };
        };
        var eventParameters4:Dynamic = this.m_eventScriptParam;
        var eventMode3:Dynamic = eventParameters4.f73EE8FEC();
        if ("2" == eventMode3)
        {
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_main_020500_030_talk_03", "main_02_01", "npc_main_rival_m", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            var terminateRotomPhoneAll2:Dynamic = untyped main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll;
            terminateRotomPhoneAll2();
        };
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
