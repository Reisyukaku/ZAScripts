package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC1C6E8B65877771F")
@:expose("CC1C6E8B65877771F")
class Ev_m03_0110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_rival_m", "dyn_main_detective", "npc_pokemon_moko_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.WordSet_Name_Player(0);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([0.23, 0.05, (-3.4)]), 0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([(-0.03), 0.0, 3.88]), 178.29, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.38), 0.03, (-3.41), 0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-0.04), 0, 1.1, (-0.43));
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_detective", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_moko_2", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_detective", 71));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", (-0.03), (-0.0), 3.88, 178.29);
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_moko_2", (-0.01), 0, 2.1, 1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.86), 1.38, (-2.89)]), lua.Table.create([(-6.94), (-149.05), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.86), 1.38, (-2.89)]), lua.Table.create([(-6.94), (-149.05), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-2.63), 1.38, (-2.43)]), lua.Table.create([(-6.94), (-149.05), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-2.63), 1.48, 2.33]), lua.Table.create([(-9.18), (-26.26), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_01", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-0.12), 0.0, 2.23, 1.74);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.96), 0.52, 1.83]), lua.Table.create([(-19.06), (-149.8), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.3, lua.Table.create([(-0.96), 1.32, 1.83]), lua.Table.create([(-19.06), (-149.8), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_02", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.49), 1.39, 2.99]), lua.Table.create([(-7.35), (-13.26), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", 0.39, 0, 1.26, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.55);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-0.54), 0.01, 1.26, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_03", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_04", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.52), 1.07, 2.54]), lua.Table.create([(-7.98), (-151.98), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-0.44), 1.06, 2.68]), lua.Table.create([(-7.98), (-151.98), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_05", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_06", "main_03_01", "dyn_main_detective", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "surprise");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-1.12), (-0.0), 1.46, 26.06);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.49, 1.23, 2.84]), lua.Table.create([1.8, 3.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([0.44, 1.35, 2.06]), lua.Table.create([1.8, 3.94, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_0110_talk_07", "main_03_01", "dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious");
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.3), 1.03, 2.57]), lua.Table.create([(-4.98), (-144.44), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-0.48), 1.03, 2.7]), lua.Table.create([(-4.98), (-144.44), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_0120_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_08", "main_03_01", "dyn_main_detective", true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-2.97), 1.85, 4.19]), lua.Table.create([(-18.6), (-62.9), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_09", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_detective", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_detective", 1));
        var setAnimationImmediatelyAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_detective", 28);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.57), 0.01, 0.92, 24.99);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", 0.16, 0.01, 0.88, (-20.14));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationImmediatelyAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-1.66), 0.5, 2.6, 163.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", (-0.2), 0.0, 1.87, 176.42);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.32, 2.15, 1.05]), lua.Table.create([(-13.03), 152.77, 0.03]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([0.32, 1.56, 1.05]), lua.Table.create([(-13.03), 152.77, 0.03]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_02");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_10", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.3), 1.53, (-0.41)]), lua.Table.create([(-11.96), (-176.56), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_11", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", 176.42);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_12", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.57), 1.45, 1.19]), lua.Table.create([(-2.46), (-152.54), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_13", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_14", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.46), 0.71, 1.66]), lua.Table.create([(-2.49), 167.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_15", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_16", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.57), 0.01, 0.92, 25.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_main_rival_m", 0.16, 0.01, 0.88, (-20.14));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-0.2), 0.01, 1.87, 176.42);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.1), 1.61, 2.59]), lua.Table.create([(-13.54), (-33.82), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_17", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_18", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_19", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_20", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_21", "main_03_01", "dyn_main_detective");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_0110_select_01", "msg_Ev_m03_0110_select_02"]), 0, false, false));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", (-0.2), 0.0, 1.87, (-162.08));
        var cameraVector:Dynamic = lua.Table.create([(-0.76), 1.45, 1.27]);
        var cameraVector2:Dynamic = lua.Table.create([(-2.94), (-137.41), 0.0]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var waitCamera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
        waitCamera();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_23", "main_03_01", "dyn_main_detective");
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_22", "main_03_01", "dyn_main_detective");
            var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow2();
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_24", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_25", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_26", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.57), 0.01, 0.92, 25.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_main_rival_m", 0.16, 0.01, 0.88, (-20.14));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-0.2), 0.01, 1.87, 176.42);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.1), 1.61, 2.59]), lua.Table.create([(-13.54), (-33.82), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_27", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_0023");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_29", "main_03_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", 0.16, 0.01, 0.88, (-20.14));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.57), 0.01, 0.92, 24.99);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.98), 1.55, 1.96]), lua.Table.create([(-13.54), (-33.82), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", (-78.97));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 97.48);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0110_talk_30", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
