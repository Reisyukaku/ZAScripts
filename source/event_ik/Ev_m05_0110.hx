package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4D6296F4E2C3D51")
@:expose("CB4D6296F4E2C3D51")
class Ev_m05_0110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-611.95, 14.68, -813.17]), -33.56, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_operator_m_01", lua.Table.create([-608.65, 14.62, -809.98]), -122.25, "npc_operator_m_01");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -612.95, 14.68, -812.16, 144.16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_operator_m_01", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-612.95, 14.68, -812.16, 144.16);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_SUPIANAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-612.91, 16.11, -810.5]), lua.Table.create([-5.13, -9.27, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_20", "main_05_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m05_0210");
        var flagValue2:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m05_0310");
        if (((((true == flagValue)) && ((true == flagValue2)))))
        {
            var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_rival_m", 32, null, 2.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_22", "main_05_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjActionOneShot:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot;
            waitFObjActionOneShot(setAnimationOneShotAction);
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "confident", "npc_main_rival_m");
            var setAnimationOneShotAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_rival_m", 32, null, 2.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_21", "main_05_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjActionOneShot2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot;
            waitFObjActionOneShot2(setAnimationOneShotAction3);
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_operator_m_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_operator_m_01", true);
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_operator_m_01", -610.59, 14.67, -810.89, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-614.64, 15.91, -811.46]), lua.Table.create([-2.98, -81.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_operator_m_01", "head");
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 61.73);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "npc_operator_m_01", "head");
        var setTurnAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 30.82);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_operator_m_01", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_01", "main_05_01", "npc_operator_m_01");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0110_select_01", "msg_Ev_m05_0110_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction2);
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_operator_m_01", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_03", "main_05_01", "npc_operator_m_01");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_operator_m_01", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_04", "main_05_01", "npc_operator_m_01");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0110_select_03", "msg_Ev_m05_0110_select_04"]), 0, false, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
        var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_operator_m_01");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_operator_m_01", 2));
        var setAnimationOneShotAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_operator_m_01", 33, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_05", "main_05_01", "npc_operator_m_01");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_06", "main_05_01", "npc_operator_m_01");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-612.75, 16.19, -810.59]), lua.Table.create([-1.95, -82.71, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_operator_m_01", "sad2");
        var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_operator_m_01", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_07", "main_05_01", "npc_operator_m_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_08", "main_05_01", "npc_operator_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -612.34, 14.68, -813.03, 10.32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_rival_m", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_operator_m_01", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_operator_m_01");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_operator_m_01", -600.58, 14.52, -807.64, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-611.94, 16.05, -811.04]), lua.Table.create([-6.9, 27.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "sad", "npc_main_rival_m");
        var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_13", "main_05_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "smile", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0110_talk_14", "main_05_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", untyped -605.43, 14.53, -809.06, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_05_02");
        if (((((true == flagValue)) && ((true == flagValue2)))))
        {
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_0110_talk_12", "main_05_01");
        }
        else
        {
            if (((((true == flagValue)) || ((true == flagValue2)))))
            {
                untyped main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_0110_talk_11", "main_05_01");
            }
            else
            {
                untyped main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_0110_talk_10", "main_05_01");
            };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
