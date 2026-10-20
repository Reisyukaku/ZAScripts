package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDB999A5B97581B2E")
@:expose("CDB999A5B97581B2E")
class Ev_m08_3210 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -738.04, 25.02, -598.66, 61.56);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-737.28, 25.02, -598.34]), -112.66, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-738.04, 25.02, -598.66, 61.56);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_KAIRYUNAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -738.04, 25.02, -598.66, 67.34);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-739.08, 26.41, -598.02]), lua.Table.create([-5.39, -68.77, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3210_talk_04", "main_08_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-738.05, 26.39, -598.39]), lua.Table.create([0.0, -82.21, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "battle", "npc_main_rival_m");
        var animationAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 24);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3210_talk_05", "main_08_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationAction3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        var sceneVector:Dynamic = lua.Table.create([-17.93, -63.62, -0.0]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-744.01, 28.14, -595.39]), sceneVector, 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m08_3410")))
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
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 29);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3210_talk_06", "main_08_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var fObj_Reset_AnimationResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_rival_m");
            untyped wait_FObj_Action(fObj_Reset_AnimationResult, null, null, null, null, null, null, null, null);
        }
        else
        {
            if ((0 == remainingObjectives))
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
                var animationAction4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3210_talk_07", "main_08_01", "dyn_main_rival_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
                var animationAction5:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3210_talk_08", "main_08_01", "dyn_main_rival_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var wait_FObj_Action2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                untyped wait_FObj_Action2(untyped animationAction5);
            }
            else
            {
            };
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -723.91, 25.01, -602.14, 2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-736.59, 26.25, -598.71]), lua.Table.create([-0.5, 92.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_08_02");
        if ((0 == untyped remainingObjectives))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3210_talk_03", "main_08_01");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            if ((1 == untyped remainingObjectives))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3210_talk_02", "main_08_01");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if ((2 == untyped remainingObjectives))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_3210_talk_01", "main_08_01");
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
