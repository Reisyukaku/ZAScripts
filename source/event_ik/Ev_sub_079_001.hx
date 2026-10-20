package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA6090476439483FF")
@:expose("CA6090476439483FF")
class Ev_sub_079_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub078_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-605.35), 0.01, (-164.44), (-87.21));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", (-606.94), 0.0, (-164.45), 87.92);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", (-608.22), 0.01, (-163.63), 100.83);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", (-608.12), 0.01, (-164.85), 84.99);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-606.26), 1.52, (-164.84)]), lua.Table.create([(-2.51), 121.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_01", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-604.54), 1.37, (-165.24)]), lua.Table.create([(-2.51), 121.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_02", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_03", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-606.26), 1.52, (-164.84)]), lua.Table.create([(-2.51), 121.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_04", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_05", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-604.54), 1.37, (-165.24)]), lua.Table.create([(-2.51), 121.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_06", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_07", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_08", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_001_talk_09", "sub_079", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0079");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-606.21), 0.01, (-165.93), (-87.21)));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", (-605.23), 0.01, (-164.45), (-90.58));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", (-608.32), 0.01, (-163.8), 102.83);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", (-608.3), 0.01, (-165.07), 66.49);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
