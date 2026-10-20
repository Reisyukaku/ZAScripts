package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3506B42068CEA215")
@:expose("C3506B42068CEA215")
class Ev_sub_028_001 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub028_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub028_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub028_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base("Player", "npc_sub028_001", 2.9, 35.0, true, 2, 0.9, lua.Table.create([0, 2.0, 0]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub028_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub028_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_001_talk_01", "sub_028", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_001_talk_02", "sub_028", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_001_talk_03", "sub_028", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_001_talk_04", "sub_028", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub028_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("Player", lua.Table.create([-374.44, 1.35, -102.29]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("npc_sub028_001", lua.Table.create([-374.44, 1.35, -102.29]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-371.27, 0.35, -112.97]), lua.Table.create([42.94, 176.6, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-372.72, 0.35, -113.06]), lua.Table.create([42.94, 176.6, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_001_talk_05", "sub_028", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_001_talk_07", "sub_028", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub028_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub028_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub028_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base("Player", "npc_sub028_001", 2.9, 35.0, true, 2, 0.9, lua.Table.create([0, 2.0, 0]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub028_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_001_talk_08", "sub_028", "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0028");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
