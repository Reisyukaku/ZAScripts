package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C639A7A99A2BDDCB7")
@:expose("C639A7A99A2BDDCB7")
class Ev_m02_0135 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player"));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        var eventMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("1" == eventMode)))
        {
            var animationHandle = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_20", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
            untyped main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_MONSUTAABOORU", 10);
        }
        else
        {
            untyped m_eventScriptParam.f73EE8FEC();
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0135_talk_01", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0135_talk_02", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2005");
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2010");
    }
}
