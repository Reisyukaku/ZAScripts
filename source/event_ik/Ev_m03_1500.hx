package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C962978AFF7675027")
@:expose("C962978AFF7675027")
class Ev_m03_1500 extends BaseMainScenario
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
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RANK_X, lua.Table.create([-621.63, 0.28, -255.0]), 134.0, "npc_trainer_rankX_rankup");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -620.45, 0.26, -256.58, -31.69);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RANK_X, -621.63, 0.28, -255.0, 134.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RANK_X, 133.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "serious", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RANK_X, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RANK_X, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-620.98, 1.71, -255.88]), lua.Table.create([-11.09, 143.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-620.98, 1.38, -255.88]), lua.Table.create([-11.09, 143.25, 0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RANK_X, "rejoice_small_mc", "npc_trainer_rankX_rankup");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m03_1500");
        if (((!lua.abi.Host.truthy(flagValue))))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RANK_X, 18);
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHRRANKX:Dynamic = this.CHR_RANK_X;
            showMessage(0, "msg_Ev_m03_1500_talk_01", "main_03_01", cHRRANKX);
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1500_talk_02", "main_03_01", this.CHR_RANK_X);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_1500_select_01", "msg_Ev_m03_1500_select_02"]), 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -619.95, 0.26, -254.36, -117.54);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RANK_X, -622.46, 0.25, -256.24, 53.01);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-618.43, 1.34, -259.21]), lua.Table.create([-2.87, 143.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-619.03, 1.29, -258.41]), lua.Table.create([-2.87, 143.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -621.04, 0.26, -255.18, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RANK_X, -621.5, 0.25, -255.52, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-620.63, 1.53, -256.27]), lua.Table.create([-2.87, 143.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence(this.CHR_PLY, this.CHR_RANK_X);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-621.66, 1.03, -256.2]), lua.Table.create([22.6, -158.04, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1500_talk_03", "main_03_01", this.CHR_RANK_X);
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_1500_select_03", "msg_Ev_m03_1500_select_04", "msg_Ev_m03_1500_select_05"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-620.37, 1.72, -255.42]), lua.Table.create([-27.38, 95.92, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cHRRANKX2:Dynamic = this.CHR_RANK_X;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1500_talk_06", "main_03_01", cHRRANKX2);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RANK_X, "rejoice_small", "npc_trainer_rankX_rankup");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            var startLoadingFadeAnimationScene:Dynamic = untyped main.event.ik.command.IkScriptCommand.S5947B527097768D0;
            startLoadingFadeAnimationScene(4);
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RANK_X, 19);
            var cHRRANKX3:Dynamic = this.CHR_RANK_X;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1500_talk_04", "main_03_01", cHRRANKX3);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            var fadeOut:Dynamic = untyped main.event.ik.command.IkScriptCommand.Fade_Out;
            fadeOut("transition_fade_inout", 0.1, true);
        };
        untyped this.m_resultParam = selection;
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
    }
}
