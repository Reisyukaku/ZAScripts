package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC96D445B8CCF89F8")
@:expose("CC96D445B8CCF89F8")
class Ev_m08_3410 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -688.88, 0.01, -315.87, 16.53);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-689.04, 0.0, -314.87]), 175.94, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_m", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-688.88, 0.01, -315.87, 16.53);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_BANGIRASUNAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_m", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -688.88, 0.01, -315.87, -2.07);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-689.71, 1.41, -316.76]), lua.Table.create([-5.33, -147.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3410_talk_04", "main_08_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_m"));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "rejoice_small", "npc_main_friend_m");
        var animationAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 74);
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
        var getFlagValueResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m08_3610");
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
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal", "npc_main_friend_m");
            var animationAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3410_talk_05", "main_08_01", "dyn_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            untyped wait_FObj_Action(untyped animationAction2);
        }
        else
        {
            if ((0 == remainingObjectives))
            {
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
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
                var cameraEase:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-689.68, 1.41, -316.72]), lua.Table.create([-5.3, -147.28, 0.0]), 40.0, 0, cameraEase);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "rejoice_small", "npc_main_friend_m");
                var animationAction3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 18);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3410_talk_06", "main_08_01", "dyn_main_friend_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var wait_FObj_Action2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                untyped wait_FObj_Action2(untyped animationAction3);
            }
            else
            {
            };
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -697.62, 0.0, -311.37, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T1500");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -48.07));
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_08_03");
        if ((0 == untyped remainingObjectives))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3410_talk_03", "main_08_01");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            if ((1 == untyped remainingObjectives))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3410_talk_02", "main_08_01");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if ((2 == untyped remainingObjectives))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3410_talk_01", "main_08_01");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
