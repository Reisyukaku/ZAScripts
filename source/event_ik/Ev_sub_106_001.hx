package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C164A6F2A4BD942D6")
@:expose("C164A6F2A4BD942D6")
class Ev_sub_106_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub106_001", "npc_sub106_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -491.97, 0.11, -851.89, 82.45);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub106_001", -490.54, 0.09, -851.02, 142.75);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub106_002", -490.34, 0.1, -851.91, 59.41);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "sad");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub106_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-492.81, 1.89, -850.84]), lua.Table.create([-26.04, -55.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([-492.32, 1.89, -850.12]), lua.Table.create([-26.04, -55.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var turnHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub106_002", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub106_001", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub106_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_01", "sub_106", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_02", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-492.83, 2.03, -850.93]), lua.Table.create([-29.87, -65.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub106_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub106_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_001", 32, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_03", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_002", "npc_sub106_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_05", "sub_106", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub106_002", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub106_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_002", 32, null, 3.75);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_002", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_07", "sub_106", "npc_sub106_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_001", "npc_sub106_002", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_08", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub106_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-491.15, 1.53, -851.24]), lua.Table.create([-34.85, -105.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub106_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub106_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_09", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_10", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-492.83, 2.03, -850.93]), lua.Table.create([-29.87, -65.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_11", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0106");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub106_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_106_001_talk_12", "sub_106", "npc_sub106_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -493.1, 0.11, -851.84, 98.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub106_002", 1);
    }
}
