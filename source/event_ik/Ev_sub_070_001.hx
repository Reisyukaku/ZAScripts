package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE8F8C04D8C4ABE04")
@:expose("CE8F8C04D8C4ABE04")
class Ev_sub_070_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub070_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub070_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub070_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub070_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub070_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub070_001", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub070_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub070_001");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub070_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_070_001_talk_01", "sub_070", "npc_sub070_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_070_001_select_01", "msg_Ev_sub_070_001_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub070_001", 3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub070_001", "surprise2");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub070_001", 175);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub070_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_070_001_talk_02", "sub_070", "npc_sub070_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0070");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub070_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub070_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub070_001", 1);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub070_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_070_001_talk_03", "sub_070", "npc_sub070_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
