package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C63A10199A2C32DCA")
@:expose("C63A10199A2C32DCA")
class Ev_m02_0110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_t1veil01_pclady", "npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ACTIONEFFORT_MUTE_T0");
        cppbindings.C56DE81E7.f366EE9BB("t1_pokecen_veil1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_t1veil01_pclady", -757.38, 0.65, -876.1, -144.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -758.21, 0.66, -877.33, 54.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.3, 2.01, -877.36]), lua.Table.create([0.0, -144.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1veil01_pclady", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_t1veil01_pclady", "Player", "head");
        var initSelectPokemon:Dynamic = this.Get_InitSelectPokemon(0);
        if (((152 == initSelectPokemon)))
        {
            var createNpcPokemon:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
            var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
            untyped emptyTableResult[1] = -760.57;
            untyped emptyTableResult[2] = 0.64;
            untyped emptyTableResult[3] = -878.29;
            createNpcPokemon("dyn_TIKORIITA", emptyTableResult, 129.71, 152, 0, 0);
        }
        else
        {
            if (((498 == initSelectPokemon)))
            {
                var createNpcPokemon2:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
                var emptyTableResult2:Dynamic = lua.abi.Host.emptyTable();
                untyped emptyTableResult2[1] = -760.57;
                untyped emptyTableResult2[2] = 0.64;
                untyped emptyTableResult2[3] = -878.29;
                createNpcPokemon2("dyn_POKABU", emptyTableResult2, 129.71, 498, 0, 0);
            }
            else
            {
                if (((158 == initSelectPokemon)))
                {
                    var createNpcPokemon3:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
                    var emptyTableResult3:Dynamic = lua.abi.Host.emptyTable();
                    untyped emptyTableResult3[1] = -760.57;
                    untyped emptyTableResult3[2] = 0.64;
                    untyped emptyTableResult3[3] = -878.29;
                    createNpcPokemon3("dyn_WANINOKO", emptyTableResult3, 129.71, 158, 0, 0);
                };
            };
        };
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_t1veil01_pclady", 32, null, 3.84);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_01", "main_02_01", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_02", "main_02_01", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_04", "main_02_01", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-759.6, 2.13, -877.52]), lua.Table.create([-7.92, -110.66, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -758.04, 0.65, -879.12, -6.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_05", "main_02_01", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        if (((0 == main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_0110_select_01", "msg_Ev_m02_0110_select_02"]), 0, true, false))))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_06", "main_02_01", "npc_t1veil01_pclady");
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_07", "main_02_01", "npc_t1veil01_pclady");
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_t1veil01_pclady", 174));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.22, 1.95, -876.65]), lua.Table.create([7.79, -108.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-758.28, 1.95, -876.49]), lua.Table.create([7.79, -108.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_t1veil01_pclady");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TYPING");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_t1veil01_pclady", 200));
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_t1veil01_pclady", 208));
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        if (((152 == initSelectPokemon)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_TIKORIITA", false);
        }
        else
        {
            if (((498 == initSelectPokemon)))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_POKABU", false);
            }
            else
            {
                if (((158 == initSelectPokemon)))
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_WANINOKO", false);
                };
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -758.04, 0.65, -879.12, -6.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-757.91, 1.99, -876.24]), lua.Table.create([0.42, 8.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_t1veil01_pclady", "Player", "head");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneInstallSequence("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_INSTALL_APP");
        main.event.ik.command.IkScriptCommand.PlayInstallMotionRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m02_0110_sys_08", "main_02_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-759.6, 2.13, -877.52]), lua.Table.create([-7.92, -110.66, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.PutAwayInstallRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAwayInstall("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1veil01_pclady", "head");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1veil01_pclady", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -758.34, 0.66, -877.24, 42.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -758.12, 0.65, -879.01, -6.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-762.96, 2.79, -879.96]), lua.Table.create([-14.63, -110.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "normal");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 174);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Player(1);
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(0, "msg_Ev_m02_0110_talk_12", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -179.68);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -95.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", -41.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -758.21, 0.66, -877.33, -95.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.84, 2.16, -877.58]), lua.Table.create([-9.5, -116.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 75);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M02_0110_POKE_APPERANCE");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Fade_Out("White");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-760.2, 0.91, -879.81]), lua.Table.create([0.51, 165.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (((152 == initSelectPokemon)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_TIKORIITA", true);
            main.event.ik.command.IkScriptCommand.Fade_In("White");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_TIKORIITA", 20);
            waitFObjAction(setAnimationAction2, null, null, null, null, null, null, null, null);
        }
        else
        {
            if (((498 == initSelectPokemon)))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_POKABU", true);
                main.event.ik.command.IkScriptCommand.Fade_In("White");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                var waitFObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_POKABU", 20);
                waitFObjAction2(setAnimationAction3, null, null, null, null, null, null, null, null);
            }
            else
            {
                if (((158 == initSelectPokemon)))
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_WANINOKO", true);
                    main.event.ik.command.IkScriptCommand.Fade_In("White");
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    var waitFObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                    var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_WANINOKO", 20);
                    waitFObjAction3(setAnimationAction4, null, null, null, null, null, null, null, null);
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_SCAN_POKEMON");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_0110_talk_13", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, this.Get_InitSelectPokemon(0));
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_0110_talk_14", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowFirstPokeDex();
        this.TimeWait(6.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        if (((152 == initSelectPokemon)))
        {
            main.event.ik.command.IkScriptCommand.OpenPokedex(1, 152);
        }
        else
        {
            if (((498 == initSelectPokemon)))
            {
                main.event.ik.command.IkScriptCommand.OpenPokedex(1, 498);
            }
            else
            {
                if (((158 == initSelectPokemon)))
                {
                    main.event.ik.command.IkScriptCommand.OpenPokedex(1, 158);
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -758.36, 0.64, -878.43, -7.01);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-759.6, 2.13, -877.52]), lua.Table.create([-7.92, -110.66, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1veil01_pclady", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 54.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_15", "main_02_01", "npc_t1veil01_pclady");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_10", "main_02_01", "npc_t1veil01_pclady");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_t1veil01_pclady", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -762.99, 0.13, -884.25, -146.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -763.38, 0.1, -885.1, 15.49);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-766.98, 2.54, -885.33]), lua.Table.create([-14.37, -99.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-766.98, 1.87, -885.33]), lua.Table.create([-14.37, -99.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0110_talk_11", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", -752.76, 0.1, -891.9, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 136.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ACTIONEFFORT_RESET_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
