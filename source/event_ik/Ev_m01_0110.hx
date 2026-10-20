package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C64160273C47F080D")
@:expose("C64160273C47F080D")
class Ev_m01_0110 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    public function new()
    {
        untyped (this)[10] = "npc_main01_0003";
        untyped (this)[9] = "npc_main_rival_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", this.slot10]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", this.CHR_RIV);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "anger", this.slot10);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.CHR_PLY, "head");
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -711.84, 0.05, -863.27, 135.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -708.91, 0, -865.76, -50.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -722.82, 0.04, -855.02, 135.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 29);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-710.92, 1.53, -863.16]), lua.Table.create([-8.15, -20.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-711.09, 1.53, -862.71]), lua.Table.create([-8.15, -20.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -710.84, 0.05, -864.15, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0110_talk_01", "main_01_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -711.62, 0.03, -862.97, 148.76);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, 148.76);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-709.81, 1.35, -864.86]), lua.Table.create([-1.09, 126.23, -0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-709.71, 1.35, -864.72]), lua.Table.create([-1.09, 126.23, -0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0110_talk_02", "main_01_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 491);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "anger", this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, -26.18);
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-710.92, 1.48, -863.58]), lua.Table.create([-1.09, 126.23, -0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0110_talk_10", "main_01_01", this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-708.03, 1.43, -865.87]), lua.Table.create([-6.02, 111.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0110_talk_03", "main_01_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-710.39, 1.4, -864.07]), lua.Table.create([-1.09, 126.23, -0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-710.92, 1.48, -863.58]), lua.Table.create([-1.09, 126.23, -0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.5, 5.0, 10, 5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m01_0110_talk_04", "main_01_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise2", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-711.22, 1.51, -863.22]), lua.Table.create([-7.47, -29.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "irritation", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0110_talk_05", "main_01_01", this.CHR_RIV);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "smile", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0110_talk_07", "main_01_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "battle", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-711.34, 1.41, -863.29]), lua.Table.create([-7.47, -29.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 203);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-710.03, 1.46, -864.36]), lua.Table.create([-3.0, 116.46, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0110_talk_06", "main_01_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RIV);
    }
}
