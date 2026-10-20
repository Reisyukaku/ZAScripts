package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB09CA13ABDF51C68")
@:expose("CB09CA13ABDF51C68")
class Ev_sub_016_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub016_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub016_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub016_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub016_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub016_001", 32, null, 3.72);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_01", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_02", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub016_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_016_001_talk_03", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_04", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub016_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_05", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub016_001", 29, null, 0.68);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_06", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub016_001", 33, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_07", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub016_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_08", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub016_001", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_09", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_10", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub016_001", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_001_talk_11", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0016");
    }
}
