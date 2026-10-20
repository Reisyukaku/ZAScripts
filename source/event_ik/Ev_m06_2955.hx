package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDAA8524B214F483")
@:expose("CDDAA8524B214F483")
class Ev_m06_2955 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var CHR_PA_M:Dynamic;

    @:abiSlot(11)
    public var CHR_PA_F:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var slot14:Dynamic;

    @:abiSlot(15)
    public var FLD_NPC_PA_M:Dynamic;

    @:abiSlot(16)
    public var FLD_NPC_PA_F:Dynamic;

    public function new()
    {
        this.FLD_NPC_PA_F = "npc_main06_0004";
        this.FLD_NPC_PA_M = "npc_main06_0003";
        this.slot14 = "npc_pa_member_f_01";
        this.slot13 = "npc_pa_member_m_03";
        this.slot12 = "npc_adult_a_m_03";
        this.CHR_PA_F = "dyn_pa_f";
        this.CHR_PA_M = "dyn_pa_m";
        this.slot9 = "dyn_man";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = [slot12, slot13, slot14];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_M, lua.Table.create([-467.29, 0.23, -398.34]), -5.87, this.slot13);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_F, lua.Table.create([-467.29, 0.23, -398.34]), -5.87, this.slot14);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_M, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_F, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_F, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -467.76, 0.23, -398.76, -160.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_M, -468.41, 0.23, -400.41, 20.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_F, -467.85, 0.23, -401.84, 6.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-465.76, 1.56, -397.57]), lua.Table.create([-5.57, 46.26, 0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T500");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03_SUS");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_PA_M, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2955_talk_01", "main_06_01", this.CHR_PA_M);
        var choices = (["msg_Ev_m06_2955_select_01", "msg_Ev_m06_2955_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_PA_M, 172, null, 1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2955_talk_03", "main_06_01", this.CHR_PA_M);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else if (((1 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_PA_M, 172, null, 0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2955_talk_02", "main_06_01", this.CHR_PA_M);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        };
        untyped this.m_resultParam = selection;
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_M, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_F, true);
    }
}
