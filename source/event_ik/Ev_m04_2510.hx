package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C11AC5215AACEEF06")
@:expose("C11AC5215AACEEF06")
class Ev_m04_2510 extends BaseMainScenario
{
    public function new()
    {
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
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ZIGARUDE", lua.Table.create([-623.32, 30.35, -367.49]), -170.67, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-625.98, 28.32, -381.79]), 58.24, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("ZIGARUDE", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-625.02, 28.33, -380.96, 59.89);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_BAKUUDANAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -624.96, 28.33, -380.92, -125.11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("ZIGARUDE", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-623.77, 30.25, -381.07]), lua.Table.create([-9.61, 83.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-623.77, 29.81, -381.07]), lua.Table.create([-9.61, 83.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_01", "main_04_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_02", "main_04_01", "dyn_main_friend_f");
        var partyCount:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0));
        if (1 == partyCount)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_03", "main_04_01", "dyn_main_friend_f");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_04", "main_04_01", "dyn_main_friend_f");
        };
        var greetingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_05", "main_04_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(greetingAction);
        var recoveryAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(recoveryAction);
        var remainingObjectives:Dynamic = 2;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_1510")))
        {
            remainingObjectives = 1;
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_3510")))
        {
            remainingObjectives = untyped remainingObjectives - 1;
        };
        var objectiveCount:Dynamic = remainingObjectives;
        if (0 == objectiveCount)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_07", "main_04_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_04_03");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m04_2510_sys_03", "main_04_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        }
        else if (1 == objectiveCount)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_06", "main_04_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_04_03");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m04_2510_sys_02", "main_04_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        }
        else if (2 == objectiveCount)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2510_talk_06", "main_04_01", "dyn_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_04_03");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m04_2510_sys_01", "main_04_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ENV_POS_ON");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-624.53, 31.43, -367.39]), lua.Table.create([-18.32, -7.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-623.85, 31.45, -366.61]), lua.Table.create([-18.32, -7.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
