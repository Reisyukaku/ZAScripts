package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAB307D6499A55E29")
@:expose("CAB307D6499A55E29")
class Ev_m08_0100 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_MAS:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_PLY:Dynamic;

    public function new()
    {
        this.CHR_PLY = "npc_main_secretary";
        this.CHR_RIV = "dyn_riv";
        this.CHR_MAS = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([(-270.41), 0.35, (-224.93)]), 128.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, (-259.66), 0.75, (-234.11), 126.55);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-259.09), 0.79, (-233.3), 126.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-256.79), 1.34, (-235.58), (-54.43));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-258.86), 2.68, (-234.11)]), lua.Table.create([(-1.82), (-53.56), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-260.21), 2.53, (-233.11)]), lua.Table.create([(-1.82), (-53.57), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MAS, (-258.46), 1.35, (-235.04), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, (-257.91), 1.35, (-234.17), 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 1);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_PLY, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0100_talk_01", "main_08_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0100_talk_02", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_PLY, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0100_talk_03", "main_08_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0100_talk_04", "main_08_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 120.0);
        this.TimeWait(1.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_QUASAR_OP");
    }
}
