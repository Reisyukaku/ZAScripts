package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C9625F2AFF764369E")
@:expose("C9625F2AFF764369E")
class Ev_m03_1510 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RANK_X:Dynamic;

    public function new()
    {
        this.CHR_RANK_X = "dyn_rank_x";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_trainer_rankX_rankup"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RANK_X, lua.Table.create([(-621.63), 0.28, (-255.0)]), 134.0, "npc_trainer_rankX_rankup");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RANK_X, "sad", "npc_trainer_rankX_rankup");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RANK_X, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RANK_X, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-620.45), 0.26, (-256.58), (-31.69));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RANK_X, (-621.63), 0.28, (-255.0), 134.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RANK_X, 133.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RANK_X);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-620.69), 2.34, (-258.48)]), lua.Table.create([(-15.28), 177.48, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-620.69), 1.8, (-258.48)]), lua.Table.create([(-15.28), 177.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RANK_X, 22);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1510_talk_01", "main_03_01", this.CHR_RANK_X);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone(this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_RANK_UP");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_1510_sys_02", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_1510_sys_03", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.PlayRankUpSequence(0, "msg_Ev_m03_1510_sys_04", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-620.69), 1.8, (-258.48)]), lua.Table.create([(-15.28), 177.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RANK_X, "head");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RANK_X, "serious", this.CHR_RANK_X);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RANK_X, 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1510_talk_05", "main_03_01", this.CHR_RANK_X);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RANK_X);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RANK_X);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RANK_X, (-621.44), 0.25, (-259.31), 2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-620.37), 1.8, (-258.47)]), lua.Table.create([(-15.28), 177.48, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, (-173.69));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_03_03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-619.94), 1.86, (-257.44)]), lua.Table.create([(-17.09), 151.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PostEvent2DWithEnd("PLAY_SS_ROTOM_CALL");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-620.08), 1.86, (-257.52)]), lua.Table.create([(-17.09), 151.17, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_1510_talk_06", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_ON");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
    }
}
