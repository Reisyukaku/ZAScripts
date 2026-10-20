package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C639A7699A2BDD5EB")
@:expose("C639A7699A2BDD5EB")
class Ev_m02_0131 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player"));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        var entryMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if (("1" == entryMode))
        {
            var giftAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_20", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(giftAnimation);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 74);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
            main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_MONSUTAABOORU", 10);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            untyped m_eventScriptParam.f73EE8FEC();
        };
        while (true)
        {
            if ((1 == this.m_resultParam))
            {
                break;
            };
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_01", "main_02_01", "npc_main_rival_m");
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m02_0131_select_01", "msg_Ev_m02_0131_select_02", "msg_Ev_m02_0131_select_03"], 0, true, false);
            if ((0 == selection))
            {
                var reactionAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_02", "main_02_01", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(reactionAnimation);
                main.event.ik.command.IkScriptCommand.OpenTips("tips_2000");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else if ((1 == selection))
            {
                var reactionAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_03", "main_02_01", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(reactionAnimation);
                main.event.ik.command.IkScriptCommand.OpenTips("tips_2020");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else if ((2 == selection))
            {
                untyped this.m_resultParam = 1;
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
                var reactionAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0131_talk_04", "main_02_01", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(reactionAnimation);
            };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
