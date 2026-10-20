package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C79FA55B7B98B4C0F")
@:expose("C79FA55B7B98B4C0F")
class Ev_m09_2330 extends BaseMainScenario
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
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        cppbindings.C5090F7B8.f92941AC0("flag_co_ladder", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_co_boss", lua.Table.create([-494.7, 0.0, -353.83]), 90.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_co_leader", lua.Table.create([-496.04, 0.0, -354.62]), 90.0, "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa1", lua.Table.create([-494.8, 0.0, -351.03]), 113.5, "npc_co_member_f_03");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa2", lua.Table.create([-495.73, 0.0, -351.24]), 129.0, "npc_co_member_m_00");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa3", lua.Table.create([-496.43, 0.0, -352.21]), 105.0, "npc_co_member_m_03");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa4", lua.Table.create([-495.47, 0.0, -353.03]), 102.5, "npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa5", lua.Table.create([-496.37, 0.0, -353.36]), 89.0, "npc_co_member_f_02");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa6", lua.Table.create([-497.1, 0.0, -353.99]), 86.5, "npc_co_member_f_00");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa7", lua.Table.create([-495.18, 0.0, -354.96]), 65.5, "npc_co_member_f_01");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("shitappa8", lua.Table.create([-496.63, 0.0, -355.58]), 78.5, "npc_co_member_m_01");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -491.85, 0.01, -353.83, -80.84);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa1", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa2", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa3", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa4", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa5", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa6", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa7", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("shitappa8", 2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_co_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_co_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa2", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa3", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa4", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa5", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa6", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa7", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("shitappa8", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-490.66, 1.5, -354.42]), lua.Table.create([-7.32, 105.88, 0.02]), 35.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_co_boss", -493.53, 0.0, -353.83, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2330_talk_02", "main_09_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-492.68, 1.31, -353.93]), lua.Table.create([8.81, 105.88, 0.0]), 25.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.3, lua.Table.create([-492.72, 1.31, -354.06]), lua.Table.create([8.81, 105.88, 0.0]), 25.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_co_boss", "anger", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_co_boss", 19);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_2330_talk_01", "main_09_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_LADDER_HUMAN_COMPLETED02");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -493.54, 0.01, -353.25, 94.66);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-486.11, 19.4, -353.36]));
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-488.64, 0.29, -349.92]), lua.Table.create([10.51, -22.92, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH21");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([-488.64, 18.21, -349.92]), lua.Table.create([10.51, -22.92, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-493.9, 0.77, -352.71]), lua.Table.create([48.36, -63.72, 0.0]), 60.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_2330_talk_03", "main_09_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
