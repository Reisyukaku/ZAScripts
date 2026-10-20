package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C72C85B5803A56B22")
@:expose("C72C85B5803A56B22")
class Ev_sub_014_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub014_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub014_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub014_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub014_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub014_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub014_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub014_001", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_001_talk_01", "sub_014", "npc_sub014_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_001_talk_04", "sub_014", "npc_sub014_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0014");
    }
}
