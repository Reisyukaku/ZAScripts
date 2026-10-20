package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1729832EE09D21A2")
@:expose("C1729832EE09D21A2")
class Ev_sub_065_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub065_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub065_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub065_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub065_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub065_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_001_talk_01", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub065_001", 3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_065_001_talk_02", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_001_talk_03", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_001_talk_04", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_001_talk_05", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "battle");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_001_talk_06", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0065");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub065_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_001_talk_07", "sub_065", "npc_sub065_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
