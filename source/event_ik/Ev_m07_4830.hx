package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCEC57E1AA2F3F542")
@:expose("CCEC57E1AA2F3F542")
class Ev_m07_4830 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_HAL:Dynamic;

    @:abiSlot(11)
    public var CHR_SITA_1:Dynamic;

    @:abiSlot(12)
    public var CHR_SITA_2:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var slot14:Dynamic;

    public function new()
    {
        this.slot14 = "npc_pa_member_f_03";
        this.slot13 = "npc_pa_member_m_01";
        this.CHR_SITA_2 = "dyn_sita_2";
        this.CHR_SITA_1 = "dyn_sita_1";
        this.CHR_HAL = "dyn_hal";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_leader", this.slot13, this.slot14]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        var menuLabels:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([(-661.44), 0.01, (-874.73)]), 0.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_HAL, lua.Table.create([(-661.44), 0.01, (-874.73)]), 0.0, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SITA_1, lua.Table.create([(-661.44), 0.01, (-874.73)]), 0.0, this.slot13);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SITA_2, lua.Table.create([(-661.44), 0.01, (-874.73)]), 0.0, this.slot14);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_SITA_1, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_SITA_2, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-662.23), 0.01, (-875.85), (-135.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-662.42), 0.01, (-875.29), (-148.5));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, (-663.55), 0.03, (-877.35), 38.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SITA_1, (-665.68), 0.02, (-878.32), 45.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SITA_2, (-664.4), 0.02, (-879.16), 32.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-660.28), 1.44, (-875.13)]), lua.Table.create([(-5.38), 67.57, 0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4830_talk_01", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4830_talk_08", "main_07_01", this.CHR_HAL);
        menuLabels = (["msg_Ev_m07_4830_select_01", "msg_Ev_m07_4830_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == (selection : Dynamic))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 174);
            var cHRHAL:Dynamic = this.CHR_HAL;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4830_talk_09", "main_07_01", cHRHAL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            menuLabels = untyped main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick;
            menuLabels();
        }
        else
        {
            if (1 == (selection : Dynamic))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 175);
                var cHRHAL2:Dynamic = this.CHR_HAL;
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4830_talk_10", "main_07_01", cHRHAL2);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                menuLabels = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                menuLabels();
            };
        };
        untyped this.m_resultParam = selection;
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_SITA_2, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_4830_talk_02", "main_07_01", this.CHR_HAL, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[10], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 18);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[12], 18);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_SUS");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SITA_1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SITA_2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SITA_1, (-672.74), 0.02, (-888.28), (-144.83));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SITA_2, (-672.79), 0.0, (-891.49), (-144.5));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_GATE_MBSCZONE_IN");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_SITA_1, (-683.22), 0.02, (-903.28), 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_SITA_2, (-681.03), 0.0, (-902.27), 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-662.5), 1.69, (-876.77)]), lua.Table.create([(-8.54), 36.25, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-662.92), 1.69, (-876.46)]), lua.Table.create([(-8.54), 36.25, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_SITA_1, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_SITA_2, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS_0S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        menuLabels = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", menuLabels);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 29);
        this.TimeWait(0.5);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(menuLabels);
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_WILD_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(menuLabels);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-663.11), 1.12, (-876.73)]), lua.Table.create([27.41, 36.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(5, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "battle", "npc_main_pa_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise_mc", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "surprise_mc", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_4830_talk_03", "main_07_01", this.CHR_HAL, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_4830_talk_04", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FadeEffect(menuLabels);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-662.69), 1.48, (-876.9)]), lua.Table.create([(-7.83), (-162.42), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4830_talk_05", "main_07_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-660.56), 1.33, (-875.21)]), lua.Table.create([(-3.19), 66.58, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_4830_talk_06", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 24);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_4830_talk_07", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_03");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
