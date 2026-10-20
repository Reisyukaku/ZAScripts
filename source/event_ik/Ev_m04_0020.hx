package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5040FD27785307A8")
@:expose("C5040FD27785307A8")
class Ev_m04_0020 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_floette", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_hotel_manager", lua.Table.create([-2.59, 0.01, -5.81]), 35.79, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURAETTE", lua.Table.create([6.0, 1.45, 6.44]), -161.52, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([5.63, 0.3, 5.36]), 15.06, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "open", "trigger");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.91, 0.01, -9.86, -1.25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.42, 1.54, -6.48]), lua.Table.create([-8.42, -47.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("HURAETTE", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_CL");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "close", "trigger");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 0.91, 0.01, -5.83, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.08, 0.01, -4.29, 4.64);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.66, 1.66, -2.97]), lua.Table.create([-10.96, -126.56, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -0.01, 0.01, -2.3, 0.5));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 2.84, 0.01, 3.32, 55.93);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.19, 1.76, 5.38]), lua.Table.create([-7.53, -104.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([3.29, 1.78, 4.48]), lua.Table.create([-7.97, -103.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("HURAETTE", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -133.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("HURAETTE", -147.52);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 4.56, 0.31, 4.44, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var rivalExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_01", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalExplanation);
        var floetteReaction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HURAETTE", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_02", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(floetteReaction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.44, 3.2, 5.96]), lua.Table.create([-20.13, -68.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([-0.08, 3.2, 6.89]), lua.Table.create([-20.13, -68.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_rival_m", lua.Table.create([2.72, 1.36, 6.0]));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_rival_m", lua.Table.create([6.88, 1.36, 3.06]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_03", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalExplanation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (0 == main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_0020_select_01", "msg_Ev_m04_0020_select_02"]), 0, false, false))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_04", "main_04_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_05", "main_04_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("dyn_main_rival_m", "ob0004_00_normal_01");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", 5.63, 0.3, 5.36, -133.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 4.56, 0.31, 4.44, 63.02);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.72, 1.65, 5.21]), lua.Table.create([-1.01, -87.56, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var rivalReset = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_06", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalReset);
        main.event.ik.command.IkScriptCommand.PostEvent2DWithEnd("PLAY_SS_ROTOM_ON");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_07", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", 5.58, 0.3, 5.4, -161.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 4.9, 0.31, 4.48, 34.52);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.2, 1.73, 6.21]), lua.Table.create([-6.06, -5.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_08", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_09", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", 5.63, 0.3, 5.36, -126.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HURAETTE", 5.63, 1.5, 6.23, -129.9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.12, 1.33, 5.19]), lua.Table.create([0.72, -87.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", 2.41, -0.0, 7.18, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("HURAETTE");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -45.45);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HURAETTE", 3.67, 2.61, 4.91, 2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_CL");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HURAETTE", -0.8, 2.34, -1.42, -164.35);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 5.02, 0.31, 4.58, -45.45);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.89, 1.74, 5.47]), lua.Table.create([-5.44, 50.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([6.16, 1.74, 5.14]), lua.Table.create([-5.44, 50.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HURAETTE", -2.57, 2.18, -4.92, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_10", "main_04_01", "dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -147.0));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HURAETTE", -2.57, 2.18, -4.92, -144.02);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.98, 2.08, -4.45]), lua.Table.create([2.6, 59.72, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_hotel_manager", lua.Table.create([-1.93, 2.73, -3.05]));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("HURAETTE", 52.48);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_11", "main_04_01", "dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_hotel_manager", "rejoice_big");
        var floetteExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HURAETTE", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0020_talk_12", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(floetteExplanation);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_04_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var playerPlacement = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 6.02, 0.31, 4.16, -43.65);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_ENV_EV_M04_0020_AFTER");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T0");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerPlacement);
    }
}
