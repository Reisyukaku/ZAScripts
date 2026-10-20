package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C03910933A3C81D2E")
@:expose("C03910933A3C81D2E")
class Ev_sub_010_001 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub010_001", "npc_sub010_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -731.41, 5.23, -625.72, 76.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub010_001", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub010_002", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_001", "npc_sub010_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_002", "npc_sub010_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub010_002");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.73, 7.59, -625.83]), lua.Table.create([-0.59, -108.91, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(14, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-731.73, 6.6, -625.83]), lua.Table.create([-0.59, -108.91, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(14, Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.28, 6.9, -624.23]), lua.Table.create([-8.02, -69.07, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(31, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-731.34, 6.9, -624.53]), lua.Table.create([-8.02, -69.07, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(31, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_001_talk_01", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_001_talk_02", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH08");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-730.16, 6.6, -626.6]), lua.Table.create([3.2, -154.58, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(31, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-730.47, 6.6, -626.55]), lua.Table.create([3.2, -154.58, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(31, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_001_talk_03", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_001_talk_04", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_001_talk_05", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub010_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub010_002", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub010_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub010_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.87, 6.74, -624.9]), lua.Table.create([-3.84, -81.15, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-732.82, 6.54, -625.12]), lua.Table.create([-3.84, -81.15, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_001_talk_06", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_001_talk_07", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub010_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_001_talk_08", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0010");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub010_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub010_002");
    }
}
