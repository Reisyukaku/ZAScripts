package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C85A3BD4922D940E6")
@:expose("C85A3BD4922D940E6")
class Ev_sub_078_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub078_001", "npc_sub078_002", "npc_sub078_003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var selection:Dynamic = null;
        var menuLabels:Dynamic = null;
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub078_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub078_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub078_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_001", "Player", "head");
        var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult[1] = (0 : Dynamic);
        untyped emptyTableResult[2] = (2.5 : Dynamic);
        untyped emptyTableResult[3] = (0 : Dynamic);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base("Player", "npc_sub078_001", 2.5, 35.0, true, 2, 0.9, emptyTableResult);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub078_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_01", "sub_078", "npc_sub078_001");
        menuLabels = (["msg_Ev_sub_078_010_select_01", "msg_Ev_sub_078_010_select_02"]);
        selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        var selection2:Dynamic = selection;
        if (1 == selection2)
        {
            menuLabels = 0;
            main.event.ik.command.IkScriptCommand.ShowMessage(menuLabels, "msg_Ev_sub_078_010_talk_02", "sub_078", "npc_sub078_001");
            selection = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            selection();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_03", "sub_078", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M6DB_T2000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            selection = "btl_event_line_eff";
            menuLabels = "btl_event_line2_eff";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line01", selection);
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line02", menuLabels);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-693.19), (-4.19), (-540.42), (-178.4));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", (-692.23), (-4.18), (-540.69), (-164.36));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", (-691.33), (-5.34), (-547.64), (-135.91));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", (-690.91), (-5.34), (-548.81), (-113.46));
            var unitParamInPartyByDevNo:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(318);
            var simpleParam:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(unitParamInPartyByDevNo);
            var getAppearanceState:Dynamic = untyped simpleParam.fCFD269DB;
            var getAppearanceStateResult:Dynamic = getAppearanceState(simpleParam);
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KIBANIA", lua.Table.create([(-697.29), (-6.34), (-553.0)]), 51.52, unitParamInPartyByDevNo.f0DE6FCA9(), unitParamInPartyByDevNo.f9E86AD53(), unitParamInPartyByDevNo.fB31DF589(), "event_script", 0, true, unitParamInPartyByDevNo.fA284DF88(), unitParamInPartyByDevNo.f1E57BACE(), getAppearanceStateResult, false);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("KIBANIA", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_sub078_001");
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(selection);
            }));
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(menuLabels);
            }));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-691.65), (-1.84), (-538.05)]), lua.Table.create([(-24.04), 20.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-690.8), (-1.84), (-538.35)]), lua.Table.create([(-24.04), 20.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_04", "sub_078", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-693.71), (-4.73), (-548.52)]), lua.Table.create([13.53, (-96.44), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(selection);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_002", "serious");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_003", "sad2");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_002", "KIBANIA", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_003", "KIBANIA", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_002", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_078_010_talk_05", "sub_078", "npc_sub078_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("npc_sub078_003", "surprise_mc");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_003", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_078_010_talk_06", "sub_078", "npc_sub078_003", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_078_010_CAMERA_WHOOSH08_WEAK");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-694.73), (-4.84), (-550.75)]), lua.Table.create([(-21.19), 4.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-697.08), (-4.84), (-550.58)]), lua.Table.create([(-21.19), 4.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-699.53), (-5.64), (-552.8)]), lua.Table.create([2.2, (-107.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([(-699.41), (-5.64), (-553.18)]), lua.Table.create([2.2, (-107.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-695.27), (-5.0), (-550.73)]), lua.Table.create([(-13.91), 40.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_078_010_CAMERA_WHOOSH02_WEAK");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-696.19), (-5.35), (-551.83)]), lua.Table.create([(-13.91), 40.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_003", "sad2");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KIBANIA", 52);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_07", "sub_078");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("KIBANIA");
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(menuLabels);
            main.event.ik.command.IkScriptCommand.FadeEffect(selection);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-690.8), (-1.84), (-538.35)]), lua.Table.create([(-24.04), 20.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_078_010_talk_08", "sub_078", "npc_sub078_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_078_010_talk_09", "sub_078", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T0");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-697.21), (-5.2), (-551.4)]), lua.Table.create([(-22.05), (-1.0), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KIBANIA", 53);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_10", "sub_078");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-693.67), (-4.15), (-547.76)]), lua.Table.create([(-0.21), (-80.7), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_002", "sad");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_002", "npc_sub078_001", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_003", "npc_sub078_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub078_001", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_11", "sub_078", "npc_sub078_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_002", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_12", "sub_078", "npc_sub078_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-690.8), (-1.84), (-538.35)]), lua.Table.create([(-24.04), 20.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_13", "sub_078", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_14", "sub_078", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 174);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_01");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_078_010_talk_15", "sub_078", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub078_001"));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub078_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub078_001");
            var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub078_001", "Player");
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(6, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-693.56), (-2.81), (-539.08)]), lua.Table.create([(-6.14), (-26.68), (-0.0)]), 40.0, 0, cameraEase, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub078_001");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_078_010_talk_16", "sub_078", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0078");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            var waitFade:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            waitFade();
        };
        untyped this.m_resultParam = selection2;
    }
}
