package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C8DB424FEAF9E2FCB")
@:expose("C8DB424FEAF9E2FCB")
class Ev_sub_066_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub066_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub066_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub066_001");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub066_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub066_001", "head");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub066_001");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub066_001");
        IkScriptCommand.Wait_Camera();
        IkScriptCommand.FObj_Set_Animation("npc_sub066_001", 2);
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.FObj_Set_Animation("npc_sub066_001", 174);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_066_001_talk_01", "sub_066", "npc_sub066_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_066_001_select_01", "msg_Ev_sub_066_001_select_02"], 0, true, false);
        IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Animation("Player", 174);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("Player", 175);
        }
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub066_001", 3);
        IkScriptCommand.FObj_Set_Visibility("Player", false);
        IkScriptCommand.Wait_Camera();
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_066_001_talk_02", "sub_066", "npc_sub066_001");
        IkScriptCommand.FObj_Set_Animation("npc_sub066_001", 174);
        IkScriptCommand.SetFacialTemplate("npc_sub066_001", "rejoice_big_mc");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_066_001_talk_03", "sub_066", "npc_sub066_001");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.PlayQuestOrderUI("sub_0066");
        IkScriptCommand.FObj_Set_Visibility("Player", true);
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub066_001");
        IkScriptCommand.SetFacialTemplate("npc_sub066_001", "normal");
        IkScriptCommand.FObj_Set_Animation("npc_sub066_001", 1);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_066_001_talk_04", "sub_066", "npc_sub066_001");
        IkScriptCommand.HideMessageWindow();
    }
}
