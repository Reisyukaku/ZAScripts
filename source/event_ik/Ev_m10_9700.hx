package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C4D9AA21230097875")
@:expose("C4D9AA21230097875")
class Ev_m10_9700 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_F:Dynamic;

    public function new()
    {
        untyped (this)[9] = "dyn_f";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m10_9700 = this;
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_F, lua.Table.create([-657.65, 0.8, -869.66]), 0.0, "npc_main_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -658.02, 0.51, -870.12, 50.88);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_F, -661.72, 0.0, -875.62, 35.65);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.89, 1.97, -870.27]), lua.Table.create([-9.53, 113.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-656.96, 1.97, -870.43]), lua.Table.create([-9.53, 113.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9700_talk_01", "main_10_01", null, null, null, (function():Dynamic
        {
            scenario.TimeWait(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.CHR_PLY, "surprise2", scenario.CHR_PLY);
            scenario.TimeWait(0.5);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_F, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_F);
        this.TimeWait(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_F, -659.88, 0.0, -873.21, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-657.16, 1.32, -869.64]), lua.Table.create([-9.69, 49.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-657.16, 1.99, -869.64]), lua.Table.create([-9.69, 49.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_08");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9700_talk_02", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_F, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.22, 1.73, -872.43]), lua.Table.create([-3.93, 45.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -658.02, 0.44, -870.27, -141.62);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_F);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9700_talk_03", "main_10_01", this.CHR_F);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "anger_mc", "npc_main_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9700_talk_08", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "normal", "npc_main_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_F, lua.Table.create([-659.26, 3.0, -872.42]));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-660.11, 1.65, -874.96]), lua.Table.create([-4.36, -164.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([-659.77, 1.65, -875.04]), lua.Table.create([-4.36, -172.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9700_talk_04", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9700_talk_05", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "normal", "npc_main_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.22, 1.73, -872.43]), lua.Table.create([-3.93, 45.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_F);
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "serious", "npc_main_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9700_talk_06", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_F, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-657.03, 1.94, -870.07]), lua.Table.create([-9.53, 54.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-656.81, 1.93, -869.78]), lua.Table.create([-9.53, 54.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9700_talk_07", "main_10_01", this.CHR_F, null, null, (function():Dynamic
        {
            scenario.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.CHR_F, 2);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_10_05");
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -662.6, 0.01, -876.11, -144.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
