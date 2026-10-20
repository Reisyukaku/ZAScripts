package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C747A20DD808CC44C")
@:expose("C747A20DD808CC44C")
class Ev_sub_117_001 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1.2, 0.02, -0.53, -118.78);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", 0.02, 0.0, -1.33, 57.55);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.52, 1.21, -1.05]), lua.Table.create([3.8, 96.62, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub117_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub117_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_001_talk_01", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub117_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub117_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_001_talk_02", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.06, 1.47, -1.23]), lua.Table.create([6.83, 87.55, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub117_001", "smile_bitter");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_001_talk_03", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub117_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub117_001", lua.Table.create([0.73, 0.01, 0.04]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub117_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_001_talk_04", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub117_001", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.52, 1.21, -1.05]), lua.Table.create([3.8, 96.62, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_001_talk_05", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0117");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub117_001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_001_talk_06", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
