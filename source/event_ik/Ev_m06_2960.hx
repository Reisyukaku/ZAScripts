package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDB49A24B21D6CB7")
@:expose("CDDB49A24B21D6CB7")
class Ev_m06_2960 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_PA_M:Dynamic;

    @:abiSlot(10)
    public var CHR_PA_F:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var FLD_NPC_PA_M:Dynamic;

    @:abiSlot(14)
    public var FLD_NPC_PA_F:Dynamic;

    public function new()
    {
        this.FLD_NPC_PA_F = "npc_main06_0004";
        this.FLD_NPC_PA_M = "npc_main06_0003";
        this.slot12 = "npc_pa_member_f_01";
        this.slot11 = "npc_pa_member_m_03";
        this.CHR_PA_F = "dyn_pa_f";
        this.CHR_PA_M = "dyn_pa_m";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = [slot11, slot12];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m06_2960 = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_M, lua.Table.create([(-467.29), 0.23, (-398.34)]), (-5.87), this.slot11);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_F, lua.Table.create([(-467.29), 0.23, (-398.34)]), (-5.87), this.slot12);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_M, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_F, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-467.76), 0.23, (-398.76), (-160.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_M, (-468.41), 0.23, (-400.41), 20.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_F, (-467.85), 0.23, (-401.84), 6.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-465.76), 1.56, (-397.57)]), lua.Table.create([(-5.57), 46.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2960_talk_01", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-465.76), 1.56, (-397.57)]), lua.Table.create([(-5.57), 39.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2960_talk_02", "main_06_01", this.CHR_PA_F, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(scenario.CHR_PA_F, (-467.41), 0.23, (-400.17), 0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PA_F, scenario.CHR_PLY, "head");
            scenario.TimeWait( 0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PA_M, scenario.CHR_PA_F, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PLY, scenario.CHR_PA_F, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_F, 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PA_F, "rejoice_big_mc", this.slot12);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2960_talk_05", "main_06_01", this.CHR_PA_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_M, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_F, true);
    }
}
