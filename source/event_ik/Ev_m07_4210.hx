package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C781FE41A71DE3C42")
@:expose("C781FE41A71DE3C42")
class Ev_m07_4210 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-297.85, 26.92, -340.34]), 105.47, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_holo_pa_boss", lua.Table.create([-298.42, 26.92, -341.63]), 132.47, "npc_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -297.81, 26.93, -341.5, 82.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara01", ("holo_disapp" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("holo_disapp" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -298.42, 27.92, -341.63);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, 132.47, 0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_holo_pa_boss", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-297.81, 26.93, -341.5, 82.5);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_TIRUTARISUNAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-296.55, 28.55, -342.01]), lua.Table.create([-10.01, 113.78, 0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([-296.62, 28.55, -342.17]), lua.Table.create([-10.01, 113.78, 0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_holo_pa_boss", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "rejoice_small", "npc_main_pa_boss");
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_04", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_16", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-296.63, 28.35, -342.52]), lua.Table.create([-4.49, 123.64, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_DISAPPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -298.42, 27.92, -341.63);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, 132.47, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_holo_pa_boss");
        var fObj_Set_Pos_AngResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_holo_pa_boss", -299.95, 26.92, -340.98, 106.55);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -101.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var fObj_Set_TurnResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", -149.53);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Pos_AngResult);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -299.95, 27.92, -340.98);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, 106.55, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_holo_pa_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.45);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_holo_pa_boss", 32, null, 5.01);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_05", "main_07_01", "dyn_main_holo_pa_boss");
        var menuSelection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4210_select_01", "msg_Ev_m07_4210_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        var wait_FObj_Action:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        wait_FObj_Action(fObj_Set_TurnResult2);
        if (0 == menuSelection)
        {
            var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "normal", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
            var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_06", "main_07_01", "dyn_main_holo_pa_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        }
        else
        {
            var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "normal", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
            var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 21);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_07", "main_07_01", "dyn_main_holo_pa_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-296.1, 28.3, -343.38]), lua.Table.create([-5.28, 134.2, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 23);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_14", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
        var animationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_08", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-297.76, 27.82, -341.64]), lua.Table.create([7.26, 107.22, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -297.85, 26.92, -340.34, -89.36);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "anger_mc", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 29);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "rejoice_small", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4210_talk_09", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_DISAPPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -299.95, 27.92, -340.98);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, 106.55, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-299.02, 28.41, -341.23]), lua.Table.create([-3.69, -126.88, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var animationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4210_talk_10", "main_07_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4210_talk_17", "main_07_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-299.06, 28.26, -342.91]), lua.Table.create([-2.72, -146.72, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_friend_f", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        var fObj_Set_Turn_To_ObjResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4210_talk_11", "main_07_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        var animationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4210_talk_12", "main_07_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction10);
        var animationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction11);
        var animationAction12:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4210_talk_13", "main_07_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction12);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_f", -301.15, 26.92, -341.94, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small_mc", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -96.68);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_07_03");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4010")))
        {
            remainingBeforeSecondFlag = (1 : Dynamic);
        }
        else
        {
            remainingBeforeSecondFlag = (2 : Dynamic);
        };
        var remainingObjectives:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4410")))
        {
            var remainingAfterSecondFlag:Dynamic = untyped remainingBeforeSecondFlag - 1;
            remainingObjectives = remainingAfterSecondFlag;
        }
        else
        {
            remainingObjectives = remainingBeforeSecondFlag;
        };
        if (0 == remainingObjectives)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m07_4210_talk_03", "main_07_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            if (1 == remainingObjectives)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m07_4210_talk_02", "main_07_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if (2 == remainingObjectives)
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m07_4210_talk_01", "main_07_01");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
