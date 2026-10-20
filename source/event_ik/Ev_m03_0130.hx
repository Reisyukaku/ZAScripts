package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC1BFFCB658717A6D")
@:expose("CC1BFFCB658717A6D")
class Ev_m03_0130 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_RIV:Dynamic;

    @:abiSlot(9)
    public var CHR_MACHI:Dynamic;

    @:abiSlot(10)
    public var CHR_PLY:Dynamic;

    @:abiSlot(11)
    public var POKE_DEN:Dynamic;

    public function new()
    {
        this.POKE_DEN = "dyn_den";
        this.CHR_PLY = "npc_main_rival_m";
        this.CHR_MACHI = "npc_main_detective";
        this.CHR_RIV = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_MACHI, 1);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_DEN, lua.Table.create([(-444.53), 0.22, (-169.36)]), (-166.0), 181, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-444.53), 0.22, (-169.36), 12.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-444.53), 0.25, (-167.87), 173.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-443.13), 0.25, (-168.28), (-128.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_DEN, (-443.25), 0.21, (-169.2), (-28.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_DEN, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-446.12), 1.77, (-169.75)]), lua.Table.create([(-10.11), (-119.42), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_20", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-444.94), 1.72, (-168.79)]), lua.Table.create([(-6.09), (-152.48), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "smile", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_22", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 491);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "confident", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_01", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var lookTarget:Dynamic = lua.Table.create([(-442.76), 1.7, (-167.78)]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MACHI, lookTarget);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 75);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_02", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-446.33), 1.78, (-169.3)]), lua.Table.create([(-7.58), (-104.67), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-443.75), 0.21, (-167.34), (-152.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-444.96), 0.22, (-169.48), 40.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-442.24), 0.21, (-168.97), (-76.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_DEN, (-442.76), 0.21, (-167.78), (-136.15));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lookTarget);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_DEN, true);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_DEN, 17);
        this.TimeWait(3.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_RIV, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_03", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_04", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_05", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-444.46), 1.75, (-167.55)]), lua.Table.create([(-5.36), (-96.99), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_0130_talk_06", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(8);
    }
}
