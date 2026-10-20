package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB8F3EE5B83B88D42")
@:expose("CB8F3EE5B83B88D42")
class Ev_m08_3610 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -146.02, 0.34, -744.26, 154.41);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-146.92, 0.33, -743.73]), -125.5, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-146.02, 0.34, -744.26, 154.41);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_STAAMIINAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -147.77, 0.34, -744.34, 54.33);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-146.92, 1.84, -743.73]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        var cameraEase:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-148.82, 1.79, -744.23]), lua.Table.create([-5.74, -94.03, 0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m08_3210")))
        {
            remainingBeforeSecondFlag = (untyped 1 : Dynamic);
        }
        else
        {
            remainingBeforeSecondFlag = (untyped 2 : Dynamic);
        };
        var getFlagValueResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m08_3410");
        var remainingObjectives:Dynamic = null;
        if (lua.abi.Host.truthy(getFlagValueResult))
        {
            var remainingAfterSecondFlag:Dynamic = untyped (remainingBeforeSecondFlag - 1);
            remainingObjectives = remainingAfterSecondFlag;
        }
        else
        {
            remainingObjectives = remainingBeforeSecondFlag;
        };
        if ((remainingObjectives > 0))
        {
            var animationAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_04", "main_08_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "sad", "npc_main_friend_f");
            var animationAction3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_07", "main_08_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-147.81, 1.85, -743.94]), lua.Table.create([-5.76, -96.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 28);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_08", "main_08_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f"));
            var animationAction4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 25);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_09", "main_08_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            untyped wait_FObj_Action(untyped animationAction4);
        }
        else
        {
            if ((0 == remainingObjectives))
            {
                var animationAction5:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_05", "main_08_01", "dyn_main_friend_f");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "sad", "npc_main_friend_f");
                var animationAction6:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_07", "main_08_01", "dyn_main_friend_f");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-147.81, 1.85, -743.94]), lua.Table.create([-5.76, -96.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 28);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_08", "main_08_01", "dyn_main_friend_f");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f"));
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 25);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_09", "main_08_01", "dyn_main_friend_f");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-147.48, 1.68, -743.26]), lua.Table.create([0.02, 9.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f");
                main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
                main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
                main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
                main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
                main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m08_3800_talk_01", "main_08_01");
                main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m08_3800_talk_02", "main_08_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
                main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
                main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
                var cameraEase2:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-148.82, 1.79, -744.23]), lua.Table.create([-6.15, -95.18, 0.0]), 40.0, 0, cameraEase2);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small", "npc_main_friend_f");
                var animationAction7:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 18);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3610_talk_06", "main_08_01", "dyn_main_friend_f");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
                var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
                untyped setFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
            }
            else
            {
            };
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_f", -153.6, 0.93, -736.44, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        var fObj_Set_TurnResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -16.67);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-148.59, 1.64, -743.7]), lua.Table.create([1.41, -60.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_08_04");
        if ((0 == untyped remainingObjectives))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3610_talk_03", "main_08_01");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            if ((1 == untyped remainingObjectives))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3610_talk_02", "main_08_01");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if ((2 == untyped remainingObjectives))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3610_talk_01", "main_08_01");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -148.0, 0.34, -742.41, -47.35));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
