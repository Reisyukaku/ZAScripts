package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCADD22B65DBBD937")
@:expose("CCADD22B65DBBD937")
class Ev_m03_0033 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    public function new()
    {
        this.CHR_RIV = "npc_main_rival_m";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var entryMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("0" == entryMode)))
        {
            main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T2000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M4DB_T2000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_M12DB_T1000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -662.14, 0.01, -856.02, 15.9);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -662.5, 0.0, -853.05, 80.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, -175.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.81, 1.31, -856.97]), lua.Table.create([-5.48, -140.92, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            TimeWait(0.5);
        }
        else if ((("1" == entryMode)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -662.14, 0.01, -856.02, 15.9);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -662.5, 0.0, -853.05, 80.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-663.81, 1.31, -856.97]), lua.Table.create([-5.48, -140.92, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, -175.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032a_talk_05", "main_03_01", this.CHR_RIV);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 74);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 74);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "rejoice_small_mc", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032a_talk_06", "main_03_01", this.CHR_RIV);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        };
        untyped m_eventScriptParam.f73EE8FEC();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 32);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0033_talk_01", "main_03_01", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "rejoice_big_mc", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0033_talk_02", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0033_talk_03", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, 80.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0033_talk_04", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
