package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CDD818924B1F1F63B")
@:expose("CDD818924B1F1F63B")
class Ev_m06_2999 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_co_leader", "head");
        var playerTurn = IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_co_leader");
        IkScriptCommand.FObj_LookAt_Obj("npc_main_co_leader", "Player", "head");
        var leaderTurn = IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_co_leader", "Player");
        IkScriptCommand.Wait_FObj_Action(playerTurn);
        IkScriptCommand.Wait_FObj_Action(leaderTurn);
        IkScriptCommand.S522136910C73A819("npc_main_co_leader");
        var leaderAnimation = IkScriptCommand.FObj_Set_Animation("npc_main_co_leader", 18);
        IkScriptCommand.Wait_Time(0.3);
        IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2999_talk_01", "main_06_01", "npc_main_co_leader");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.Wait_FObj_Action(leaderAnimation);
        IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        IkScriptCommand.Wait_Fade();
    }
}
