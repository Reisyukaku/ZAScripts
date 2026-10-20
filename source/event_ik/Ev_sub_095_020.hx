package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C5DB04A579A197BA8")
@:expose("C5DB04A579A197BA8")
class Ev_sub_095_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub095_001", "npc_pokemon_sub095_1", "npc_pokemon_sub095_2", "npc_pokemon_sub095_3", "npc_pokemon_sub095_4", "npc_pokemon_sub095_5"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_095_Boat", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -160.7, -5.19, -384.91, 48.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub095_001", -161.14, -5.2, -383.73, 96.53);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_1", -156.94, -5.19, -383.63, 77.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_2", -156.83, -5.19, -382.85, 93.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_3", -156.61, -5.19, -384.29, 41.25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_4", -156.73, -5.19, -382.09, 104.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_5", -155.8, -5.19, -384.85, 34.54);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_3", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_4", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_5", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-165.29, -0.83, -381.29]), lua.Table.create([-12.72, -66.69, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-165.29, -3.03, -381.29]), lua.Table.create([-12.72, -66.69, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int)))));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-160.57, -3.58, -382.79]), lua.Table.create([-10.45, 15.29, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub095_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub095_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_095_020_talk_01", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_1", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_2", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_3", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_4", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub095_5", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_095_020_0688_00_EX2");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub095_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub095_001", "npc_pokemon_sub095_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-161.9, -3.13, -381.82]), lua.Table.create([-16.77, -76.6, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-160.25, -3.64, -382.21]), lua.Table.create([-16.77, -76.6, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub095_001", "npc_pokemon_sub095_1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_pokemon_sub095_1");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_095_020_talk_02", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_095_020_talk_03", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-162.98, -3.66, -382.69]), lua.Table.create([-11.1, -71.56, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_1", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_2", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_3", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_4", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub095_5", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub095_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_095_020_talk_05", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_1", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_3", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_2", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_5", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_4", 17);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_095_020_0688_00_INDEX");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_095_020_talk_06", "sub_095", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-160.57, -3.58, -382.79]), lua.Table.create([-10.45, 15.29, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub095_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub095_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub095_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub095_001", "npc_pokemon_sub095_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub095_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_095_020_talk_08", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub095_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_095_020_talk_09", "sub_095", "npc_sub095_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_sub095_001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub095_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub095_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub095_3", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub095_4", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub095_5", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -156.83, -5.19, -384.53, 70.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub095_001", -157.05, -5.2, -383.33, 95.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_1", -154.77, -5.14, -383.02, -17.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_2", -154.05, -5.14, -384.23, -8.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_3", -154.61, -5.11, -384.65, -13.46);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_4", -154.1, -3.53, -384.08, -20.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub095_5", -154.8, -3.59, -384.35, -24.74);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-157.43, -1.58, -380.96]), lua.Table.create([-8.51, -59.92, -0.0]), 50.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-157.43, -4.03, -380.96]), lua.Table.create([-8.51, -59.92, -0.0]), 50.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_3", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_2", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_4", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_5", 20);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-158.35, -3.39, -381.47]), lua.Table.create([-15.6, -54.15, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-158.72, -3.26, -381.2]), lua.Table.create([-15.6, -54.15, 0.0]), 50.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_1", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_3", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_4", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_2", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub095_5", 17);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_095_020_0688_00_GLAD3");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0095");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
