package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C16517C2A4BDF779B")
@:expose("C16517C2A4BDF779B")
class Ev_sub_106_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub106_001", "npc_sub106_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -494.94, 0.11, -851.67, 93.45);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub106_001", -493.71, 0.1, -850.99, -103.55);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub106_002", -493.6, 0.09, -852.02, -58.29);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "sad");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub106_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-496.15, 2.51, -850.09]), lua.Table.create([-19.96, -52.78, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-496.15, 1.81, -850.09]), lua.Table.create([-19.96, -52.78, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-494.43, 1.48, -851.16]), lua.Table.create([-29.17, -98.16, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_01", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "anger_mc");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_001", "npc_sub106_002", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-496.15, 1.81, -850.09]), lua.Table.create([-19.96, -52.78, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_002", "npc_sub106_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_02", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_03", "sub_106", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_04", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-494.09, 1.03, -851.31]), lua.Table.create([-0.1, -36.3, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub106_002");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub106_002", lua.Table.create([-495.04, 1.5, -852.8]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_09", "sub_106", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_10", "sub_106", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-494.9, 1.16, -850.49]), lua.Table.create([-9.13, -53.08, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_11", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_14", "sub_106", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-496.15, 1.81, -850.09]), lua.Table.create([-19.96, -52.78, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_12", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_001", 32, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_020_talk_13", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0106");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_001", 29, null, 1.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub106_002");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub106_002", -490.18, 0.09, -852.62, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub106_001", -490.29, 0.1, -852.11, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub106_001");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 1);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
