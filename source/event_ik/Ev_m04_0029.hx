package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5040F6277852FBC3")
@:expose("C5040F6277852FBC3")
class Ev_m04_0029 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_040100_000_talk_01", "main_04_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_040100_000_talk_02", "main_04_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_040100_000_talk_03", "main_04_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var eventMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("1" == eventMode)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 19);

            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0029_talk_03", "main_04_01", "npc_main_rival_m");
        }
        else
        {
            eventMode = untyped m_eventScriptParam.f73EE8FEC();
            if ((("2" == eventMode)))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 19);

                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0029_talk_01", "main_04_01", "npc_main_rival_m");
            };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
