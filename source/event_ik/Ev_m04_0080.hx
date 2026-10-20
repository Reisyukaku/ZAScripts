package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C502C792778417E52")
@:expose("C502C792778417E52")
class Ev_m04_0080 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_secretary", lua.Table.create([-256.67, 0.08, -284.74]), -144.0, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-247.83, 0.09, -291.66]), -61.67, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -258.14, 0.09, -286.78, 34.48));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_secretary", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_secretary", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-262.31, 2.39, -286.64]), lua.Table.create([-8.63, -98.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-262.31, 1.62, -286.64]), lua.Table.create([-8.63, -98.18, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-257.74, 1.8, -285.2]), lua.Table.create([-5.02, -106.61, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 31);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "rejoice_big", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_01", "main_04_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_02", "main_04_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_secretary"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-258.11, 1.52, -285.43]), lua.Table.create([-3.59, -3.08, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "normal", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_0080_sys_03", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(1, "msg_Ev_m04_0080_sys_04", "main_04_01", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-259.46, 4.37, -282.07]), lua.Table.create([-36.46, -18.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-258.52, 4.37, -281.75]), lua.Table.create([-36.46, -18.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -257.34, 0.09, -287.24, 2.0);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_secretary", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_11", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-258.28, 1.49, -285.21]), lua.Table.create([-3.8, -14.04, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_05", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "confident", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_secretary", "head");
        var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_rival_m", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_secretary", "head");
        var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_12", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-257.98, 1.82, -282.23]), lua.Table.create([-8.91, -13.58, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_06", "main_04_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_0080_BATTLE");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "normal", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -264.22, 0.09, -280.79, 135.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -261.28, 0.09, -289.66, 25.97);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_secretary", -253.39, 0.08, -281.97, -144.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_rival_m", 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_secretary", 491);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var workValue:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_INITIAL_SELECT_POKEMON");
        if (((0 == workValue)))
        {
            var createNpcPokemon:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
            var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
            untyped emptyTableResult[1] = -258.35;
            untyped emptyTableResult[2] = 0.09;
            untyped emptyTableResult[3] = -287.06;
            createNpcPokemon("RivalPokemon", emptyTableResult, 37.06, 159, 0, 0);
        }
        else
        {
            if (((1 == workValue)))
            {
                var createNpcPokemon2:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
                var emptyTableResult2:Dynamic = lua.abi.Host.emptyTable();
                untyped emptyTableResult2[1] = -258.35;
                untyped emptyTableResult2[2] = 0.09;
                untyped emptyTableResult2[3] = -287.06;
                createNpcPokemon2("RivalPokemon", emptyTableResult2, 37.06, 153, 0, 0);
            }
            else
            {
                if (((2 == workValue)))
                {
                    var createNpcPokemon3:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
                    var emptyTableResult3:Dynamic = lua.abi.Host.emptyTable();
                    untyped emptyTableResult3[1] = -258.35;
                    untyped emptyTableResult3[2] = 0.09;
                    untyped emptyTableResult3[3] = -287.06;
                    createNpcPokemon3("RivalPokemon", emptyTableResult3, 37.06, 499, 0, 0);
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-265.13, 3.84, -275.72]), lua.Table.create([-20.31, -29.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-264.1, 3.84, -275.14]), lua.Table.create([-20.31, -29.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 1);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-258.23, 0.45, -283.25]), lua.Table.create([0.96, 18.55, 3.8]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.8, lua.Table.create([-257.77, 0.45, -283.39]), lua.Table.create([0.96, 18.55, 3.8]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("RivalPokemon", 20));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-268.3, 1.32, -293.05]), lua.Table.create([-1.43, -122.55, 0.0]), 10.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.5, lua.Table.create([-268.17, 1.32, -293.32]), lua.Table.create([-1.43, -122.55, 0.0]), 10.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 31);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "rejoice_big", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T500");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter("RivalPokemon");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_secretary");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "rejoice_big_mc", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -258.44, 0.09, -286.25, 69.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -257.6, 0.09, -286.87, 14.97);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_secretary", -256.67, 0.08, -284.74, -144.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-260.21, 1.95, -283.68]), lua.Table.create([-4.36, -54.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-260.21, 1.23, -283.68]), lua.Table.create([-4.36, -54.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-257.66, 1.66, -286.1]), lua.Table.create([1.03, -143.82, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "rejoice_big", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_07", "main_04_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-256.75, 1.83, -282.75]), lua.Table.create([-9.45, 10.08, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "rejoice_big_mc", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -42.48);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        var setTurnAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 142.98);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-258.09, 1.52, -284.04]), lua.Table.create([-4.36, -0.76, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 30);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        var resetAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-260.4, 1.46, -286.65]), lua.Table.create([-4.36, -101.82, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_secretary", "head");
        var setTurnAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 18.48);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_secretary", "head");
        var setTurnAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 0.52);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_13", "main_04_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction4);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
        var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "rejoice_small", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-257.66, 1.66, -286.1]), lua.Table.create([1.03, -143.82, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_09", "main_04_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
        var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-263.82, 2.58, -287.2]), lua.Table.create([-13.56, -102.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_secretary", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0080_talk_08", "main_04_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction10);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_secretary", -261.81, 0.08, -281.0, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
