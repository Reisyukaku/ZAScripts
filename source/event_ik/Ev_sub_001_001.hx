package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C109F045ECF683D98")
@:expose("C109F045ECF683D98")
class Ev_sub_001_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -539.58, 0.15, -64.0, -178.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub03_0003", -539.66, 0.14, -65.26, (-0.0));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub03_0003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub03_0003", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-538.51, 1.49, -63.2]), lua.Table.create([-2.85, 40.42, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_01", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_02", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_03", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_04", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.24, 1.63, -64.44]), lua.Table.create([-0.65, 28.98, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_05", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_06", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.02, 1.7, -66.01]), lua.Table.create([-8.71, 152.38, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_07", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_08", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_09", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-538.51, 1.49, -63.2]), lua.Table.create([-2.85, 40.42, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_10", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_11", "sub_001", "npc_sub03_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0001");
    }
}
