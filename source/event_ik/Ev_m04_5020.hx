package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6FB939512702AE3D")
@:expose("C6FB939512702AE3D")
class Ev_m04_5020 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_TARA:Dynamic;

    @:abiSlot(10)
    public var CHR_HOLO:Dynamic;

    public function new()
    {
        untyped (this)[10] = "dyn_holo";
        untyped (this)[9] = "dyn_tara";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ga_leader", "npc_main_holo_ga_boss"]);
        return null;
    }
    @:hashAbi("FBDD58087485296DE")
    public function k_HoloEffect(?OBJ_NAME:Dynamic, ?visibility:Dynamic):Dynamic
    {
        var effectKey:String = ("holo_disapp_chara02_" + Std.string(OBJ_NAME));
        if (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey))) {
            main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara02", effectKey);
            this.Await(function():Dynamic {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
            });
        };
        var position:lua.Table<Int, Float> = (cast main.event.ik.command.IkScriptCommand.FObj_Get_Pos(OBJ_NAME));
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle(OBJ_NAME);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, (cast position)[1], ((cast position)[2] + 1.3), (cast position)[3]);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey, 0, angle, 0);
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(OBJ_NAME, visibility);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_TARA, lua.Table.create([15.75, 0.03, -7.04]), -24.358, "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_HOLO, lua.Table.create([15.75, 0.03, -7.04]), -24.358, "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ga_leader", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_HOLO, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 9.65, 0.01, -8.44, 90.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, 11.86, 0.0, -8.3, -90.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HOLO, 12.02, 0.0, -9.4, -64.86);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HOLO, 12.02, 0.0, -9.05, -64.86);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_HOLO, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.18, 1.65, -6.07]), lua.Table.create([0.23, -44.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([8.18, 1.29, -6.07]), lua.Table.create([-8.09, -44.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_TARA, 32, null, 4.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_01", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.33, 1.12, -7.4]), lua.Table.create([-7.08, -51.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_02", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "rejoice_small", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_TARA, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_03", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.24, 1.47, -7.39]), lua.Table.create([-11.41, -62.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([7.67, 1.51, -7.12]), lua.Table.create([-11.41, -62.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "normal", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_TARA, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_04", "main_04_01", this.CHR_TARA);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_5020_select_01", "msg_Ev_m04_5020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.67, 0.98, -7.3]), lua.Table.create([-3.62, -58.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([9.58, 0.98, -7.45]), lua.Table.create([-3.62, -58.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect(this.CHR_HOLO, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_05", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HOLO, 195);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_06", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.82, 0.74, -8.34]), lua.Table.create([6.75, -82.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([10.59, 1.08, -8.39]), lua.Table.create([5.07, -82.83, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_07", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([10.59, 1.08, -8.39]), lua.Table.create([5.07, -82.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH04");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_03_B");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 333);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HOLO, 333);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_5020_talk_08", "main_04_01", this.CHR_TARA, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_HOLO);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.1, 1.18, -4.08]), lua.Table.create([-7.83, -36.82, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(12.0, lua.Table.create([6.91, 1.18, -5.3]), lua.Table.create([-7.83, -53.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_IN_LOVE");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_09", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_10", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_11", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_OTAKU_IN_LOVE");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.23, 0.98, -7.61]), lua.Table.create([-1.13, -55.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 23);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_12", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.6, 1.02, -7.54]), lua.Table.create([-1.13, -55.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "rejoice_small_mc", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_TARA, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_14", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "normal", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_TARA, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.23, 0.98, -7.61]), lua.Table.create([-1.13, -55.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_TARA, 128.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([9.92, 0.96, -8.09]), lua.Table.create([-1.13, -55.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_HOLO, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5020_talk_13", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ga_leader", true);
    }
}
