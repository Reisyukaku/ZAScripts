package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3533C6508D0B3BAD")
@:expose("C3533C6508D0B3BAD")
class Ev_sub_059_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub059_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -762.33, 9.13, -506.42, 50.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub059_001", -761.49, 9.13, -506.94, 24.71);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-759.94, 9.94, -503.75]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub059_001", lua.Table.create([-759.94, 9.94, -503.75]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-765.7, 11.95, -506.41]), lua.Table.create([-10.68, -102.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-765.7, 10.75, -506.41]), lua.Table.create([-10.68, -102.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_059_001_talk_01", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_059_001_talk_02", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_059_001_talk_03", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub059_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-763.18, 10.51, -506.84]), lua.Table.create([-0.59, -102.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub059_001", "Player"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub059_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_059_001_talk_05", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub059_001", "confident");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_059_001_talk_04", "sub_059");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0059");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub058_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub059_001", 1);
    }
}
