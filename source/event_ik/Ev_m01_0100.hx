package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C64127C73C47BEE84")
@:expose("C64127C73C47BEE84")
class Ev_m01_0100 extends BaseMainScenario
{
    public static var S0FDA613D91D9142F:Dynamic;
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.AddTagCommon("Player", "Ob0003_00_bag_player");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_riv", lua.Table.create([-683.98, 0.01, -839.96]), -68, "npc_main_rival_m");
        var get_InitSelectPokemonResult:Dynamic = this.Get_InitSelectPokemon(0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("TIKORIITA", lua.Table.create([-686.18, -0.01, -837.72]), -160.0, 152, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("POKABU", lua.Table.create([-683.21, 0, -839.43]), -84.0, 498, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("WANINOKO", lua.Table.create([-683.45, 0, -838.56]), -95.0, 158, 0, 0);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, this.Get_InitSelectPokemon(1));
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(3, this.Get_InitSelectPokemon(2));
        var starterIndex:Dynamic = null;
        var firstOtherStarter:Dynamic = null;
        var secondOtherStarter:Dynamic = null;
        if ((152 == get_InitSelectPokemonResult))
        {
            starterIndex = (1 : Dynamic);
            firstOtherStarter = ("WANINOKO" : Dynamic);
            secondOtherStarter = ("POKABU" : Dynamic);
        }
        else
        {
            var starterIndexBranch2:Dynamic = null;
            var firstOtherStarterBranch2:Dynamic = null;
            var secondOtherStarterBranch2:Dynamic = null;
            if ((498 == get_InitSelectPokemonResult))
            {
                starterIndexBranch2 = (2 : Dynamic);
                firstOtherStarterBranch2 = ("WANINOKO" : Dynamic);
                secondOtherStarterBranch2 = ("TIKORIITA" : Dynamic);
            }
            else
            {
                var starterIndexBranch1:Dynamic = null;
                var firstOtherStarterBranch1:Dynamic = null;
                var secondOtherStarterBranch1:Dynamic = null;
                if ((158 == get_InitSelectPokemonResult))
                {
                    starterIndexBranch1 = (3 : Dynamic);
                    firstOtherStarterBranch1 = ("POKABU" : Dynamic);
                    secondOtherStarterBranch1 = ("TIKORIITA" : Dynamic);
                }
                else
                {
                    var create_NpcPokemon:Dynamic = main.event.ik.command.IkScriptCommand.Create_NpcPokemon;
                    var sceneVector:Dynamic = lua.Table.create([-683.98, 0.01, -839.96]);
                    create_NpcPokemon("RUKARIO", sceneVector, -68, 448, 0, 0);
                    starterIndexBranch1 = (0 : Dynamic);
                    firstOtherStarterBranch1 = ("" : Dynamic);
                    secondOtherStarterBranch1 = ("" : Dynamic);
                };
                starterIndexBranch2 = starterIndexBranch1;
                firstOtherStarterBranch2 = firstOtherStarterBranch1;
                secondOtherStarterBranch2 = secondOtherStarterBranch1;
            };
            starterIndex = starterIndexBranch2;
            firstOtherStarter = firstOtherStarterBranch2;
            secondOtherStarter = secondOtherStarterBranch2;
        };
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -683.14, 0.01, -838.74, -97.37);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_riv", -686.84, 0, -839.06, 95.63);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("POKABU", -687.26, 0, -840.21, 61.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("WANINOKO", -686.45, 0, -840.81, 47.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("TIKORIITA", -682.87, -0.01, -837.49, -130.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if ((1 == starterIndex))
        {
            untyped event_ik.Ev_m01_0100["S0FDA613D91D9142F"] = "TIKORIITA";
        }
        else
        {
            if ((2 == starterIndex))
            {
                untyped event_ik.Ev_m01_0100["S0FDA613D91D9142F"] = "POKABU";
            }
            else
            {
                if ((3 == starterIndex))
                {
                    untyped event_ik.Ev_m01_0100["S0FDA613D91D9142F"] = "WANINOKO";
                }
                else
                {
                };
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(event_ik.Ev_m01_0100.S0FDA613D91D9142F, -682.87, -0.01, -837.49, -130.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(secondOtherStarter, -687.26, 0, -840.21, 61.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(firstOtherStarter, -686.45, 0, -840.81, 47.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_riv", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_riv", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-703.45, 0.6, -867.6]), lua.Table.create([4.2, 119.07, -0.0]), 34.03, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-704.66, 0.6, -869.78]), lua.Table.create([4.2, 119.07, -0.0]), 34.03, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M01_0100");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-700.49, 5.13, -902.52]), lua.Table.create([-17.05, 143.09, -0.0]), 34.03, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-698.99, 5.13, -901.4]), lua.Table.create([-17.05, 143.09, -0.0]), 34.03, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-682.06, 1.82, -910.88]), lua.Table.create([12.63, 125.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-682.06, 0.21, -910.88]), lua.Table.create([12.63, 125.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-677.96, 3.28, -840.24]), lua.Table.create([-10.4, 103.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-677.96, 1.86, -840.24]), lua.Table.create([-10.4, 103.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T500");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_riv", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_01", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_02", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-685.64, 1.44, -838.97]), lua.Table.create([-6.61, 95.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-685.65, 1.44, -839.08]), lua.Table.create([-6.61, 95.67, -0.0]), 40.82, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_riv", 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_03", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_04", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_riv", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_05", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-680.82, 0.49, -839.41]), lua.Table.create([7.81, 95.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-680.82, 0.49, -839.41]), lua.Table.create([3.93, 91.88, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_riv", lua.Table.create([-687.26, 0, -840.21]));
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-687.26, 0, -840.21]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_06", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_07", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ((1 == starterIndex))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(secondOtherStarter, 17);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0100_talk_09", "main_01_01", "POKABU");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(firstOtherStarter, 17);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0100_talk_10", "main_01_01", "WANINOKO");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            if ((2 == starterIndex))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(secondOtherStarter, 17);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0100_talk_08", "main_01_01", "TIKORIITA");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                this.TimeWait(0.3);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(firstOtherStarter, 17);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0100_talk_10", "main_01_01", "WANINOKO");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if ((3 == starterIndex))
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation(secondOtherStarter, 17);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0100_talk_08", "main_01_01", "TIKORIITA");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    this.TimeWait(0.3);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation(firstOtherStarter, 17);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0100_talk_09", "main_01_01", "POKABU");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                };
            };
        };
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-685.47, 0.73, -839.65]), lua.Table.create([-16.65, -107.18, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_riv");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(secondOtherStarter, -685.44, 0, -839.17, 77.45);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(secondOtherStarter, -683.87, 0, -838.69, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(firstOtherStarter, -685.44, 0, -840.03, 72.9);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(firstOtherStarter, -683.77, 0, -839.51, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.RemoveTagCommon("Player", "Ob0003_00_bag_player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(secondOtherStarter, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(firstOtherStarter, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-677.96, 1.86, -840.24]), lua.Table.create([-10.4, 103.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_riv", "Player", "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_riv", "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_riv", 2);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_11", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_riv", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0100_talk_12", "main_01_01", "dyn_riv");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_01_02");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_riv");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_riv", -45.0);
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T5000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
