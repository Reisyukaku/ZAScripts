package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4AD0E1E937E2FCA")
@:expose("CB4AD0E1E937E2FCA")
class Ev_m04_3500 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_PYU:Dynamic;

    @:abiSlot(10)
    public var POKE_UTU:Dynamic;

    public function new()
    {
        this.POKE_UTU = "main_m4_mega_utsu";
        this.CHR_PYU = "npc_main_friend_m";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_3500");
        if (!lua.abi.Host.truthy(flagValue))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.POKE_UTU, false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-175.66), 0.15, (-161.25), (-145.0));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-174.64), 0.15, (-161.5), (-131.8));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-173.81), 1.45, (-160.14)]), lua.Table.create([1.2, 45.23, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3500_talk_01", "main_04_01", this.CHR_PYU);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3500_talk_02", "main_04_01", this.CHR_PYU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-175.31), 1.45, (-160.94)]), lua.Table.create([1.2, (-37.04), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-175.23), 1.45, (-160.88)]), lua.Table.create([1.2, (-37.04), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PYU);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3500_talk_04", "main_04_01", this.CHR_PYU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-178.1), 0.17, (-163.66), (-124.42));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-176.99), 0.17, (-163.73), (-123.38));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-176.45), 1.48, (-164.5)]), lua.Table.create([(-4.57), 69.82, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-176.05), 1.48, (-164.35)]), lua.Table.create([(-4.57), 69.82, (-0.0)]), 40.0, 0, cameraEase, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, (-178.95), 0.17, (-164.34), 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PYU, (-178.24), 0.17, untyped -164.83, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var scenario2:Dynamic = this;
            var timeWait:Dynamic = untyped this.F32FAD7D4DF3ACA95;
            timeWait(scenario2, 0.5);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-178.95), 0.17, (-164.34), (-132.95));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-178.24), 0.17, (-164.83), (-132.79));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-176.45), 1.48, (-164.5)]), lua.Table.create([(-4.57), 69.82, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-176.05), 1.48, (-164.35)]), lua.Table.create([(-4.57), 69.82, (-0.0)]), 40.0, 0, cameraEase2, null, null, null, null);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            var scenario3:Dynamic = this;
            var timeWait2:Dynamic = untyped this.F32FAD7D4DF3ACA95;
            timeWait2(scenario3, 2.5);
        };
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-179.34), 1.61, (-165.34)]), lua.Table.create([(-6.37), (-164.7), (-0.0)]), 40.0, 0, cameraEase3, null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_3500_sys_01", "main_04_01");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_3500_select_01", "msg_Ev_m04_3500_select_02"]), 0, true, false));
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
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-178.51), 1.48, (-165.89)]), lua.Table.create([(-2.2), 177.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var cHRPYU:Dynamic = this.CHR_PYU;
                var callback:Dynamic = function():Dynamic
                {
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
                    scenario.F32FAD7D4DF3ACA95(0.5);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
                    return null;
                };
                main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_3500_talk_03", "main_04_01", cHRPYU, null, null, callback);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                this.TimeWait(0.5);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
                this.TimeWait(0.3);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PYU);
                var scenario4:Dynamic = this;
                var timeWait3:Dynamic = untyped this.F32FAD7D4DF3ACA95;
                timeWait3(scenario4, 1.0);
            };
            var cHRPYU2:Dynamic = this.CHR_PYU;
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay(this.POKE_UTU, cHRPYU2);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        }
        else
        {
            if (1 == (selection : Dynamic))
            {
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                var fadeOut:Dynamic = untyped main.event.ik.command.IkScriptCommand.Fade_Out;
                fadeOut("transition_fade_inout", 0.1, true);
            };
        };
        untyped this.m_resultParam = selection;
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
    }
}
