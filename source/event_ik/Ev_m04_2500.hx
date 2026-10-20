package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C11AFD815AAD2088F")
@:expose("C11AFD815AAD2088F")
class Ev_m04_2500 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_DEU:Dynamic;

    @:abiSlot(10)
    public var POKE_BAKU:Dynamic;

    public function new()
    {
        untyped (this)[10] = "main_m4_mega_baku";
        untyped (this)[9] = "npc_main_friend_f";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "normal", "npc_main_friend_f");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_2500");
        if (!lua.abi.Host.truthy(flagValue))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_SILENCE");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "sad2", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -627.77, 28.33, -383.56, 58.68);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -634.61, 29.02, -387.38, 53.24);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_PLY, "head");
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_DEU, -633.76, 29.02, -386.67, 0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-627.09, 29.72, -382.61]), lua.Table.create([-1.78, 53.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lua.Table.create([-632.75, 30.0, -383.92]));
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2500_talk_01", "main_04_01", this.CHR_DEU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.POKE_BAKU, "head");
            this.TimeWait(0.8);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 21);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-634.27, 30.69, -387.98]), lua.Table.create([-13.74, -142.04, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_2500_talk_02", "main_04_01", this.CHR_DEU);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-632.41, 30.87, -386.2]), lua.Table.create([-22.18, 69.7, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2500_talk_03", "main_04_01", this.CHR_DEU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            this.TimeWait(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2500_talk_04", "main_04_01", this.CHR_DEU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -627.97, 28.33, -383.25, 58.68);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -630.54, 28.38, -382.29, 53.24);
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-630.86, 29.81, -381.19]);
            var cameraVector2:Dynamic = lua.Table.create([-7.46, -59.85, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_DEU, -629.03, 28.32, -381.99, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2500_talk_06", "main_04_01", this.CHR_DEU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -627.97, 28.33, -383.25, 48.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -629.03, 28.32, -381.99, 71.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-630.93, 29.84, -384.2]), lua.Table.create([-12.64, -124.43, -0.0]), 45.78, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (lua.abi.Host.truthy(untyped main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_2500")))
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        };
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.CHR_PLY);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-627.59, 29.84, -382.13]), lua.Table.create([-10.07, 13.39, 0.0]), 40.0, 0, cameraEase2, null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_2500_sys_01", "main_04_01");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_2500_select_01", "msg_Ev_m04_2500_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.CHR_PLY);
        var cHRPLY:Dynamic = this.CHR_PLY;
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(cHRPLY);
        if (0 == (selection : Dynamic))
        {
            var isFullHPAndPPAtPartyResult:Dynamic = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
            if (!lua.abi.Host.truthy(isFullHPAndPPAtPartyResult))
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-628.8, 29.86, -380.91]), lua.Table.create([-8.46, -1.43, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var showMessageWithDisplayingAction:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction;
                var cHRDEU:Dynamic = this.CHR_DEU;
                var callback:Dynamic = function():Dynamic
                {
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
                    scenario.F32FAD7D4DF3ACA95(0.5);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
                    return null;
                };
                showMessageWithDisplayingAction(0, "msg_Ev_m04_2500_talk_05", "main_04_01", cHRDEU, null, null, callback);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                this.TimeWait(0.5);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
                this.TimeWait(0.3);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_DEU);
                this.TimeWait(1.0);
            };
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay(this.POKE_BAKU, this.CHR_DEU);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        }
        else
        {
            if (1 == (selection : Dynamic))
            {
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            };
        };
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        untyped this.m_resultParam = selection;
    }
}
