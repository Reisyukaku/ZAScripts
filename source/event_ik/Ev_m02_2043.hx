package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC6363BAB850DC1BB")
@:expose("CC6363BAB850DC1BB")
class Ev_m02_2043 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
        var playerTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var friendTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_friend_m", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurn);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_m");
        var hasReceivedItem = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m02_2043");
        if (((false == hasReceivedItem)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 32);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2043_talk_01", "main_02_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2043_talk_02", "main_02_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m"));
            var sadAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2043_talk_03", "main_02_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(sadAnimation);
            var explanationAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2043_talk_04", "main_02_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(explanationAnimation);
            main.event.ik.command.IkScriptCommand.OpenTips("tips_2220");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var itemExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2043_talk_07", "main_02_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(itemExplanation);
            var friendReceive = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var playerReceive = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendReceive);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerReceive);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        }
        else
        {
            var goodbyeAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2043_talk_05", "main_02_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(goodbyeAnimation);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        };
    }
}
