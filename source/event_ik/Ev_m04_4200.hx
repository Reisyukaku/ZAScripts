package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAA8963482B184B08")
@:expose("CAA8963482B184B08")
class Ev_m04_4200 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_KANA:Dynamic;

    @:abiSlot(10)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(11)
    public var CHR_OTAKU:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    public function new()
    {
        this.slot13 = "main_sibirudon";
        this.slot12 = "dyn_sibi";
        this.CHR_OTAKU = "npc_main04_0004";
        this.CHR_MUKU = "npc_main_ju_leader";
        this.CHR_KANA = "npc_main_holo_ga_boss";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_holo_ga_boss", "npc_main_ju_leader", "npc_main04_0004", "npc_main_041100_0003", "npc_main_041100_0004", "npc_main_041100_0005", "npc_main_041100_0006", "npc_main_041100_0007", "npc_main_041100_0008", "npc_main_041100_0009", "npc_main_041100_0011", "npc_main_041100_0012", "npc_main_041100_0013"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_OTAKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_OTAKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -68.85, 0.15, -444.26, 168.46);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, -72.86, 1.43, -446.13, 71.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, -68.41, 0.14, -445.3, -23.55);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-66.33, 0.73, -443.95]), lua.Table.create([10.78, 70.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03_LOW");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_OTAKU, 32);
        var hasTalked:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_4200");
        if (!lua.abi.Host.truthy(hasTalked))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4200_talk_01", "main_04_01", CHR_OTAKU);
        }
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4200_talk_02", "main_04_01", CHR_OTAKU);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m04_4200_select_01", "msg_Ev_m04_4200_select_02"], 0, true, false);
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4200_talk_04", "main_04_01", this.CHR_OTAKU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_SILENCE");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_OTAKU, 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4200_talk_03", "main_04_01", this.CHR_OTAKU);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        untyped this.m_resultParam = selection;
    }
}
