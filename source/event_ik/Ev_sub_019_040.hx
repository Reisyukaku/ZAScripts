package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1551545ECF05E0B2")
@:expose("C1551545ECF05E0B2")
class Ev_sub_019_040 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub019_001", "npc_sub019_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -210.58, 0.15, -426.42, 163.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub019_001", -210.2, 0.14, -428.21, 3.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub019_002", -209.28, 0.14, -427.81, -58.66);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub019_001", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub019_002", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_001", "sad");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_002", "sad");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-209.75, 2.28, -424.17]), lua.Table.create([-17.25, 6.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-209.83, 2.03, -424.96]), lua.Table.create([-17.25, 6.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_001", 22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 22);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_01", "sub_019", "npc_sub019_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_001", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_002", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-210.6, 2.04, -427.32]), lua.Table.create([-18.13, -25.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_02", "sub_019", "npc_sub019_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-209.6, 1.91, -426.95]), lua.Table.create([-19.32, -20.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_03", "sub_019", "npc_sub019_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-210.16, 2.08, -426.6]), lua.Table.create([-19.99, -19.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_001", "npc_sub019_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "npc_sub019_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_001", 175);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_04", "sub_019", "npc_sub019_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-209.83, 2.03, -424.96]), lua.Table.create([-17.25, 6.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub019_002", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_05", "sub_019", "npc_sub019_002");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_019_040_select_01", "msg_Ev_sub_019_040_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-210.28, 1.65, -426.54]), lua.Table.create([-5.14, -19.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub019_001", 33, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_001", "smile");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_06", "sub_019", "npc_sub019_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 22);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_002", "smile");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_07", "sub_019", "npc_sub019_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-209.83, 2.03, -424.96]), lua.Table.create([-17.25, 6.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_08", "sub_019", "npc_sub019_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_002", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_040_talk_09", "sub_019", "npc_sub019_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0019");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
