package event_ik;

import main.event.ik.base.BaseSubQuest;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C97EDCC6FE35B0241")
@:expose("C97EDCC6FE35B0241")
class Ev_sub_006_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub006_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub006_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub006_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub006_001", "Player", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub006_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub006_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_001_talk_01", "sub_006", "npc_sub006_001");
        var firstAnimation = IkScriptCommand.FObj_Set_Animation("npc_sub006_001", 28);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_001_talk_02", "sub_006", "npc_sub006_001");
        IkScriptCommand.Wait_FObj_Action(firstAnimation);
        IkScriptCommand.FObj_Reset_AnimationAll("npc_sub006_001");
        var secondAnimation = IkScriptCommand.FObj_Set_Animation("npc_sub006_001", 100);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_001_talk_03", "sub_006", "npc_sub006_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_001_talk_04", "sub_006", "npc_sub006_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_001_talk_05", "sub_006", "npc_sub006_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_001_talk_06", "sub_006", "npc_sub006_001");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.PlayQuestOrderUI("sub_0006");
        IkScriptCommand.Wait_FObj_Action(secondAnimation);
    }
}
