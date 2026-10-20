package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5C524A999F01E7D5")
@:expose("C5C524A999F01E7D5")
class Ev_m02_0050 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    public function new()
    {
        untyped (this)[9] = "npc_main_rival_m";
        untyped (this)[8] = "Player";
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_BASE_STREET_BACK");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -684.81, 0.01, -907.4, -152.65);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -685.68, 0.0, -910.98, -150.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "sad", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-683.9, 1.51, -907.18]), lua.Table.create([-8.54, 36.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -685.49, 0.01, -908.45, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0050_talk_01", "main_02_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_RIV, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0050_talk_02", "main_02_01", this.CHR_RIV);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_0050_select_01", "msg_Ev_m02_0050_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, -150.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-685.86, 0.9, -911.08]), lua.Table.create([-2.25, 36.94, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0050_talk_03", "main_02_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0050_talk_04", "main_02_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-683.9, 1.51, -907.18]), lua.Table.create([-8.54, 36.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, -50.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0050_talk_07", "main_02_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, -687.82, 0.0, -906.7, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, -70.0);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
