package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF1E1DA56ECB6C180")
@:expose("CF1E1DA56ECB6C180")
class Ev_m05_3000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    public function new()
    {
        this.slot10 = "dyn_muku";
        this.slot9 = "npc_main_ju_boss";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_FADE_OUT_2S_SUS");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        (untyped main.event.ik.command.IkScriptCommand.CreateEffect)("battle/etc/kaiwa/ef_concentration_line01", ("ef_line" : Dynamic));
        this.Await((function():Dynamic
        {
            return (untyped main.event.ik.command.IkScriptCommand.IsSetUpEffect)(("ef_line" : Dynamic));
        }));
        var sceneVector:Dynamic = lua.Table.create([(-685.25), 6.13, (-510.2)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot10, sceneVector, 167.642, "npc_main_ju_leader");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -689.52), 6.13, (untyped -503.66), 162.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot9, (untyped -687.72), 6.11, (untyped -508.76), (untyped -15.0));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -685.25), 6.13, (untyped -510.2), (untyped -38.86));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait)(this.slot9, "ob0004_00_normal_05");
        var sceneVector2:Dynamic = lua.Table.create([(-688.75), 8.41, (-501.41)]);
        var sceneVector3:Dynamic = lua.Table.create([(-4.33), 4.19, (-0.0)]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector2, sceneVector3, 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var sceneVector4:Dynamic = lua.Table.create([(-688.75), 7.47, (-501.41)]);
        var sceneVector5:Dynamic = lua.Table.create([(-4.33), 4.19, (-0.0)]);
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, sceneVector4, sceneVector5, (40.0 : Dynamic), (0 : Dynamic), cameraEase2, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.1, (true : Dynamic));
        this.TimeWait((1.0 : Dynamic));
        var getFlagValueResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.GetFlagValue)(("flag_Ev_m05_3000" : Dynamic));
        if (!lua.abi.Host.truthy(getFlagValueResult))
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 24);
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_01", "main_05_01", this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var sceneVector6:Dynamic = lua.Table.create([(-687.7), 8.1, (-507.14)]);
            var sceneVector7:Dynamic = lua.Table.create([(-8.84), 4.19, 0.0]);
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector6, sceneVector7, 40.0, 0, cameraEase3);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_02", "main_05_01", this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 28);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            this.TimeWait(0.5);
            var sceneVector8:Dynamic = lua.Table.create([(-686.11), 7.9, (-510.14)]);
            var sceneVector9:Dynamic = lua.Table.create([(-3.94), 140.49, 0.0]);
            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector8, sceneVector9, 40.0, 0, cameraEase4);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_03", "main_05_01", this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_04", "main_05_01", this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync)(this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var sceneVector10:Dynamic = lua.Table.create([(-688.18), 7.57, (-507.45)]);
            var sceneVector11:Dynamic = lua.Table.create([9.71, (-19.93), (-0.0)]);
            var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector10, sceneVector11, 40.0, 0, cameraEase5);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var sceneVector12:Dynamic = lua.Table.create([(-688.18), 7.65, (-507.45)]);
            var sceneVector13:Dynamic = lua.Table.create([9.71, (-19.93), (-0.0)]);
            var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(1.0, sceneVector12, sceneVector13, 40.0, 0, cameraEase6);
            this.TimeWait(0.5);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.slot9);
            (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_04_SUS");
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_05", "main_05_01", this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot9, 32, null, 4.3);
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_06", "main_05_01", this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var sceneVector14:Dynamic = lua.Table.create([(-689.09), 7.47, (-501.55)]);
            var sceneVector15:Dynamic = lua.Table.create([(-4.32), 1.07, (-0.0)]);
            var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)((0.0 : Dynamic), sceneVector14, sceneVector15, (40.0 : Dynamic), (0 : Dynamic), cameraEase7, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
            var wait_Camera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            wait_Camera();
        }
        else
        {
        };
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_04_SUS");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_07", "main_05_01", this.slot9);
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m05_3000_select_01", "msg_Ev_m05_3000_select_02"]), 0, (true : Dynamic), (false : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var fObj_Set_Animation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation;
        var slot9:Dynamic = this.slot9;
        fObj_Set_Animation(slot9, (1 : Dynamic));
        if (0 == menuSelection)
        {
            var sceneVector16:Dynamic = lua.Table.create([(-688.22), 7.95, (-507.13)]);
            var sceneVector17:Dynamic = lua.Table.create([(-4.33), (-24.08), (-0.0)]);
            var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector16, sceneVector17, 40.0, 0, cameraEase8);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var sceneVector18:Dynamic = lua.Table.create([(-688.22), 7.95, (-507.13)]);
            var sceneVector19:Dynamic = lua.Table.create([(-4.33), (-31.96), (-0.0)]);
            var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, sceneVector18, sceneVector19, 40.0, 0, cameraEase9);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot10, "head");
            this.TimeWait(0.5);
            (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m05_3000_talk_14", "main_05_01", this.slot9, null, null, (function():Dynamic
            {
                var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
                timeWait(scenario, 0.5);
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[10]), (untyped scenario[9]), "head");
                return null;
            }));
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 174);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.slot10, (untyped -686.35), 6.13, (untyped -509.31), 0.5);
            this.TimeWait(0.5);
            (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.5, true);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot10);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot8, "serious", this.slot8);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot8, this.slot9, "head");
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -686.2), 6.13, (untyped -509.72), 135.06);
            this.TimeWait(0.5);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.slot10, (untyped -683.48), 6.13, (untyped -512.2), 0.5);
            var sceneVector20:Dynamic = lua.Table.create([(-688.17), 7.96, (-507.68)]);
            var sceneVector21:Dynamic = lua.Table.create([(-4.33), (-21.85), (-0.0)]);
            var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector20, sceneVector21, 40.0, 0, cameraEase10);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var sceneVector22:Dynamic = lua.Table.create([(-688.17), 8.04, (-507.68)]);
            var sceneVector23:Dynamic = lua.Table.create([(-4.33), (-21.85), (-0.0)]);
            var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, sceneVector22, sceneVector23, 40.0, 0, cameraEase11);
            (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.5, true);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot8, "head");
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            this.TimeWait(0.5);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.slot8, (untyped -688.63), 6.13, (untyped -506.08), 0.5);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.slot9, (untyped -688.47), 6.12, (untyped -506.78), 0.5);
            var sceneVector24:Dynamic = lua.Table.create([(-682.96), 7.82, (-504.59)]);
            var sceneVector25:Dynamic = lua.Table.create([0.0, 71.39, 0.0]);
            var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector24, sceneVector25, 40.0, 0, cameraEase12);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var sceneVector26:Dynamic = lua.Table.create([(-685.99), 7.82, (-505.61)]);
            var sceneVector27:Dynamic = lua.Table.create([0.0, 71.39, 0.0]);
            var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, sceneVector26, sceneVector27, 40.0, 0, cameraEase13);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var sceneVector28:Dynamic = lua.Table.create([(-687.2), 7.83, (-506.02)]);
            var sceneVector29:Dynamic = lua.Table.create([0.0, 71.39, 0.0]);
            var cameraEase14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector28, sceneVector29, 40.0, 0, cameraEase14);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            (untyped main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone)(this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence)(this.slot8, this.slot9, "ob0004_00_normal_05");
            var sceneVector30:Dynamic = lua.Table.create([(-687.48), 7.37, (-507.02)]);
            var sceneVector31:Dynamic = lua.Table.create([2.29, 122.52, (-0.0)]);
            var cameraEase15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector30, sceneVector31, 40.0, 0, cameraEase15);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_09", "main_05_01", this.slot9);
            (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m05_3000_select_03", "msg_Ev_m05_3000_select_04", "msg_Ev_m05_3000_select_05"]), 0, false, false);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var sceneVector32:Dynamic = lua.Table.create([(-687.85), 7.29, (-505.35)]);
            var sceneVector33:Dynamic = lua.Table.create([20.19, 36.8, 0.0]);
            var cameraEase16:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector32, sceneVector33, 40.0, 0, cameraEase16);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var sceneVector34:Dynamic = lua.Table.create([(-687.22), 6.83, (-504.51)]);
            var sceneVector35:Dynamic = lua.Table.create([20.19, 36.8, 0.0]);
            var cameraEase17:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.5, sceneVector34, sceneVector35, 40.0, (0 : Dynamic), cameraEase17, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 333);
            this.TimeWait(0.5);
            (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_MUSCLE_WHOOSH03");
            (untyped main.event.ik.command.IkScriptCommand.PlayEffectSequence)(("ef_line" : Dynamic));
            var slot92:Dynamic = this.slot9;
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, ("msg_Ev_m05_3000_talk_13" : Dynamic), ("main_05_01" : Dynamic), slot92);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FadeEffect)(("ef_line" : Dynamic));
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_VS_READY_02");
            (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_VS_READY");
            (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_ALL_RESET_T1000");
            var startLoadingFadeAnimationScene:Dynamic = untyped main.event.ik.command.IkScriptCommand.S5947B527097768D0;
            startLoadingFadeAnimationScene((4 : Dynamic));
        }
        else
        {
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 18);
            var slot93:Dynamic = this.slot9;
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_3000_talk_08", "main_05_01", slot93);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT_SUS");
            (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
            (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_ALL_RESET_T1000");
            var fade_Out:Dynamic = untyped main.event.ik.command.IkScriptCommand.Fade_Out;
            fade_Out(("transition_fade_inout" : Dynamic), (0.1 : Dynamic), (true : Dynamic));
        };
        untyped this.m_resultParam = menuSelection;
        (untyped main.event.ik.command.IkScriptCommand.RemoveAllTagEffect)();
        (untyped main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll)();
    }
}
