package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE75E0BAED9E0DB8B")
@:expose("CE75E0BAED9E0DB8B")
class Ev_m09_3140 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PYU:Dynamic;

    @:abiSlot(9)
    public var CHR_MAS:Dynamic;

    @:abiSlot(10)
    public var CHR_DEU:Dynamic;

    @:abiSlot(11)
    public var CHR_PLY:Dynamic;

    public function new()
    {
        this.CHR_PLY = "dyn_mas";
        this.CHR_DEU = "dyn_pyu";
        this.CHR_MAS = "dyn_deu";
        this.CHR_PYU = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m", "npc_main_friend_f", "npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", this.CHR_PYU);
        var effectKey:Dynamic = "tower_charge_01";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/tower_charge/tower_charge_01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, (-414.75), 36.3, (-429.6));
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey, 0.0, (-135), 0.0);
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([(-414.73), 36.09, (-422.98)]), 0.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MAS, lua.Table.create([(-414.73), 36.09, (-422.98)]), 0.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PLY, lua.Table.create([(-414.73), 36.09, (-422.98)]), 0.0, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-414.91), 36.09, (-429.43), (-134.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, (-413.57), 36.09, (-430.27), (-121.56));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, (-413.73), 36.09, (-429.56), (-121.56));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-414.95), 36.09, (-428.58), (-145.06));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraPosition:Dynamic = lua.Table.create([(-463.83), 100.67, (-469.32)]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PYU, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_DEU, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MAS, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, cameraPosition);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-417.1), 37.35, (-430.0)]), lua.Table.create([(-1.64), (-104.86), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.OverrideAreaLight(0, "env_t1_tower_bousou3", 0.0);
        main.event.ik.command.IkScriptCommand.OverrideAreaLight(1, "env_t1_tower_bousou3_pointlight", 0.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3140_EF_ADD");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "serious", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3140_talk_04", "main_09_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MAS, "sad2", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_3140_talk_05", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3140_talk_06", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "serious", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_3140_talk_07", "main_09_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.75), 37.48, (-429.64)]), lua.Table.create([(-1.64), (-104.86), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-415.64), 37.49, (-429.61)]), lua.Table.create([(-1.64), (-104.86), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.AddTagCommon(this.CHR_PYU, "IshikoroObject");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_G_KNIGHT");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PYU);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PYU, lua.Table.create([(-414.89), 36.92, (-429.26)]));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m09_3140_talk_01", "main_09_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var cameraPosition2:Dynamic = lua.Table.create([(-414.91), 37.5, (-429.65)]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PYU);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "serious", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PYU, 201);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.S1B35E8E6D3B2A662(this.CHR_PYU, true, false, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos_Eye(this.CHR_PYU, lua.Table.create([0.0, 0.0, 0.0]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.96), 38.01, (-429.78)]), lua.Table.create([(-39.46), (-97.31), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-415.78), 37.86, (-429.76)]), lua.Table.create([(-39.46), (-97.31), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.09), 36.6, (-430.05)]), lua.Table.create([27.37, (-113.03), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MAS, "surprise_mc", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MAS, cameraPosition2);
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "surprise_mc", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_DEU, cameraPosition2);
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise_mc", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, cameraPosition2);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m09_3140_talk_02", "main_09_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenLastBattleBag();
        main.event.ik.command.IkScriptCommand.RemoveTagCommon(this.CHR_PYU, "IshikoroObject");
        this.TimeWait(2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_EV_M09_3140_EF_ADD");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_G_KNIGHT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_UI_BAG_LAST_STONE_LP");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.RemoveEffect(effectKey);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ResetOverrideAreaLight(0.0);
    }
}
