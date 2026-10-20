package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD2693BD8E6F7172F")
@:expose("CD2693BD8E6F7172F")
class Ev_m10_0110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M6DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-666.03, 0.03, -876.72]), 38.54, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-665.12, 0.03, -877.19]), 38.54, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-664.12, 0.03, -877.39]), 38.54, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([-667.21, -0.0, -881.4]), 38.54, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_pa_boss", lua.Table.create([-665.21, 0.02, -880.39]), 38.81, "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("npc_pokemon_floette", lua.Table.create([-659.94, 1.19, -875.06]), -143.74, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -658.63, 0.03, -871.85, -146.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -659.47, 0.01, -871.1, -137.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -660.3, 0.01, -872.0, -146.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -659.75, 0.01, -872.67, -138.02);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-661.46, 1.77, -877.66]), lua.Table.create([-15.23, -175.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_floette", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -661.47, 0.01, -875.37, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -662.04, 0.01, -874.63, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -660.49, 0.01, -874.63, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_f", -661.02, 0.01, -873.75, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_floette", -660.62, 1.19, -875.91, 0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_CL");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_OFF");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_floette");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_01", "main_10_01", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_02", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_pa_boss", -662.8, 0.03, -877.39, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", -664.11, 0.03, -877.29, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.47, 1.4, -878.25]), lua.Table.create([-8.84, 64.55, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -661.29, 0.01, -874.94, -138.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -661.81, 0.01, -874.2, -146.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -660.14, 0.01, -874.2, -146.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -660.81, 0.01, -873.46, -137.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_floette", -660.24, 1.15, -875.05, -145.06);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-657.62, 1.98, -873.65]), lua.Table.create([-13.63, 70.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.0, 1.85, -876.89]), lua.Table.create([0.0, 69.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_03", "main_10_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-661.98, 1.4, -876.9]), lua.Table.create([0.0, 60.72, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_04", "main_10_01", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -661.32, 0.01, -874.96, -154.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -661.62, 0.01, -874.02, -164.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -660.96, 0.01, -873.53, -148.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -660.14, 0.01, -874.2, -146.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_floette", -660.47, 0.93, -875.18, -145.06);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.62, 1.6, -876.5]), lua.Table.create([-14.51, 153.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_05", "main_10_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.45, 1.35, -876.94]), lua.Table.create([11.19, 39.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-661.96, 0.98, -876.36]), lua.Table.create([11.19, 39.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_pa_boss", 20);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MSBC_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_06", "main_10_01", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.78, 1.88, -876.87]), lua.Table.create([11.19, 39.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-663.01, 1.27, -875.94]), lua.Table.create([11.19, 39.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MUSCLE_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_13", "main_10_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "surprise");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "surprise");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_pa_boss", -662.8, 0.03, -877.39, 3.75);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.31, 1.46, -876.69]), lua.Table.create([-1.91, -31.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_pa_boss", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.13, 1.72, -877.27]), lua.Table.create([9.27, 91.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_pa_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_pa_boss", -662.8, 0.03, -877.39, 38.75);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -661.32, 0.01, -874.96, -137.02);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-660.39, 1.48, -874.81]), lua.Table.create([-5.81, 61.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "surprise_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_14", "main_10_01", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-661.87, 1.31, -876.35]), lua.Table.create([2.33, 64.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([-661.71, 1.31, -876.68]), lua.Table.create([2.33, 64.31, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "normal");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_07", "main_10_01", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -661.47, 0.01, -875.37, -147.62);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -662.04, 0.01, -874.63, -146.49);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -661.02, 0.01, -873.75, -149.65);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -660.49, 0.01, -874.63, -146.31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_floette", -660.59, 1.15, -875.91, -145.06);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-661.33, 1.64, -877.56]), lua.Table.create([-12.16, -177.82, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_08", "main_10_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f");
        var animationHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_0110_talk_09", "main_10_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
