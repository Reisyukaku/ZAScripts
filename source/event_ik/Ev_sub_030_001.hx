package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CDD79E75C6A9832E0")
@:expose("CDD79E75C6A9832E0")
class Ev_sub_030_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub030_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("npc_sub030_001", "Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("Player", "npc_sub030_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_sub030_001", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_sub030_001", "Player", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Base)("Player", "npc_sub030_001", 2.4, 35.0, true, 2, 0.9, lua.Table.create([0, 1.3, 0]));
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("npc_sub030_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub030_001", "rejoice_small_mc");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)("npc_sub030_001", 32, null, 3.85);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_030_001_talk_01", "sub_030", "npc_sub030_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub030_001", "normal");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_030_001_talk_02", "sub_030", "npc_sub030_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_030_001_talk_04", "sub_030", "npc_sub030_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub030_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_030_001_talk_05", "sub_030", "npc_sub030_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub030_001", 74);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 74);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(2, "msg_Ev_sub_030_001_sys_01", "sub_030");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped cppbindings.C56DE81E7.fD89D2D1D)(20000);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(1.0);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_030_001_talk_06", "sub_030", "npc_sub030_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.PlayQuestOrderUI)("sub_0030");
    }
}
