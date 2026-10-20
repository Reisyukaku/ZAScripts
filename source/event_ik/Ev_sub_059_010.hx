package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C35372B508D0E1D23")
@:expose("C35372B508D0E1D23")
class Ev_sub_059_010 extends BaseSubQuest
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
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_MUTE_T500");
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_059_010_holo", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -762.33, 9.13, -506.42, 50.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub059_001", -761.49, 9.13, -506.94, 24.71);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-759.94, 9.94, -503.75]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub059_001", lua.Table.create([-759.94, 9.94, -503.75]));
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-764.69, 10.82, -504.47]), lua.Table.create([-17.28, -89.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-766.71, 11.24, -505.35]), lua.Table.create([-17.28, -89.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_059_010_talk_02", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub059_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub059_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub059_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-763.18, 10.51, -506.84]), lua.Table.create([-0.59, -102.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_059_010_talk_03", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_059_010_select_01", "msg_Ev_sub_059_010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub059_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_059_010_talk_04", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_059_010_talk_05", "sub_059", "npc_sub059_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub059_001", "rejoice_big");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub059_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_059_010_talk_06", "sub_059");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0059");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_RESET_T500");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub059_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub059_001", -761.49, 9.13, -506.94, 24.71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -765.09, 9.13, -506.47, 66.75);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
