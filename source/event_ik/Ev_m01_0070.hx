package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B5E0D73C83ABE10")
@:expose("C6B5E0D73C83ABE10")
class Ev_m01_0070 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main01_0001", "npc_main01_0002", "initial_3_pokabu", "initial_3_chicorita", "initial_3_waninoko", "npc_pokemon_yancham"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.EnableDirectionalMain(1.0, -0.8);
        main.event.ik.command.IkScriptCommand.EnableShadowTransform(1.0, -0.8);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_yancham", -676.29, 0.0, -835.34, -119.99);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main01_0001", -675.56, 0.01, -835.54, -117.78);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main01_0002", -675.82, 0.0, -834.33, -126.63);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -680.27, 0.0, -836.66, 33.99);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -679.05, 0.01, -837.22, 63.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_pokabu", -697.11, 0.02, -837.44, 45.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_chicorita", -697.74, 0.02, -836.94, 45.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_waninoko", -698.48, 0.02, -836.39, 45.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var initSelectPokemon:Dynamic = this.Get_InitSelectPokemon(0);
        if (((152 == initSelectPokemon)))
        {
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_chicorita", -677.93, -0.0, -836.22, -122.32);
            waitFObjAction(setPosAngAction, null, null, null, null, null, null, null, null, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("initial_3_chicorita", "Player", "head");
        }
        else
        {
            if (((498 == initSelectPokemon)))
            {
                var waitFObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_pokabu", -677.93, -0.0, -836.22, -122.32);
                waitFObjAction2(setPosAngAction2, null, null, null, null, null, null, null, null, null, null, null, null, null);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("initial_3_pokabu", "Player", "head");
            }
            else
            {
                if (((158 == initSelectPokemon)))
                {
                    var waitFObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                    var setPosAngAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("initial_3_waninoko", -677.93, -0.0, -836.22, -122.32);
                    waitFObjAction3(setPosAngAction3, null, null, null, null, null, null, null, null, null, null, null, null, null);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("initial_3_waninoko", "Player", "head");
                };
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-678.83, 0.35, -835.14]), lua.Table.create([5.99, -102.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.6, lua.Table.create([-678.72, 0.35, -835.68]), lua.Table.create([5.99, -102.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_pokabu", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_waninoko", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_chicorita", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_T01_LOOP");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main01_0001", 32, null, 5.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_01", "main_01_01", "npc_main01_0001");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m01_0070_select_01", "msg_Ev_m01_0070_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_02", "main_01_01", "npc_main01_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_03", "main_01_01", "npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_pokabu", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_waninoko", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("initial_3_chicorita", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-681.32, 1.55, -837.56]), lua.Table.create([-12.76, -113.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 98.99);
        var setTurnAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -58.68);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, this.Get_InitSelectPokemon(0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_04", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main01_0001", 20);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 69.49);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main01_0001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_05", "main_01_01", "npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        if (((152 == initSelectPokemon)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("initial_3_chicorita");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("initial_3_chicorita", 57.18);
        }
        else
        {
            if (((498 == initSelectPokemon)))
            {
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End("initial_3_pokabu");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                main.event.ik.command.IkScriptCommand.FObj_Set_Turn("initial_3_pokabu", 57.18);
            }
            else
            {
                if (((158 == initSelectPokemon)))
                {
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_End("initial_3_waninoko");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn("initial_3_waninoko", 57.18);
                };
            };
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_06", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (((152 == initSelectPokemon)))
        {
            main.event.ik.command.IkScriptCommand.S522136910C73A819("initial_3_chicorita");
        }
        else
        {
            if (((498 == initSelectPokemon)))
            {
                main.event.ik.command.IkScriptCommand.S522136910C73A819("initial_3_pokabu");
            }
            else
            {
                if (((158 == initSelectPokemon)))
                {
                    main.event.ik.command.IkScriptCommand.S522136910C73A819("initial_3_waninoko");
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-676.64, 1.45, -834.63]), lua.Table.create([-2.06, -93.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([-676.65, 1.45, -834.41]), lua.Table.create([-2.06, -93.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -680.27, 0.0, -836.66, 34.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main01_0002", 20);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_07", "main_01_01", "npc_main01_0002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-679.93, 1.37, -835.96]), lua.Table.create([-0.52, 10.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([-680.11, 1.37, -835.92]), lua.Table.create([-0.52, 10.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_10", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-681.32, 1.55, -837.56]), lua.Table.create([-12.76, -113.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 98.99));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_08", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", -683.09, 0.0, -833.92, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main01_0002", -683.34, 0, -829.6, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-681.09, 1.45, -836.76]), lua.Table.create([-12.05, -90.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setTurnAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 73.73);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main01_0001", 33, null, 4.87);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main01_0001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0070_talk_09", "main_01_01", "npc_main01_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction3);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_03");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main01_0001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main01_0001", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
