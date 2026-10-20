package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3F33346B3CD16027")
@:expose("C3F33346B3CD16027")
class Ev_sub_004_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub004_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub004_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub004_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub004_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_001_talk_01", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub004_001", 3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "smile_bitter");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_001_talk_02", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 174);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub004_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_001_talk_03", "sub_004", "npc_sub004_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_001_talk_04", "sub_004", "npc_sub004_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "smile_bitter");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_001_talk_05", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub004_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 175);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_001_talk_06", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0004");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub004_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub004_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_001_talk_07", "sub_004", "npc_sub004_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
