package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF1E56056ECB9DB09")
@:expose("CF1E56056ECB9DB09")
class Ev_m05_3010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(10)
    public var CHR_MUKU:Dynamic;

    public function new()
    {
        this.CHR_MUKU = "dyn_muku";
        this.CHR_SIRO = "npc_main_ju_boss";
        this.CHR_PLY = "Player";
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([(-687.72), 6.11, (-508.76)]), 167.642, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-689.52), 6.13, (-503.66), 162.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, (-687.72), 6.11, (-508.76), (-22.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-682.48), 6.11, (-510.82), (-61.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-688.98), 8.14, (-502.17)]), lua.Table.create([(-4.33), 4.19, (-0.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-688.98), 7.51, (-502.17)]), lua.Table.create([(-4.33), 4.19, (-0.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 22);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m05_3010_talk_01", "main_05_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m05_3010_talk_02", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m05_3010_talk_03", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "sad2", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_SIRO, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-687.97), 8.03, (-507.44)]), lua.Table.create([(-4.33), (-5.96), (-0.0)]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_04", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_3010_talk_05", "main_05_01", this.CHR_SIRO, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 19);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "sad", "npc_main_ju_boss");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_SIRO, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MUKU, (-686.12), 6.11, (-508.8), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-686.75), 7.97, (-508.43)]), lua.Table.create([(-14.98), (-51.69), (-0.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-688.58), 8.02, (-507.55)]), lua.Table.create([(-11.02), (-51.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "sad2", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_3010_talk_06", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_07", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-688.58), 8.02, (-507.55)]), lua.Table.create([(-6.87), (-46.63), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "sad2", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_SIRO, lua.Table.create([(-688.21), 6.12, (-507.25)]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_08", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_SIRO, this.CHR_MUKU);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-685.34), 7.38, (-508.22)]), lua.Table.create([4.87, 66.49, (-0.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-685.34), 7.38, (-508.22)]), lua.Table.create([4.87, 66.49, (-0.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_09", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_10", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-686.12), 6.12, (-508.8), (-88.57));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-688.58), 8.02, (-507.55)]), lua.Table.create([(-11.02), (-51.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MUKU, this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_11", "main_05_01", this.CHR_MUKU);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "normal", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_12", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MUKU, 121.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_13", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-688.51), 8.02, (-507.6)]), lua.Table.create([(-5.84), (-36.82), 0.0]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_SIRO, 21.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_3010_talk_14", "main_05_01", this.CHR_SIRO, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            return null;
        }));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-689.34), 7.55, (-502.41)]), lua.Table.create([(-4.12), (-3.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_SIRO, (-688.95), 6.12, (-505.24), 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MUKU, (-132.0));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-689.34), 7.55, (-502.41)]), lua.Table.create([(-4.12), (-3.12), 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-689.34), 7.4, (-502.41)]), lua.Table.create([4.28, (-3.12), 0.0]), 35.23, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_18", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 74);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 74);
        main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_WAZAMASIN08", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "rejoice_big", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_16", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "smile", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3010_talk_17", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "normal", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_SIRO, (-688.4), 6.12, (-500.7), 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MUKU, (-687.04), 6.12, (-504.29), 0.5);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 48.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-689.55), 7.4, (-502.42)]), lua.Table.create([4.28, (-3.12), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_SUS");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
    }
}
