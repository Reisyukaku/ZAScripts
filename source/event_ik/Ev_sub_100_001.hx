package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CC517851BD8F31630")
@:expose("CC517851BD8F31630")
class Ev_sub_100_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub100_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-378.07), (-2.29), (-446.39), 148.14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub100_001", (-377.45), (-2.29), (-447.57), (-31.74));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub100_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub100_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-377.6), (-0.92), (-444.01)]), lua.Table.create([(-1.37), 5.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([(-377.73), (-0.95), (-445.21)]), lua.Table.create([(-1.37), 5.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_100_001_talk_01", "sub_100", "npc_sub100_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_100_001_select_01", "msg_Ev_sub_100_001_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-377.33), (-1.02), (-446.37)]), lua.Table.create([6.65, 5.91, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([(-377.37), (-0.94), (-446.71)]), lua.Table.create([6.65, 5.91, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_sub100_001", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub100_001");
        main.event.ik.command.IkScriptCommand.Wait_Time(6.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub100_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_sub100_001", true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_100_001_talk_03", "sub_100", "npc_sub100_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_100_001_talk_04", "sub_100", "npc_sub100_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_100_001_talk_05", "sub_100", "npc_sub100_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_100_001_talk_06", "sub_100", "npc_sub100_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-377.72), (-0.95), (-445.33)]), lua.Table.create([(-1.06), 5.91, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_100_001_talk_07", "sub_100", "npc_sub100_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0100");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
