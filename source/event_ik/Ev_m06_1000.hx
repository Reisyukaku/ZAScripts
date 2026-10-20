package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB8FC471E54749CFD")
@:expose("CB8FC471E54749CFD")
class Ev_m06_1000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    public function new()
    {
        this.slot13 = "tr0030_00_fa00_ra01_co_member_m";
        this.slot12 = "tr0031_00_fa00_ra03_co_member_f";
        this.slot11 = "dyn_sita_2";
        this.slot10 = "dyn_sita_1";
        this.slot9 = "dyn_deu";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        var flagValue:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_co_member_m_00", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_co_member_f_00", false);
        main.event.ik.command.IkScriptCommand.S156410CEE281BFF8(this.slot10, lua.Table.create([(-326.7), 0.0, (-645.64)]), (-157.35), 56);
        main.event.ik.command.IkScriptCommand.S156410CEE281BFF8(this.slot11, lua.Table.create([(-325.69), 0.0, (-645.99)]), (-163.34), 62);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-326.79), 0.0, (-649.8)]), 15.05, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-327.33), 0.01, (-647.75), 23.93);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-326.45), 0.0, untyped -647.97, 23.05);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot10, 201);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 201);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        flagValue = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m06_1000");
        if (false == flagValue)
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03_SUS");
            flagValue = "ef_line";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", flagValue);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(flagValue);
            }));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-327.31), 1.35, (-647.31)]), lua.Table.create([0.0, (-160.39), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-327.03), 1.45, (-646.54)]), lua.Table.create([0.0, (-160.39), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            this.TimeWait(0.1);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "battle", this.slot12);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 0.05, 10, 0);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 0.05, 10, 1);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 0.05, 10, 2);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(flagValue);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m06_1000_talk_01", "main_06_01", this.slot10);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.slot10);
            main.event.ik.command.IkScriptCommand.FadeEffect(flagValue);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-326.2), 1.34, (-647.65)]), lua.Table.create([0.0, (-162.86), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-325.98), 1.43, (-646.92)]), lua.Table.create([0.0, (-162.86), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "battle", this.slot13);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 0.05, 10, 0);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 0.05, 10, 1);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 0.05, 10, 2);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(flagValue);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m06_1000_talk_08", "main_06_01", this.slot11);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.slot11);
            main.event.ik.command.IkScriptCommand.FadeEffect(flagValue);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-327.93), 1.44, (-647.48)]), lua.Table.create([(-5.86), (-122.84), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-329.18), 1.43, (-648.79)]), lua.Table.create([(-5.86), (-122.84), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
            this.TimeWait(0.5);
            var slot10:Dynamic = this.slot10;
            var callback:Dynamic = function():Dynamic
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "normal", scenario[12]);
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[10]);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[8], "head");
                scenario.F32FAD7D4DF3ACA95(0.5);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "normal", scenario[13]);
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[11]);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[8], "head");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_1000_talk_02", "main_06_01", slot10, null, null, callback);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitCamera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            waitCamera();
        }
        else
        {
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-329.18), 1.43, (-648.79)]), lua.Table.create([(-5.86), (-122.84), (-0.0)]), 40.0, 0, cameraEase, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", this.slot12);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
            this.TimeWait(0.2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "normal", this.slot13);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot11);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot8, "head");
            flagValue = untyped main.event.ik.command.IkScriptCommand.Fade_In;
            flagValue("transition_fade_inout", 0.1, true);
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03_SUS");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A(this.slot10, "battle", this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 491);
        main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A(this.slot11, "anger_mc", this.slot12);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1000_talk_03", "main_06_01", this.slot10);
        flagValue = 0;
        var menuLabels:Dynamic = (["msg_Ev_m06_1000_select_01", "msg_Ev_m06_1000_select_02"]);
        flagValue = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (1 == flagValue)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-327.97), 1.58, (-646.43)]), lua.Table.create([(-8.14), (-110.26), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var callback2:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A(scenario[10], "battle", scenario[12]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 78);
                main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A(scenario[11], "anger_mc", scenario[13]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 2);
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_1000_talk_04", "main_06_01", this.slot10, null, null, callback2);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            var fObjSetPosAng:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            var slot8:Dynamic = this.slot8;
            fObjSetPosAng(slot8, untyped -329.57, 0.02, untyped -648.88, 33.61);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_1000_talk_05", "main_06_01", this.slot10, null, null, (function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A(scenario[10], "battle", scenario[12]);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[8], "head");
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[10]);
                scenario.F32FAD7D4DF3ACA95(0.2);
                main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A(scenario[11], "battle", scenario[13]);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[9], "head");
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[11]);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(scenario[10], (-326.98), 0.0, (-647.05), 0.5);
                scenario.F32FAD7D4DF3ACA95(0.2);
                main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(scenario[11], (-326.15), 0.0, (-647.35), 0.5);
                scenario.F32FAD7D4DF3ACA95(0.5);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-328.07), 1.1, (-648.28)]), lua.Table.create([9.57, (-122.59), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                return null;
            }));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-327.73), 1.29, (-647.47)]), lua.Table.create([11.59, (-106.21), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 491);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m06_1000_talk_09", "main_06_01", this.slot10);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-325.87), 1.38, (-648.03)]), lua.Table.create([7.36, 144.58, 0.0]), 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
            var slot11:Dynamic = this.slot11;
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m06_1000_talk_06", "main_06_01", slot11);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        };
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_f_00");
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_m_00");
        untyped this.m_resultParam = flagValue;
    }
}
