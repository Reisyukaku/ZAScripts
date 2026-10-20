package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C642D6C73C4929B0C")
@:expose("C642D6C73C4929B0C")
class Ev_m01_0180 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_OFF");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_HURAETTE", lua.Table.create([-0.43, 1.0, -1.48]), -152.0, 670, 5, 0);
        var get_InitSelectPokemonResult:Dynamic = this.Get_InitSelectPokemon(0);
        if ((152 == get_InitSelectPokemonResult))
        {
            var create_NpcPokemon:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
            var sceneVector:Dynamic = lua.abi.Host.emptyTable();
            untyped sceneVector[1] = 0.12;
            untyped sceneVector[2] = 0.01;
            untyped sceneVector[3] = -6.08;
            create_NpcPokemon("dyn_TIKORIITA", sceneVector, -104.0, 152, 0, 0);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_TIKORIITA", "npc_main_hotel_manager", "head");
        }
        else
        {
            if ((498 == get_InitSelectPokemonResult))
            {
                var create_NpcPokemon2:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
                var sceneVector2:Dynamic = lua.abi.Host.emptyTable();
                untyped sceneVector2[1] = 0.12;
                untyped sceneVector2[2] = 0.01;
                untyped sceneVector2[3] = -6.08;
                create_NpcPokemon2("dyn_POKABU", sceneVector2, -104.0, 498, 0, 0);
                main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_POKABU", "npc_main_hotel_manager", "head");
            }
            else
            {
                if ((158 == get_InitSelectPokemonResult))
                {
                    var create_NpcPokemon3:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
                    var sceneVector3:Dynamic = lua.abi.Host.emptyTable();
                    untyped sceneVector3[1] = 0.12;
                    untyped sceneVector3[2] = 0.01;
                    untyped sceneVector3[3] = -6.08;
                    create_NpcPokemon3("dyn_WANINOKO", sceneVector3, -104.0, 158, 0, 0);
                    main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_WANINOKO", "npc_main_hotel_manager", "head");
                }
                else
                {
                };
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_hotel_manager", 28);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.41, 0.01, -5.32, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -0.21, 0.04, -7.24, -96.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_hotel_manager", -2.88, 0.04, -7.27, 47.109);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_HURAETTE", 0.39, 1.0, -6.59, -29.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_hotel_manager", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.63, 1.4, -5.25]), lua.Table.create([0.92, 73.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -129.64);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_01", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-1.77, 1.98, -6.48]), lua.Table.create([15.68, 55.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_hotel_manager"));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_hotel_manager", lua.Table.create([0.94, -1.0, -5.61]));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-2.16, 1.78, -6.86]), lua.Table.create([-11.19, -117.09, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-1.4, 1.61, -6.47]), lua.Table.create([-11.19, -117.09, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.64, 0.9, -5.37]), lua.Table.create([-9.19, -116.13, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_ZIGARUDE_CELL", lua.Table.create([2.64, 0.55, -4.25]), -16.45, "npc_zigarude_cell");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_ZIGARUDE_CELL", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZIGARUDE_CELL", 2.64, 0.52, -4.25, -16.45);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_ZIGARUDE_CELL", 2.64, 0.52, -4.09, 1.0, 0.4, 1, 12);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_ZIGARUDE_CELL", 68);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_ZIGARUDE_CELL", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_ZIGARUDE_CELL", 68);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.25);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_ZIGARUDE_CELL", 69));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "dyn_ZIGARUDE_CELL", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_ZIGARUDE_CELL", 2.64, 0.01, -0.48, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([2.97, 0.4, -1.31]), lua.Table.create([-3.32, 26.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([2.97, 0.23, -1.31]), lua.Table.create([-3.32, 26.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_HURAETTE", "dyn_ZIGARUDE_CELL", "head");
        var fObj_Set_TurnResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_HURAETTE", 28.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_hotel_manager", lua.Table.create([2.86, -1.0, -1.57]));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.5, 1.15, -5.92]), lua.Table.create([2.06, 20.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_HURAETTE", "Player", "head");
        var fObj_Set_TurnResult3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_HURAETTE", 1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_02", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult3);
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter("dyn_ZIGARUDE_CELL");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.11, 1.39, -3.46]), lua.Table.create([-5.64, 32.78, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000");
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(1, this.Get_InitSelectPokemon(0));
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_M1_WaitressLOSE");
        if (lua.abi.Host.truthy(getFlagValueResult))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "lose", "npc_main_rival_m");
            var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_19", "main_01_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction);
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "confident", "npc_main_rival_m");
            var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_03", "main_01_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction2);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_hotel_manager", "head");
        var fObj_Set_Turn_To_ObjResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, this.Get_InitSelectPokemon(0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_04", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-1.49, 1.79, -5.83]), lua.Table.create([9.4, 33.42, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_HURAETTE", "npc_main_hotel_manager", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_HURAETTE", 0.39, 1.0, -6.59, -86.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        if ((152 == get_InitSelectPokemonResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_TIKORIITA", 1.18, 0.01, -5.31, -112.0);
        }
        else
        {
            if ((498 == get_InitSelectPokemonResult))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_POKABU", 1.18, 0.01, -5.31, -112.0);
            }
            else
            {
                if ((158 == get_InitSelectPokemonResult))
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_WANINOKO", 1.18, 0.01, -5.31, -112.0);
                }
                else
                {
                };
            };
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "rejoice_big_mc", "npc_main_hotel_manager");
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "rejoice_big", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_05", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-1.75, 1.43, -7.93]), lua.Table.create([-7.01, -130.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        var fObj_Set_Turn_To_ObjResult3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult3);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_06", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-3.68, 2.74, -9.25]), lua.Table.create([-23.49, -140.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "confident", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_hotel_manager", "head");
        var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_hotel_manager", 32, null, 2.68);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_07", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var fObj_Set_Turn_To_ObjResult4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_hotel_manager", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult4);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 23);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_08", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.63, 1.4, -5.25]), lua.Table.create([0.92, 73.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_09", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        if ((152 == get_InitSelectPokemonResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_TIKORIITA", 0.12, 0.01, -6.08, -104.0);
        }
        else
        {
            if ((498 == get_InitSelectPokemonResult))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_POKABU", 0.12, 0.01, -6.08, -104.0);
            }
            else
            {
                if ((158 == get_InitSelectPokemonResult))
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_WANINOKO", 0.12, 0.01, -6.08, -104.0);
                }
                else
                {
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_hotel_manager"));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "rejoice_small", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-1.49, 1.83, -6.39]), lua.Table.create([14.57, 70.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_10", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.63, 1.4, -5.25]), lua.Table.create([0.92, 73.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_HURAETTE", 0.61, 1.0, -7.0, -86.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.0, lua.Table.create([0.63, 1.4, -5.25]), lua.Table.create([2.98, 73.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_hotel_manager");
        var animationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_17", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([2.72, 1.0, -4.41]), lua.Table.create([-2.31, 58.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "normal", "npc_main_hotel_manager");
        if ((152 == get_InitSelectPokemonResult))
        {
            var fObj_Set_Turn_To_ObjResult5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_TIKORIITA", "npc_main_hotel_manager");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "dyn_TIKORIITA", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_TIKORIITA", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "dyn_TIKORIITA", "head");
        }
        else
        {
            if ((498 == get_InitSelectPokemonResult))
            {
                var fObj_Set_Turn_To_ObjResult6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_POKABU", "npc_main_hotel_manager");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "dyn_POKABU", "head");
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult6);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_POKABU", "head");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "dyn_POKABU", "head");
            }
            else
            {
                if ((158 == get_InitSelectPokemonResult))
                {
                    var fObj_Set_Turn_To_ObjResult7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_WANINOKO", "npc_main_hotel_manager");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "dyn_WANINOKO", "head");
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult7);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_WANINOKO", "head");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "dyn_WANINOKO", "head");
                }
                else
                {
                };
            };
        };
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, this.Get_InitSelectPokemon(0));
        var animationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_hotel_manager", 33, null, 2.68);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_11", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.63, 1.4, -5.25]), lua.Table.create([2.98, 73.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_HURAETTE", 0.34, 1.0, -7.0, -86.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_hotel_manager", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_hotel_manager", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_hotel_manager", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var animationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 86);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_12", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_18", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction9);
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-1.49, 1.83, -6.39]), lua.Table.create([21.03, 70.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "serious", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var animationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_16", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction10);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.63, 1.4, -5.25]), lua.Table.create([2.98, 73.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "rejoice_small", "npc_main_hotel_manager");
        var animationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.0, lua.Table.create([0.63, 1.4, -5.25]), lua.Table.create([0.92, 73.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction11);
        var animationAction12:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_13", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction12);
        var animationAction13:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_hotel_manager", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "rejoice_big_mc", "npc_main_hotel_manager");
        var animationAction14:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction13);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction14);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.08, 1.56, -4.41]), lua.Table.create([-5.86, 41.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        var fObj_Set_Turn_To_ObjResult8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_HURAETTE", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_HURAETTE", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_14", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult8);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationAction15:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0180_talk_15", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction15);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_ON");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.41, 0.01, -5.51, 180.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
    }
}
