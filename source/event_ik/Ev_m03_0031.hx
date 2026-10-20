package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCADD24B65DBBDC9D")
@:expose("CCADD24B65DBBDC9D")
class Ev_m03_0031 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    public function new()
    {
        this.CHR_RIV = "npc_main_rival_m";
        this.CHR_PLY = "Player";
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M4DB_T1500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-662.14), 0.01, (-856.02), 15.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-662.15), 0.03, (-853.34), (-175.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-663.81), 1.31, (-856.97)]), lua.Table.create([(-5.48), (-140.92), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032_talk_01", "main_03_01", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_0032_select_01", "msg_Ev_m03_0032_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_RIV, lua.Table.create([(-659.97), 3.0, (-852.46)]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-662.71), 1.19, (-854.26)]), lua.Table.create([7.16, (-131.93), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032_talk_06", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032_talk_07", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-663.81), 1.31, (-856.97)]), lua.Table.create([(-5.48), (-140.92), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0032_talk_08", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
