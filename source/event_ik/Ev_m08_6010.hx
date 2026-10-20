package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCC34C031F168D281")
@:expose("CCC34C031F168D281")
class Ev_m08_6010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_PYU:Dynamic;

    @:abiSlot(11)
    public var CHR_DEU:Dynamic;

    @:abiSlot(12)
    public var CHR_AZ:Dynamic;

    @:abiSlot(13)
    public var POKE_HURA:Dynamic;

    public function new()
    {
        this.POKE_HURA = "dyn_hura";
        this.CHR_AZ = "dyn_az";
        this.CHR_DEU = "dyn_deu";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_rival_m", "npc_main_friend_m", "npc_main_friend_f", "npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.ExitAnimationPictureUI();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([-654.72, 24.7, -864.92]), -14.74, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([-656.41, 24.7, -864.65]), 31.18, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([-656.89, 24.7, -864.16]), 47.86, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_AZ, lua.Table.create([-655.23, 24.7, -862.48]), 28.63, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_HURA, lua.Table.create([-654.25, 26.7, -862.81]), 24.09, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1(this.CHR_AZ, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_AZ, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "normal", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -655.19, 24.71, -864.54, -1.15);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetupAnimationPictureUI();
        main.event.ik.command.IkScriptCommand.WaitLoadingAnimationPictureUI();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-655.27, 26.47, -863.88]), lua.Table.create([16.25, -156.33, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-655.42, 26.37, -864.22]), lua.Table.create([16.25, -156.33, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.CHR_PLY, "head");
        var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_AZ, this.CHR_PLY);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.54, 25.76, -866.49]), lua.Table.create([6.5, -158.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.POKE_HURA, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_05", "main_08_01", this.CHR_AZ);
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_6010_select_03", "msg_Ev_m08_6010_select_04"]), 0, false, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-655.29, 26.71, -864.07]), lua.Table.create([5.96, -163.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_AZ, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T10000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_EXC_BGM_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_06", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_07", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_08", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_61", "main_08_01", this.CHR_AZ, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[13], "head");
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[13], scenario[12], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_09", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_10", "main_08_01", this.CHR_AZ, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[8], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_11", "main_08_01", this.CHR_AZ, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[12]);
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[12], 19);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T1000");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0, true);
        main.event.ik.command.IkScriptCommand.ShowAnimationPictureUI(0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0, true);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_12", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_52", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.HideAnimationPictureUI(0);
        main.event.ik.command.IkScriptCommand.ShowAnimationPictureUI(1);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -656.76, 24.7, -866.39, -13.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_AZ, -658.93, 24.7, -865.01, 87.99);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -655.89, 24.71, -864.01, 32.14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, -656.04, 24.7, -865.1, -82.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -656.67, 24.7, -863.49, 48.76);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_HURA, -659.81, 25.99, -866.22, 70.92);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_AZ, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_RIV, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_AZ, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_RIV, 70);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_53", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.77, 26.14, -864.73]), lua.Table.create([-5.53, 75.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideAnimationPictureUI(1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_DEU);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1000");
        this.TimeWait(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_13", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_14", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_HURA, 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_15", "main_08_01");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.67, 25.85, -864.59]), lua.Table.create([11.37, -156.07, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-656.87, 25.76, -865.03]), lua.Table.create([11.37, -156.07, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_DEU, -162.06);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, -123.61);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_16", "main_08_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -656.16, 24.71, -864.2, -123.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -657.1, 24.7, -863.54, -160.09);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-654.52, 26.12, -864.15]), lua.Table.create([-5.53, 75.49, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_AZ, 72, null, 2.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_17", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_18", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0, true);
        main.event.ik.command.IkScriptCommand.HideAnimationPictureUI(1);
        main.event.ik.command.IkScriptCommand.ShowAnimationPictureUI(2);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0, true);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_54", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_55", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.HideAnimationPictureUI(2);
        main.event.ik.command.IkScriptCommand.ShowAnimationPictureUI(3);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        this.TimeWait(2.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_56", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_57", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_58", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_59", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, -655.92, 24.7, -865.29, -82.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -656.65, 24.7, -864.23, -111.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -655.95, 24.71, -864.53, -123.61);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideAnimationPictureUI(3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.81, 26.09, -866.08]), lua.Table.create([-6.81, -105.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "sad", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "sad2", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "sad2", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "sad2", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1000");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_60", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_19", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_PYU, 32, null, 2.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_20", "main_08_01", this.CHR_PYU, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[8], "normal", scenario[8]);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.99, 25.94, -864.58]), lua.Table.create([0.0, 69.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "sad", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_21", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_22", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_23", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.81, 26.09, -866.08]), lua.Table.create([-6.81, -105.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "sad", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "sad2", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "sad2", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_24", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_25", "main_08_01", this.CHR_PYU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 19);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[12], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_26", "main_08_01", this.CHR_DEU, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "serious", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[8], "normal", scenario[8]);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "serious", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "serious", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_DEU, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_27", "main_08_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.99, 25.94, -864.58]), lua.Table.create([0.0, 69.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_28", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_AZ, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_29", "main_08_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.81, 26.09, -866.08]), lua.Table.create([-6.81, -105.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 178);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_RIV, this.CHR_AZ);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "confident", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_30", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -655.71, 24.71, -864.65, -159.54);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -656.38, 24.7, -865.67, 10.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, -655.77, 24.7, -865.68, -11.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, -655.15, 24.7, -863.75, -146.52);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.23, 25.94, -863.78]), lua.Table.create([0.0, -15.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.CHR_RIV, "head");
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_RIV, "head");
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_31", "main_08_01", this.CHR_RIV, (null : Dynamic), null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[8], "head");
            return null;
        }));
        var menuLabels:Dynamic = (["msg_Ev_m08_6010_select_05", "msg_Ev_m08_6010_select_06"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, (0 : Dynamic), (false : Dynamic), (false : Dynamic));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == menuSelection)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 18);
            var cHR_RIV:Dynamic = this.CHR_RIV;
            main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_m08_6010_talk_36" : Dynamic), ("main_08_01" : Dynamic), cHR_RIV);
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            if (1 == menuSelection)
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "sad2", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_32", "main_08_01", this.CHR_RIV);
                untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_6010_select_07", "msg_Ev_m08_6010_select_08"]), 0, false, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "smile", "npc_main_rival_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 18);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_33", "main_08_01", this.CHR_RIV);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 2);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_6010_talk_34", "main_08_01", this.CHR_RIV);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
                var cHR_RIV2:Dynamic = this.CHR_RIV;
                main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_m08_6010_talk_35" : Dynamic), ("main_08_01" : Dynamic), cHR_RIV2);
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            }
            else
            {
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, (20 : Dynamic));
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ("0" == getEventModeResult)
        {
            var cHR_RIV3:Dynamic = this.CHR_RIV;
            main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_m08_6010_talk_37" : Dynamic), ("main_08_01" : Dynamic), cHR_RIV3);
            var hideMessageWindow3:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow3();
        }
        else
        {
            var cHR_RIV4:Dynamic = this.CHR_RIV;
            main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_m08_6010_talk_38" : Dynamic), ("main_08_01" : Dynamic), cHR_RIV4);
            var hideMessageWindow4:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow4();
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.99, 25.94, -864.58]), lua.Table.create([0.0, 69.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-657.26, 25.98, -864.68]), lua.Table.create([0.0, 69.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_6010_talk_39", "main_08_01", this.CHR_AZ, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[12], "rejoice_small", "npc_main_hotel_manager");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[12]);
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[12], 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[12], "rejoice_small_mc", "npc_main_hotel_manager");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ExitAnimationPictureUI();
    }
}
