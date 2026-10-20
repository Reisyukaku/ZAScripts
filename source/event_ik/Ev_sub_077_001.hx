package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD967DBF745C65895")
@:expose("CD967DBF745C65895")
class Ev_sub_077_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub077_001", "npc_sub077_002", "npc_sub077_003", "npc_sub077_004", "npc_sub077_005"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-620.13), 0.26, (-257.02), (-25.85));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_002", (-620.71), 0.26, (-254.3), 161.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_004", (-621.54), 0.26, (-253.83), 143.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_003", (-622.44), 0.26, (-254.08), 135.24);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_005", (-622.22), 0.26, (-255.52), 121.22);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-621.17), 1.59, (-257.6)]), lua.Table.create([(-15.01), 172.82, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-620.32), 1.82, (-258.54)]), lua.Table.create([(-15.01), 172.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_001_talk_01", "sub_077", "npc_sub077_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_077_001_select_01", "msg_Ev_sub_077_001_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_077_001_talk_02", "sub_077", "npc_sub077_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-622.46), 0.91, (-257.26)]), lua.Table.create([1.1, (-162.98), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_003", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_001_talk_03", "sub_077", "npc_sub077_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "npc_sub077_003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "npc_sub077_003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "npc_sub077_003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "npc_sub077_003", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_001_talk_04", "sub_077", "npc_sub077_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "npc_sub077_005", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "npc_sub077_005", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "npc_sub077_005", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "npc_sub077_005", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_003", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_005", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_001_talk_05", "sub_077", "npc_sub077_005");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-620.32), 1.82, (-258.54)]), lua.Table.create([(-15.01), 172.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_077_001_talk_06", "sub_077", "npc_sub077_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-621.56), 1.38, (-256.53)]), lua.Table.create([4.76, (-74.45), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0077");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
