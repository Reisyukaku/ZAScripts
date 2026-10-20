package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD9F10B415F9C8C9D")
@:expose("CD9F10B415F9C8C9D")
class Ev_m08_4320 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-342.52), 0.01, (-373.69), 140.87);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_m", (-340.77), 0.14, (-381.47), 35.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_f", (-332.22), 0.0, (-381.38), (-62.94));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-338.69), 0.01, (-376.53), 1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_nu_boss_f", (-336.59), 0.0, (-378.15), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-340.1), 1.93, (-372.04)]), lua.Table.create([(-5.33), (-22.66), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([(-340.1), 1.41, (-372.04)]), lua.Table.create([(-5.33), (-22.66), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-337.22), 1.61, (-377.15)]), lua.Table.create([(-9.04), (-21.57), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_01", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-339.19), 1.53, (-374.14)]), lua.Table.create([(-4.43), (-22.07), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-338.94), 1.47, (-374.75)]), lua.Table.create([(-4.43), (-22.07), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        var bossMovement:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_nu_boss_m", (-337.49), 0.0, (-378.09), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_m", "head");
        var femaleBossReset:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_f", "npc_main_nu_boss_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_02", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossMovement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(femaleBossReset);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-337.89), 1.35, (-376.87)]), lua.Table.create([2.51, 115.99, (-0.09)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_m", "rejoice_small", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "rejoice_big_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_m", (-337.49), 0.0, (-378.09), (-10.24));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_m", 328);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_f", 330);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_m", 177);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_f", 340);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_03", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-338.08), 1.54, (-376.56)]), lua.Table.create([(-3.6), (-30.02), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-337.89), 1.52, (-376.9)]), lua.Table.create([(-3.6), (-30.02), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_06", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "rejoice_big", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_07", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.2);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PostEventGlobal("PLAY_SS_COMMON_RECOVERY");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        cppbindings.C56DE81E7.fFB3A9D11();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_m", "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "normal", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_m", (-339.12), 0.0, (-379.38), (-135.31));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_m", 176);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_f", 176);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-339.11), 1.48, (-375.41)]), lua.Table.create([(-3.43), (-30.01), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "rejoice_big", "npc_main_nu_boss_f");
        var femaleBossExplanation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_08", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(femaleBossExplanation);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "normal", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_f", "npc_main_nu_boss_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-338.23), 1.6, (-378.14)]), lua.Table.create([(-6.63), 36.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-338.02), 1.64, (-377.86)]), lua.Table.create([(-6.63), 36.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_04", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-335.97), 1.46, (-375.11)]), lua.Table.create([(-6.27), 36.66, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.75, lua.Table.create([(-335.59), 1.53, (-374.6)]), lua.Table.create([(-6.27), 36.66, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var maleBossExplanation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4320_talk_05", "main_08_01", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(maleBossExplanation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_nu_boss_m", (-342.11), 0.2, (-383.3), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_nu_boss_f", (-341.0), 0.1, (-382.2), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M08_4320_FCAFE_DOOR");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_nu_boss_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_nu_boss_f", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-338.78), 0.01, (-376.7), (-152.26)));
    }
}
