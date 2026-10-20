package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCECF901AA2FC685D")
@:expose("CCECF901AA2FC685D")
class Ev_m07_4840 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_HAL:Dynamic;

    @:abiSlot(11)
    public var CHR_PYU:Dynamic;

    @:abiSlot(12)
    public var CHR_DEU:Dynamic;

    public function new()
    {
        this.CHR_DEU = "dyn_deu";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_HAL = "dyn_hal";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_leader", "npc_main_friend_m", "npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([-661.44, 0.01, -874.73]), 0.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_HAL, lua.Table.create([-661.44, 0.01, -874.73]), 0.0, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([-661.44, 0.01, -874.73]), 0.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([-661.44, 0.01, -874.73]), 0.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_HAL, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -662.23, 0.01, -875.85, -135.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -661.07, 0.01, -875.67, -148.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, -663.55, 0.03, -877.35, 38.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, -661.21, 0.01, -874.72, -140.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -662.3, 0.01, -873.88, -152.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-661.1, 1.35, -875.64]), lua.Table.create([-1.45, 67.42, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "anger", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_HAL, 491);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        var cHRHAL:Dynamic = this.CHR_HAL;
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_01", "main_07_01", cHRHAL);
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_YukariZone_Heal");
        if (((!lua.abi.Host.truthy(flagValue))))
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHRHAL2:Dynamic = this.CHR_HAL;
            showMessage(0, "msg_Ev_m07_4840_talk_30", "main_07_01", cHRHAL2);
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_02", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.74, 1.67, -880.38]), lua.Table.create([-9.88, -163.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_03", "main_07_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 172);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.68, 1.32, -877.37]), lua.Table.create([-4.65, -153.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_04", "main_07_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.63, 1.61, -876.54]), lua.Table.create([-4.9, 48.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "anger", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_05", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -654.91, 0.01, -875.8, 55.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -653.52, 0.01, -876.52, 16.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, -653.24, 0.01, -877.4, 10.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -655.8, 0.0, -875.67, 67.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, -653.04, 0.03, -874.57, -148.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 70);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-652.74, 1.34, -876.98]), lua.Table.create([-14.62, 178.65, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_06", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-651.88, 0.98, -873.01]), lua.Table.create([-0.23, 36.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 33, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_07", "main_07_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-652.98, 1.21, -875.24]), lua.Table.create([-9.49, -170.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_RIV, "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_WILD_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_4840_talk_08", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "battle", "npc_main_pa_leader");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-653.31, 2.08, -878.54]), lua.Table.create([-19.91, 173.43, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-653.34, 2.23, -879.24]), lua.Table.create([-19.91, 173.43, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_09", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-651.73, 1.01, -874.24]), lua.Table.create([-0.03, 76.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_10", "main_07_01", this.CHR_HAL);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4840_select_01", "msg_Ev_m07_4840_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-653.25, 1.02, -875.36]), lua.Table.create([-0.0, -167.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_11", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "sad", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_12", "main_07_01", this.CHR_HAL);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "sad2", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_13", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-653.35, 1.2, -874.81]), lua.Table.create([-11.66, -137.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_14", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_07_01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-653.79, 1.46, -874.16]), lua.Table.create([-7.51, 41.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_ENTRY_ZA");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4840_talk_15", "main_07_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4840_talk_16", "main_07_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4840_talk_17", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        main.event.ik.command.IkScriptCommand.OpenAnyMenu(6);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4840_talk_18", "main_07_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4840_talk_19", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, -653.04, 0.014, -874.57, -148.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-651.65, 1.08, -875.27]), lua.Table.create([-0.55, 92.15, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_HAL, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-655.38, 1.29, -876.98]), lua.Table.create([-0.55, -148.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "serious", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_20", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_21", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_HAL, -656.14, 0.01, -878.92, 0.5);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "normal", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, -665.29, 0.01, -879.7, -140.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -665.12, 0.03, -877.92, -151.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -663.19, 0.02, -878.53, -134.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, -662.39, 0.02, -878.08, -139.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -664.57, 0.03, -876.68, -145.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-658.76, 3.14, -874.06]), lua.Table.create([-8.86, 54.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-658.76, 2.25, -874.06]), lua.Table.create([-8.86, 54.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-666.41, 0.34, -882.27]), lua.Table.create([9.88, -153.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-666.41, 0.76, -882.27]), lua.Table.create([9.88, -153.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 333);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_HAL, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_HAL, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_HAL, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_HAL, "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M07_4840_GATE_MBSCZONE_POSE");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_4840_talk_28", "main_07_01", this.CHR_HAL, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_GATE_MBSCZONE_CANCEL");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-658.76, 2.25, -874.06]), lua.Table.create([-8.86, 54.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PYU);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_DEU);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -665.12, 0.03, -877.92, -174.55);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.44, 1.28, -877.99]), lua.Table.create([3.15, 47.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_HAL, this.CHR_PLY);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-664.08, 1.28, -877.3]), lua.Table.create([3.15, 47.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_HAL, -665.29, 0.01, -879.06, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_HAL, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_22", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-665.31, 1.39, -877.96]), lua.Table.create([6.72, 6.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -664.67, 0.03, -876.1, -145.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -665.05, 0.03, -877.64, -159.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 30);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_23", "main_07_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-666.01, 1.89, -878.92]), lua.Table.create([-22.83, -127.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_HAL);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-664.08, 1.28, -877.3]), lua.Table.create([3.15, 47.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "rejoice_small", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "normal", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_HAL, -672.12, 0.01, -888.96, 0.5);
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-666.8, 1.47, -878.22]), lua.Table.create([-6.54, -89.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-666.8, 1.47, -877.97]), lua.Table.create([-6.54, -89.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_24", "main_07_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "smile", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4840_talk_25", "main_07_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, -665.83, 0.02, -881.41, 2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_07_05");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
    }
}
