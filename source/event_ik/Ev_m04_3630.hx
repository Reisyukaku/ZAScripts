package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAD3FE11E8FA323C4")
@:expose("CAD3FE11E8FA323C4")
class Ev_m04_3630 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_PYU:Dynamic;

    @:abiSlot(11)
    public var CHR_DEU:Dynamic;

    public function new()
    {
        this.CHR_DEU = "dyn_deu";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_m", "npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m04_3630 = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([(-665.63), 0.04, (-885.22)]), 16.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([(-664.95), 0.04, (-886.0)]), 19.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([(-664.95), 0.04, (-886.0)]), 19.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-664.18), 0.04, (-877.92), (-150.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-665.5), 0.04, (-883.55), 20.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, (-666.28), 0.01, (-883.03), 29.68);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-664.93), 0.05, (-879.23), 35.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PYU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_PYU, "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, (-664.48), 0.02, (-881.52), 0.5);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_DEU, (-664.97), 0.02, (-880.53), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-661.86), 1.84, (-876.86)]), lua.Table.create([(-8.17), 56.55, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-661.86), 1.44, (-876.86)]), lua.Table.create([(-8.17), 56.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PYU, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3630_talk_01", "main_04_01", this.CHR_PYU);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_IN_LOVE");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_DEU, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-664.2), 1.35, (-878.48)]), lua.Table.create([(-2.72), 32.78, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "rejoice_small", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3630_talk_02", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 19);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_3630_talk_03", "main_04_01", this.CHR_DEU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.CHR_DEU, "normal", "npc_main_friend_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_OTAKU_IN_LOVE_T500");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_ON");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
