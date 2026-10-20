package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCF3EDFAB8A469A95")
@:expose("CCF3EDFAB8A469A95")
class Ev_m02_2100 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        var npcTrainerRankZRankupId:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_trainer_rankZ_rankup"));
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcTrainerRankZRankupId, lua.Table.create([(-874.04), 0.17, (-831.92)]), 48.0, "npc_trainer_rankZ_rankup");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([(-857.33), 0.0, (-809.52)]), (-139.77), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", false);
        var playerPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-861.3), 0.01, (-813.98), 145.32);
        var npcMainRivalMPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", (-860.46), 0.0, (-814.71), (-46.73));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerPlacement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainRivalMPlacement);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-873.12), 1.39, (-831.15)]), lua.Table.create([7.2, 49.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcTrainerRankZRankupId, "sad");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcTrainerRankZRankupId, lua.Table.create([(-873.08), 0.0, (-831.1)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_01", "main_02_01", npcTrainerRankZRankupId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-871.45), 2.6, (-829.71)]), lua.Table.create([(-22.31), 49.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([(-870.66), 3.03, (-829.04)]), lua.Table.create([(-22.31), 49.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcTrainerRankZRankupId, lua.Table.create([(-875.47), 0.15, (-833.16)]));
        var pendingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn(npcTrainerRankZRankupId, (-135.72));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_22", "main_02_01", npcTrainerRankZRankupId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter(npcTrainerRankZRankupId);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-861.34), 1.47, (-812.88)]), lua.Table.create([(-6.67), (-13.59), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_02", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-860.38), 1.45, (-814.53)]), lua.Table.create([(-5.28), 115.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_2100_sys_03", "main_02_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_2100_sys_04", "main_02_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m02_2100_sys_05", "main_02_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-860.29), 0.82, (-810.23)]), lua.Table.create([(-0.15), 7.72, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.5, lua.Table.create([(-858.95), 0.41, (-808.51)]), lua.Table.create([(-0.15), 7.72, 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", (-858.86), 0.0, (-811.08), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_06", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-860.28), 0.85, (-811.05)]), lua.Table.create([(-1.39), (-89.92), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-861.3), 0.01, (-813.98), 64.07);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", (-860.46), 0.0, (-814.71), 6.89);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-859.89), 1.4, (-812.04)]), lua.Table.create([(-1.39), (-132.74), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T2000");
        var dynMainDetectiveAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 14);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_10", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveAnimation);
        var dynMainDetectiveMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", (-859.87), 0.0, (-813.13), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-863.04), 1.37, (-813.82)]), lua.Table.create([(-3.18), (-88.83), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveMovement);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var dynMainDetectiveAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_11", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveAnimation2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-861.35), 1.45, (-813.36)]), lua.Table.create([(-3.86), (-93.52), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.5, lua.Table.create([(-861.14), 1.46, (-813.35)]), lua.Table.create([(-3.86), (-93.52), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 2));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "rejoice_small", "npc_main_detective");
        var dynMainDetectiveAnimation3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_detective", 33, null, 2.8);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_12", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_13", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(dynMainDetectiveAnimation3);
        var dynMainDetectiveAnimation4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-863.04), 1.37, (-813.82)]), lua.Table.create([(-3.18), (-88.83), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveAnimation4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_14", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var npcMainRivalMAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_15", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcMainRivalMAnimation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", (-115.7)));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_16", "main_02_01", "dyn_main_detective");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "rejoice_small", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_17", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_detective"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-860.74), 1.46, (-813.66)]), lua.Table.create([(-2.77), (-120.74), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "sad", "npc_main_detective");
        var dynMainDetectiveAnimation5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_18", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveAnimation5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "smile", "npc_main_detective");
        var dynMainDetectiveAnimation6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_19", "main_02_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveAnimation6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-859.29), 1.94, (-820.02)]), lua.Table.create([(-7.62), 158.61, (-0.0)]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", (-872.2), 0.01, (-795.0), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-859.29), 2.99, (-820.02)]), lua.Table.create([(-7.62), 158.61, (-0.0)]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-860.76), 1.39, (-813.6)]), lua.Table.create([(-1.8), (-10.81), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-861.3), 0.01, (-813.98), 139.32);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", (-50.11)));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var npcMainRivalMAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_20", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(npcMainRivalMAnimation2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-861.28), 1.31, (-810.9)]), lua.Table.create([(-6.29), (-5.84), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2100_talk_21", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_02_02");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_4S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
