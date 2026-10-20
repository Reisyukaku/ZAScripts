package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C08F2E324CA96BFE1")
@:expose("C08F2E324CA96BFE1")
class Ev_m06_2210 extends BaseMainScenario
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
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-42.16, 19.37, -476.69]), 101.03, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -40.87, 19.38, -477.21, 39.4));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-40.87, 19.38, -477.21, 39.4);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_KUTIITONAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -40.87, 19.38, -477.21, -50.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -42.16, 19.37, -476.69, 101.03);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-39.81, 20.76, -478.63]), lua.Table.create([-3.1, 136.66, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_10", "main_06_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_11", "main_06_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-40.4, 20.93, -481.49]), lua.Table.create([-8.91, 168.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "lose", "npc_main_rival_m");
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_12", "main_06_01", "dyn_main_rival_m");
        var menuLabels:Dynamic = (["msg_Ev_m06_2210_select_01", "msg_Ev_m06_2210_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ((0 == menuSelection))
        {
            var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "sad", "npc_main_rival_m");
            var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_13", "main_06_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
        }
        else
        {
            var animationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "sad", "npc_main_rival_m");
            var animationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_14", "main_06_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction8);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -42.16, 19.37, -476.69, 107.03);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-41.09, 20.76, -477.65]), lua.Table.create([-2.17, 136.52, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_rival_m", lua.Table.create([-40.75, 20.6, -476.58]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_15", "main_06_01", "dyn_main_rival_m");
        var animationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_16", "main_06_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-40.19, 20.8, -478.47]), lua.Table.create([-4.6, 142.85, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "battle", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        var animationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 24);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_17", "main_06_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-40.4, 20.93, -481.49]), lua.Table.create([-8.91, 168.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction10);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious", "npc_main_rival_m");
        var animationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2210_talk_18", "main_06_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -46.88, 19.37, -478.95, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -107.6));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-41.52, 20.8, -478.11]), lua.Table.create([-6.1, -150.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_06_02");
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m06_2410")))
        {
            remainingBeforeSecondFlag = (1 : Dynamic);
        }
        else
        {
            remainingBeforeSecondFlag = (2 : Dynamic);
        };
        var remainingObjectives:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m06_2610")))
        {
            var remainingAfterSecondFlag:Dynamic = untyped remainingBeforeSecondFlag - 1;
            remainingObjectives = remainingAfterSecondFlag;
        }
        else
        {
            remainingObjectives = remainingBeforeSecondFlag;
        };
        if ((0 == remainingObjectives))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_2210_talk_07", "main_06_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            if ((1 == remainingObjectives))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_2210_talk_06", "main_06_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if ((2 == remainingObjectives))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_2210_talk_05", "main_06_01");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
    }
}
