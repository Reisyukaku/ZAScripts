package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCADD1BB65DBBCD52")
@:expose("CCADD1BB65DBBCD52")
class Ev_m03_0038 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_RIV, lua.Table.create([(-646.65), 13.99, (-755.65)]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-646.18), 0.01, (-743.59), (-179.7));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lua.Table.create([(-641.43), 15.52, (-762.85)]));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lua.Table.create([(-648.53), 15.57, (-758.04)]));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-648.03), 11.04, (-752.84)]), lua.Table.create([(-46.68), (-169.25), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-647.08), 5.76, (-748.05)]), lua.Table.create([(-46.67), (-169.25), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-646.65), 13.99, (-755.65), (-1.31));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0038_talk_01", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-647.04), 16.19, (-756.37)]), lua.Table.create([(-49.53), (-175.48), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_0038_select_01", "msg_Ev_m03_0038_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0038_talk_02", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
