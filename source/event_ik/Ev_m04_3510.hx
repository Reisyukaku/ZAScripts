package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4B0741E938112F3")
@:expose("CB4B0741E938112F3")
class Ev_m04_3510 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_PYU:Dynamic;

    @:abiSlot(10)
    public var POKE_ZIGA:Dynamic;

    public function new()
    {
        this.POKE_ZIGA = "dyn_ziga";
        this.CHR_PYU = "dyn_pyu";
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
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-180.62, 0.2, -165.1, -131.8);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_UTUBOTTONAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([-177.18, 0.16, -164.0]), 53.24, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_ZIGA, lua.Table.create([-177.18, 0.16, -164.0]), -166.0, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -178.24, 0.17, -164.09, -145.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, -177.18, 0.16, -164.0, -116.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, -190.88, 19.64, -170.37, 33.85);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_ZIGA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-178.98, 1.56, -165.29]), lua.Table.create([-7.57, -137.55, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_3510_talk_03", "main_04_01", this.CHR_PYU, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[9]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PYU, 74);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        this.TimeWait(1.0);
        var sceneVector:Dynamic = lua.abi.Host.emptyTable();
        untyped sceneVector[1] = -178.24;
        untyped sceneVector[2] = 1.3;
        untyped sceneVector[3] = (untyped -164.0 : Dynamic);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PYU, sceneVector);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3510_talk_06", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3510_talk_07", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PYU, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3510_talk_01", "main_04_01", this.CHR_PYU);
        var cHR_PYU:Dynamic = this.CHR_PYU;
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3510_talk_02", "main_04_01", cHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_PLY, ("head" : Dynamic));
        this.TimeWait((0.5 : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PYU);
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ("1" == getEventModeResult)
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHR_PYU2:Dynamic = this.CHR_PYU;
            showMessage((0 : Dynamic), ("msg_Ev_m04_3510_talk_04" : Dynamic), ("main_04_01" : Dynamic), cHR_PYU2);
        }
        else
        {
            var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHR_PYU3:Dynamic = this.CHR_PYU;
            showMessage2((0 : Dynamic), ("msg_Ev_m04_3510_talk_05" : Dynamic), ("main_04_01" : Dynamic), cHR_PYU3);
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_04_04");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_1510")))
        {
            remainingBeforeSecondFlag = (1 : Dynamic);
        }
        else
        {
            remainingBeforeSecondFlag = (2 : Dynamic);
        };
        var remainingObjectives:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue(("flag_Ev_m04_2510" : Dynamic))))
        {
            var remainingAfterSecondFlag:Dynamic = untyped remainingBeforeSecondFlag - 1;
            remainingObjectives = remainingAfterSecondFlag;
        }
        else
        {
            remainingObjectives = remainingBeforeSecondFlag;
        };
        if (0 == remainingObjectives)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m04_3510_sys_03" : Dynamic), ("main_04_01" : Dynamic));
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            if (1 == remainingObjectives)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m04_3510_sys_02" : Dynamic), ("main_04_01" : Dynamic));
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            }
            else
            {
                if (2 == remainingObjectives)
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m04_3510_sys_01" : Dynamic), ("main_04_01" : Dynamic));
                    var hideMessageWindow3:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                    hideMessageWindow3();
                }
                else
                {
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ENV_POS_ON");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-191.67, 21.39, -169.37]), lua.Table.create([-53.63, -110.59, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-193.46, 23.98, -170.04]), lua.Table.create([-53.63, -110.59, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
