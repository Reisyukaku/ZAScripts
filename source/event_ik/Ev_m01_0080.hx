package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B90A773C8656A57")
@:expose("C6B90A773C8656A57")
class Ev_m01_0080 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.EnableDirectionalMain(1.0, -0.8);
        main.event.ik.command.IkScriptCommand.EnableShadowTransform(1.0, -0.8);
        main.event.ik.command.IkScriptCommand.LoadTravelBagScene((lua.Table.create([-674.59, 0, -836.22]) : Dynamic));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_main_rival_m", (lua.Table.create([-679.82, 0.0, -836.22]) : Dynamic), -168.49, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_main01_0001", (lua.Table.create([-674.87, 0, -835.66]) : Dynamic), -102.69, "npc_main01_0001");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_main01_0002", (lua.Table.create([-675.73, 0.0, -833.7]) : Dynamic), 155.93, "npc_main01_0002");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_YANTYAMU", (lua.Table.create([-674.38, -0.0, -836.85]) : Dynamic), -75.59, 674, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_TIKORIITA", (lua.Table.create([-682.54, 0.01, -838.34]) : Dynamic), 29.0, 152, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_POKABU", (lua.Table.create([-680.23, 0.01, -838.74]) : Dynamic), -13.0, 498, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_WANINOKO", (lua.Table.create([-683.06, 0.01, -836.1]) : Dynamic), 81.0, 158, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -679.92, 0.01, -837.24, 25.13);
        var get_InitSelectPokemonResult:Dynamic = this.Get_InitSelectPokemon(0);
        if (152 == get_InitSelectPokemonResult)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_TIKORIITA", -682.41, 0.0, -837.93, 82.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_POKABU", -680.88, 0.0, -839.28, 63.26);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_WANINOKO", -680.19, 0.0, -839.36, 55.49);
        }
        else
        {
            if (498 == get_InitSelectPokemonResult)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_POKABU", -682.41, 0.0, -837.93, 82.5);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_TIKORIITA", -680.88, 0.0, -839.28, 63.26);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_WANINOKO", -680.19, 0.0, -839.36, 55.49);
            }
            else
            {
                if (158 == get_InitSelectPokemonResult)
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_WANINOKO", -682.41, 0.0, -837.93, 82.5);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_POKABU", -680.88, 0.0, -839.28, 63.26);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_TIKORIITA", -680.19, 0.0, -839.36, 55.49);
                }
                else
                {
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-678.17, 1.84, -834.98]) : Dynamic), (lua.Table.create([-19.65, -72.62, 0.0]) : Dynamic), 40.0, 0, cameraEase);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main01_0001", 19);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_main01_0001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_01", "main_01_01", "dyn_npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main01_0001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_02", "main_01_01", "dyn_npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        var movementAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_main01_0002", -675.16, 0.0, -834.76, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.3, (lua.Table.create([-678.15, 1.84, -834.11]) : Dynamic), (lua.Table.create([-19.65, -72.62, 0.0]) : Dynamic), 40.0, 0, cameraEase2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_npc_main01_0001", -29.25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_YANTYAMU", -29.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main01_0001", 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_03", "main_01_01", "dyn_npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_npc_main01_0001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main01_0002", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_04", "main_01_01", "dyn_npc_main01_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main01_0001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_05", "main_01_01", "dyn_npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -679.74, 0.01, -837.25, 14.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_main_rival_m", -679.82, 0.0, -836.22, -165.48);
        var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-678.31, 1.53, -835.87]) : Dynamic), (lua.Table.create([-13.47, 56.54, 0.0]) : Dynamic), 40.0, 0, cameraEase3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_npc_main01_0001", -100.006);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_YANTYAMU", -80.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_npc_main_rival_m", 84.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 66.63);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_main01_0001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_main01_0001", -674.14, 0.01, -835.86, -100.75);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_main01_0002", -674.47, 0, -834.96, -108.69);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_06", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-677.85, 1.59, -834.51]) : Dynamic), (lua.Table.create([-13.43, -68.73, 0.0]) : Dynamic), 40.0, 0, cameraEase4);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_07", "main_01_01", "dyn_npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_npc_main01_0001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_main01_0001", -663.42, 0.0, -830.16, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_main01_0002", -662.74, 0, -829.94, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        var movementAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_YANTYAMU", -671.45, 0.0, -835.67, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction2);
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_YANTYAMU", -99.1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_YANTYAMU");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_YANTYAMU", -660.77, -0.01, -828.88, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T5000");
        var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-677.85, 1.59, -834.51]) : Dynamic), (lua.Table.create([-13.43, -68.73, 0.0]) : Dynamic), 40.0, 0, cameraEase5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(3.7);
        var cameraEase6:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-676.62, 1.17, -834.52]) : Dynamic), (lua.Table.create([-20.59, -49.63, -0.0]) : Dynamic), 40.0, 0, cameraEase6);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase7:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, (lua.Table.create([-676.17, 0.95, -834.9]) : Dynamic), (lua.Table.create([-20.59, -49.63, -0.0]) : Dynamic), 40.0, 0, cameraEase7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_main_rival_m", -679.82, 0.0, -836.22, -157.49);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -679.92, 0.01, -837.24, 19.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m01_0080_sys_01", "main_01_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_01_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.TerminateTravelBagScene();
        var cameraEase8:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-681.01, 1.31, -837.68]) : Dynamic), (lua.Table.create([-2.33, -127.09, 0.0]) : Dynamic), 40.0, 0, cameraEase8);
        main.event.ik.command.IkScriptCommand.EnableDirectionalMain(0.6, -0.8);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_main01_0001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_main01_0002", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_YANTYAMU", ((false : Dynamic)));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        if (152 == get_InitSelectPokemonResult)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_TIKORIITA", 73.87);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_POKABU", 23.26);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_WANINOKO", ((-12.01 : Dynamic)));
        }
        else
        {
            if (498 == get_InitSelectPokemonResult)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_POKABU", 73.87);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_TIKORIITA", 23.26);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_WANINOKO", ((-12.01 : Dynamic)));
            }
            else
            {
                if (158 == get_InitSelectPokemonResult)
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_WANINOKO", 73.87);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_TIKORIITA", -12.01);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_POKABU", ((23.26 : Dynamic)));
                }
                else
                {
                };
            };
        };
        var cameraEase9:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-680.42, 1.56, -836.82]) : Dynamic), (lua.Table.create([-16.54, -127.71, -0.0]) : Dynamic), 40.0, 0, cameraEase9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 30);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_14", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m01_0080_select_05", "msg_Ev_m01_0080_select_06"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_17", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var cameraEase10:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-680.75, 1.61, -837.51]) : Dynamic), (lua.Table.create([-17.03, -127.09, -0.0]) : Dynamic), 40.0, 0, cameraEase10);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
        var get_InitSelectPokemonResult2:Dynamic = this.Get_InitSelectPokemon(0);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, get_InitSelectPokemonResult2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_08", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_09", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_10", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m01_0080_select_01", "msg_Ev_m01_0080_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_21", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_23", "main_01_01", "dyn_npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var cameraEase11:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, (lua.Table.create([-680.35, 1.36, -836.81]) : Dynamic), (lua.Table.create([1.01, -132.51, -0.0]) : Dynamic), 40.0, 0, cameraEase11);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 74);
        var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 201);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.SetMonsterBallTag)(3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)("Player", (lua.Table.create([-679.92, 1.14, -836.85]) : Dynamic));
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_RESET_T500");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
        var cameraEase12:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-680.25, 1.03, -836.47]) : Dynamic), (lua.Table.create([20.32, -22.91, 0.0]) : Dynamic), 40.0, 0, cameraEase12);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var camera_Move_Angle:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
        var cameraEase13:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        camera_Move_Angle(2.0, (lua.Table.create([-680.23, 1.05, -836.52]) : Dynamic), (lua.Table.create([20.32, -22.91, 0.0]) : Dynamic), ((40.0 : Dynamic)), ((0 : Dynamic)), cameraEase13, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), null);
        if (152 == get_InitSelectPokemonResult)
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_TIKORIITA", -681.32, 0.0, -837.73, 77.37);
            var fObj_LookAt_Obj:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
            fObj_LookAt_Obj("dyn_TIKORIITA", "Player", "head");
        }
        else
        {
            if (498 == get_InitSelectPokemonResult)
            {
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_POKABU", -681.32, 0.0, -837.73, 77.37);
                var fObj_LookAt_Obj2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
                fObj_LookAt_Obj2("dyn_POKABU", "Player", "head");
            }
            else
            {
                if (158 == get_InitSelectPokemonResult)
                {
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_WANINOKO", -681.32, 0.0, -837.73, 77.37);
                    var fObj_LookAt_Obj3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
                    fObj_LookAt_Obj3("dyn_WANINOKO", "Player", "head");
                }
                else
                {
                };
            };
        };
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_npc_main_rival_m", ((false : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction6);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(1.5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var wait_Time:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
        wait_Time(((0.8 : Dynamic)));
        if (152 == get_InitSelectPokemonResult)
        {
            (untyped main.event.ik.command.IkScriptCommand.ReSetMonsterBallTag)(3);
            var cameraEase14:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-679.37, 1.54, -837.14]) : Dynamic), (lua.Table.create([-32.74, 73.42, -0.01]) : Dynamic), 40.0, 0, cameraEase14);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_POKABU", false);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_WANINOKO", false);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", false);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var cameraEase15:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.5, (lua.Table.create([-680.09, 1.05, -837.36]) : Dynamic), (lua.Table.create([-32.74, 73.42, -0.01]) : Dynamic), 40.0, 0, cameraEase15, null, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)("Player");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("Player");
            var animationAction7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_TIKORIITA", 20);
            var getWorkValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_INITIAL_SELECT_POKEMON");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            var showMessage:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessage;
            var dialogueChoices:Dynamic = [null, null, null];
            untyped dialogueChoices[0] = "msg_Ev_m01_0080_talk_11";
            untyped dialogueChoices[1] = "msg_Ev_m01_0080_talk_12";
            untyped dialogueChoices[2] = (("msg_Ev_m01_0080_talk_13" : Dynamic));
            showMessage(((0 : Dynamic)), dialogueChoices[getWorkValueResult], "main_01_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
        }
        else
        {
            if (498 == get_InitSelectPokemonResult)
            {
                (untyped main.event.ik.command.IkScriptCommand.ReSetMonsterBallTag)(3);
                var cameraEase16:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-678.84, 1.09, -838.2]) : Dynamic), (lua.Table.create([-20.8, 102.3, 0.0]) : Dynamic), 40.0, 0, cameraEase16);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_TIKORIITA", false);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_WANINOKO", false);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", false);
                (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                var cameraEase17:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.5, (lua.Table.create([-680.09, 0.6, -837.93]) : Dynamic), (lua.Table.create([-20.8, 102.3, 0.0]) : Dynamic), 40.0, 0, cameraEase17, null, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)("Player");
                (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("Player");
                var animationAction8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_POKABU", 17);
                var getWorkValueResult2:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_INITIAL_SELECT_POKEMON");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                var showMessage2:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessage;
                var dialogueChoices2:Dynamic = [null, null, null];
                untyped dialogueChoices2[0] = "msg_Ev_m01_0080_talk_11";
                untyped dialogueChoices2[1] = "msg_Ev_m01_0080_talk_12";
                untyped dialogueChoices2[2] = (("msg_Ev_m01_0080_talk_13" : Dynamic));
                showMessage2(((0 : Dynamic)), dialogueChoices2[getWorkValueResult2], "main_01_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction8);
            }
            else
            {
                if (158 == get_InitSelectPokemonResult)
                {
                    (untyped main.event.ik.command.IkScriptCommand.ReSetMonsterBallTag)(3);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_WANINOKO", -681.32, 0.0, -837.73, 71.37);
                    var cameraEase18:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-678.56, 1.1, -838.2]) : Dynamic), (lua.Table.create([-17.38, 100.12, 0.0]) : Dynamic), 40.0, 0, cameraEase18);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_TIKORIITA", false);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_POKABU", false);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", false);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                    var cameraEase19:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.5, (lua.Table.create([-679.83, 0.69, -837.97]) : Dynamic), (lua.Table.create([-17.38, 100.12, 0.0]) : Dynamic), 40.0, 0, cameraEase19, null, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)("Player");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("Player");
                    var animationAction9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_WANINOKO", 17);
                    var getWorkValueResult3:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_INITIAL_SELECT_POKEMON");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                    var showMessage3:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessage;
                    var dialogueChoices3:Dynamic = [null, null, null];
                    untyped dialogueChoices3[0] = "msg_Ev_m01_0080_talk_11";
                    untyped dialogueChoices3[1] = "msg_Ev_m01_0080_talk_12";
                    untyped dialogueChoices3[2] = (("msg_Ev_m01_0080_talk_13" : Dynamic));
                    showMessage3(((0 : Dynamic)), dialogueChoices3[getWorkValueResult3], "main_01_01");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction9);
                }
                else
                {
                };
            };
        };
        if (152 == get_InitSelectPokemonResult)
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_POKABU", true);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_WANINOKO", true);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_TIKORIITA", -683.01, 0.0, -837.79, 80.5);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_POKABU", -682.27, 0.0, -839.31, 28.76);
            var fObj_Set_Pos_Ang:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang("dyn_WANINOKO", -680.91, 0.0, -838.97, 8.99);
        }
        else
        {
            if (498 == get_InitSelectPokemonResult)
            {
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_TIKORIITA", true);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_WANINOKO", true);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_POKABU", -683.01, 0.0, -837.79, 80.5);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_TIKORIITA", -682.27, 0.0, -839.31, 28.76);
                var fObj_Set_Pos_Ang2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
                fObj_Set_Pos_Ang2("dyn_WANINOKO", -680.91, 0.0, -838.97, 8.99);
            }
            else
            {
                if (158 == get_InitSelectPokemonResult)
                {
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_TIKORIITA", true);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_POKABU", true);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_WANINOKO", -683.02, 0.0, -838.01, 75.21);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_TIKORIITA", -681.74, 0.0, -839.12, 32.26);
                    var fObj_Set_Pos_Ang3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
                    fObj_Set_Pos_Ang3("dyn_POKABU", -680.55, 0.0, -839.2, -0.51);
                }
                else
                {
                };
            };
        };
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", true);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("dyn_npc_main_rival_m", true);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_npc_main_rival_m", -679.82, 0.0, -836.22, -116.49);
        (untyped main.event.ik.command.IkScriptCommand.EnableDirectionalMain)(1.0, -0.8);
        var cameraEase20:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-677.57, 1.69, -839.04]) : Dynamic), (lua.Table.create([-16.71, 115.55, 0.0]) : Dynamic), 40.0, 0, cameraEase20);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)("dyn_npc_main_rival_m", (lua.Table.create([-683.01, 0.0, -837.79]) : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", -93.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)("Player", (lua.Table.create([-683.01, 0.0, -837.79]) : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_npc_main_rival_m", 2);
        var get_InitSelectPokemonResult3:Dynamic = this.Get_InitSelectPokemon(0);
        (untyped main.event.ik.command.IkScriptCommand.WordSet_Name_Mons)(2, get_InitSelectPokemonResult3);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m01_0080_talk_20", "main_01_01", "dyn_npc_main_rival_m");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/goo_touch/goo_touch_01", (("POKE_TOUCH" : Dynamic)));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("POKE_TOUCH" : Dynamic)));
        }));
        untyped main.event.ik.command.IkScriptCommand.SetEffectWorldPosition((("POKE_TOUCH" : Dynamic)), -680.7, 0.49, -837.35);
        var fObj_Set_Pos_Ang4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
        fObj_Set_Pos_Ang4((("Player" : Dynamic)), ((-680.05 : Dynamic)), ((0.01 : Dynamic)), -837.17, -93.0);
        if (152 == get_InitSelectPokemonResult)
        {
            var cameraEase21:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-681.22, 1.23, -838.68]) : Dynamic), (lua.Table.create([-31.91, 123.17, -0.0]) : Dynamic), 40.0, 0, cameraEase21);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_main_rival_m", false);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase22:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([-679.44, 1.23, -837.92]) : Dynamic), (lua.Table.create([-31.91, 123.17, -0.0]) : Dynamic), 40.0, 0, cameraEase22);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 1);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_main_rival_m");
            var movementAction3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_TIKORIITA", -680.96, 0.0, -837.5, 0.5);
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
            var animationAction10:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 200);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction10);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction3);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 248);
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_TIKORIITA");
            var animationAction11:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_TIKORIITA", 117);
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
            untyped main.event.ik.command.IkScriptCommand.PlayEffect((("POKE_TOUCH" : Dynamic)));
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction11);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_TIKORIITA", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_TIKORIITA", 20);
        }
        else
        {
            if (498 == get_InitSelectPokemonResult)
            {
                var cameraEase23:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-681.22, 1.23, -838.68]) : Dynamic), (lua.Table.create([-31.91, 123.17, -0.0]) : Dynamic), 40.0, 0, cameraEase23);
                untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_main_rival_m", false);
                untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                var cameraEase24:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.2, (lua.Table.create([-679.47, 1.26, -838.12]) : Dynamic), (lua.Table.create([-33.67, 131.63, -0.0]) : Dynamic), 40.0, 0, cameraEase24);
                untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 1);
                untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
                untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_main_rival_m");
                var movementAction4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_POKABU", -680.84, 0.0, -837.46, 0.5);
                untyped main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
                var animationAction12:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 200);
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction12);
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction4);
                untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 248);
                untyped main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_POKABU");
                var animationAction13:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_POKABU", 117);
                untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
                untyped main.event.ik.command.IkScriptCommand.PlayEffect((("POKE_TOUCH" : Dynamic)));
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction13);
                untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_POKABU", "Player", "head");
                untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
                untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_POKABU", 20);
            }
            else
            {
                if (158 == get_InitSelectPokemonResult)
                {
                    var cameraEase25:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-681.4, 1.27, -838.69]) : Dynamic), (lua.Table.create([-31.91, 123.17, -0.0]) : Dynamic), 40.0, 0, cameraEase25);
                    untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_main_rival_m", false);
                    untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                    var cameraEase26:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([-679.54, 1.2, -837.82]) : Dynamic), (lua.Table.create([-33.11, 118.21, 0.0]) : Dynamic), 40.0, 0, cameraEase26);
                    untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 1);
                    untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
                    untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_main_rival_m");
                    var movementAction5:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_WANINOKO", -681.05, 0.0, -837.51, 0.5);
                    untyped main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
                    var animationAction14:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 200);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction14);
                    untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction5);
                    untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                    untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 248);
                    untyped main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_WANINOKO");
                    var animationAction15:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_WANINOKO", 117);
                    untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
                    untyped main.event.ik.command.IkScriptCommand.PlayEffect((("POKE_TOUCH" : Dynamic)));
                    untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction15);
                    untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_WANINOKO", "Player", "head");
                    untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
                    untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_WANINOKO", 20);
                }
                else
                {
                };
            };
        };
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
        untyped main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m01_0080_talk_22", "main_01_01");
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_main_rival_m", true);
        var cameraEase27:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-681.24, 1.55, -837.54]) : Dynamic), (lua.Table.create([-10.5, -119.68, -0.0]) : Dynamic), 40.0, 0, cameraEase27);
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_npc_main_rival_m", -162.94);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 31.6);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        var animationAction16:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 20);
        untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_15", "main_01_01", "dyn_npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_main_rival_m", "normal", "npc_main_rival_m");
        var cameraEase28:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-680.34, 1.32, -836.89]) : Dynamic), (lua.Table.create([1.87, -140.85, -0.0]) : Dynamic), 40.0, 0, cameraEase28);
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction16);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 18);
        untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0080_talk_16", "main_01_01", "dyn_npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M01_0080");
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_main_rival_m", -679.82, 0.0, -836.22, -149.44);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -680.05, 0.01, -837.17, 34.59);
        var cameraEase29:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([-682.58, 0.51, -837.14]) : Dynamic), (lua.Table.create([-0.0, -97.08, 0.0]) : Dynamic), 40.0, 0, cameraEase29);
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase30:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(4.5, (lua.Table.create([-682.58, 3.36, -837.14]) : Dynamic), (lua.Table.create([-0.0, -97.08, 0.0]) : Dynamic), 40.0, 0, cameraEase30);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main_rival_m", 2);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.DisableDirectionalMain();
        untyped main.event.ik.command.IkScriptCommand.DisableShadowTransform();
    }
}
