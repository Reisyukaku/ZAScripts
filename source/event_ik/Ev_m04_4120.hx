package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC3B36048391DAFDB")
@:expose("CC3B36048391DAFDB")
class Ev_m04_4120 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_OTAKU:Dynamic;

    @:abiSlot(9)
    public var POKE_SIBIRUDON:Dynamic;

    @:abiSlot(10)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(11)
    public var CHR_PLY:Dynamic;

    @:abiSlot(12)
    public var FLD_POKE_SIBIRUDON:Dynamic;

    @:abiSlot(13)
    public var CHR_KANA:Dynamic;

    public function new()
    {
        this.CHR_KANA = "main_sibirudon";
        this.FLD_POKE_SIBIRUDON = "dyn_sibi";
        this.CHR_PLY = "npc_main04_0004";
        this.CHR_MUKU = "npc_main_ju_leader";
        this.POKE_SIBIRUDON = "dyn_main_holo_ga_boss";
        this.CHR_OTAKU = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_leader", this.CHR_KANA, "npc_main04_0004", "npc_main_041100_0003", "npc_main_041100_0004", "npc_main_041100_0005", "npc_main_041100_0006", "npc_main_041100_0007", "npc_main_041100_0008", "npc_main_041100_0009", "npc_main_041100_0011", "npc_main_041100_0012", "npc_main_041100_0013"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_KANA, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.FLD_POKE_SIBIRUDON, lua.Table.create([-72.39, 1.42, -446.49]), 46.84, "npc_poke_holo_sibirudon");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.POKE_SIBIRUDON, lua.Table.create([-72.81, 1.43, -445.57]), 71.96, "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1(this.POKE_SIBIRUDON, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_OTAKU, "normal", this.CHR_OTAKU);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "normal", "npc_main_ju_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.POKE_SIBIRUDON, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0003", "normal", "npc_main_041100_0003");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0004", "normal", "npc_main_041100_0004");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0005", "normal", "npc_main_041100_0005");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0006", "normal", "npc_main_041100_0006");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0007", "normal", "npc_main_041100_0007");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0008", "normal", "npc_main_041100_0008");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0009", "normal", "npc_main_041100_0009");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0010", "normal", "npc_main_041100_0011");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0011", "normal", "npc_main_041100_0011");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0012", "normal", "npc_main_041100_0012");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_041100_0013", "normal", "npc_main_041100_0013");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -69.28, 0.14, -445.18, 82.44);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, -68.89, 0.14, -443.5, -172.28);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0003", -67.7, 0.14, -439.85, -145.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", -67.34, 0.14, -444.78, -98.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", -68.74, 0.14, -440.39, -147.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0006", -65.99, 0.14, -441.34, -127.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", -68.19, 0.14, -446.92, -81.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0008", -65.33, 0.14, -448.38, -66.67);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0009", -65.5, 0.14, -447.25, -90.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0010", -66.61, 0.15, -440.29, -147.97);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0011", -64.84, 0.14, -444.95, -94.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0012", -65.52, 0.14, -442.56, -110.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0013", -64.65, 0.14, -446.12, -90.11);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, -67.39, 0.15, -442.79, -133.66));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_SIBIRUDON, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_SIBIRUDON, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_041100_0012", false);
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", (("ef_line" : Dynamic)));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("ef_line" : Dynamic)));
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-65.63, 1.43, -443.11]), lua.Table.create([-6.79, 56.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_01");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4120_talk_01", "main_04_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-65.38, 1.49, -442.57]), lua.Table.create([-6.79, 60.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_OTAKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0007", this.CHR_OTAKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0004", this.CHR_OTAKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_OTAKU, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4120_talk_22", "main_04_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-70.36, 1.69, -445.96]), lua.Table.create([10.59, 86.5, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara02", (("holo_disapp" : Dynamic)));
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara02", (("holo_disapp2" : Dynamic)));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("holo_disapp" : Dynamic)));
        }));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("holo_disapp2" : Dynamic)));
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition((("holo_disapp" : Dynamic)), -72.81, 2.13, -445.57);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition((("holo_disapp2" : Dynamic)), -72.39, 1.97, -446.49);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation((("holo_disapp" : Dynamic)), 0, 71.96, 0);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation((("holo_disapp2" : Dynamic)), 0, 46.84, 0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_APPEAR");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_M");
        main.event.ik.command.IkScriptCommand.PlayEffect((("holo_disapp" : Dynamic)));
        main.event.ik.command.IkScriptCommand.PlayEffect((("holo_disapp2" : Dynamic)));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_SIBIRUDON, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_SIBIRUDON, true);
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_M04_PV_0604_00_GLAD2", lua.Table.create([-72.39, 1.42, -446.49]));
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 20);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_041100_0007");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_041100_0004");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -68.83, 0.14, -444.99, -106.24);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, -69.36, 0.14, -443.89, -137.52);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, -68.29, 0.15, -444.33, -109.14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", -67.79, 0.14, -445.75, -98.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", -68.42, 0.14, -446.31, -80.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_041100_0012", true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_OTAKU, this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0003", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0004", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0005", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0006", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0007", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0008", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0009", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0010", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0011", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0012", this.POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0013", this.POKE_SIBIRUDON, "head");
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_03_B");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4120_talk_02", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-65.52, 1.28, -446.37]), lua.Table.create([-1.22, 106.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_03", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_small");
        var animationAction4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 18));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.76, 2.75, -445.24]), lua.Table.create([0.0, 72.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4120_talk_04", "main_04_01", this.POKE_SIBIRUDON, true, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-69.56, 1.11, -446.47]), lua.Table.create([0.22, -96.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4120_talk_05", "main_04_01", "npc_main_041100_0007");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-69.58, 1.44, -444.97]), lua.Table.create([-3.46, -165.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "surprise", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4120_talk_28", "main_04_01", this.CHR_MUKU, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-68.8, 1.65, -446.19]), lua.Table.create([-3.46, -113.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4120_talk_06", "main_04_01", "npc_main_041100_0004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-70.14, 1.83, -445.58]), lua.Table.create([-14.77, -113.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "rejoice_small", this.CHR_PLY);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.76, 2.75, -445.24]), lua.Table.create([0.0, 72.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_big");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_29", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence((("ef_line" : Dynamic)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.97, 2.82, -445.31]), lua.Table.create([-2.39, 71.84, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-71.96, 2.82, -445.33]), lua.Table.create([-2.39, 71.84, 20.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_SILENCE");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "anger");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4120_talk_07", "main_04_01", this.POKE_SIBIRUDON, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-72.2, 2.84, -445.35]), lua.Table.create([-1.03, 72.2, -8.29]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4120_talk_08", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect((("ef_line" : Dynamic)));
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-70.36, 1.59, -445.96]), lua.Table.create([14.99, 86.5, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(26, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_M04_PV_0604_00_GLAD2", lua.Table.create([-72.39, 1.42, -446.49]));
        var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 20);
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_big");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_09", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-69.79, 1.28, -446.1]), lua.Table.create([-1.22, -88.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_NEGATIVE");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 21);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 21);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MUKU, lua.Table.create([-70.74, 0.74, -444.77]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-69.58, 1.44, -444.97]), lua.Table.create([-3.46, -165.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "sad", this.CHR_MUKU);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-70.07, 1.59, -445.13]), lua.Table.create([-6.32, -102.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_10", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-72.09, 2.69, -446.15]), lua.Table.create([7.1, 130.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_small");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.POKE_SIBIRUDON, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_30", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_04");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, -70.38, 0.14, -440.91, -174.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_OTAKU, -69.18, 0.15, -444.03, -109.14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -68.79, 0.14, -445.28, -108.52);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", -67.48, 0.14, -449.31, -46.44);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", -66.53, 0.14, -445.97, -87.91);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-67.1, 1.21, -444.08]), lua.Table.create([4.53, 72.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_23", "main_04_01", this.POKE_SIBIRUDON);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_4120_select_01", "msg_Ev_m04_4120_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-69.92, 1.64, -446.5]), lua.Table.create([-8.06, -149.29, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4120_talk_24", "main_04_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-73.65, 3.21, -446.39]), lua.Table.create([-25.88, -114.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "serious", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_25", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.76, 2.75, -445.24]), lua.Table.create([0.0, 72.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_small", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 23);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_02");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_RESET");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_QUIZ_CORRECT_ANSWER");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_11", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_small", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_SIBIRUDON, this.FLD_POKE_SIBIRUDON, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-70.36, 1.59, -445.96]), lua.Table.create([14.99, 86.5, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-70.36, 1.59, -445.96]), lua.Table.create([14.54, 79.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("PLAY_SS_EV_M04_PV_0604_00_INDEX", lua.Table.create([-72.39, 1.42, -446.49]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 68);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_12", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_13", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_14", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-67.05, 1.24, -444.04]), lua.Table.create([4.31, 69.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(7, "msg_Ev_m04_4120_talk_15", "main_04_01", this.POKE_SIBIRUDON, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[11], "head");
            var timeWait:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait(scenario, 1.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.FLD_POKE_SIBIRUDON, 69);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -68.58, 0.14, -445.43, -79.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_SIBIRUDON, -72.84, 1.43, -446.27, 71.96);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-68.55, 1.5, -442.87]), lua.Table.create([-3.1, 13.65, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_POKE_SIBIRUDON, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_SIBIRUDON, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_OTAKU, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_OTAKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4120_talk_16", "main_04_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.POKE_SIBIRUDON, 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4120_talk_31", "main_04_01", this.POKE_SIBIRUDON, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal");
            var timeWait2:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait2(scenario, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[9], "head");
            var timeWait3:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait3(scenario, 0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            var timeWait4:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait4(scenario, 1.0);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.95, 2.76, -445.5]), lua.Table.create([1.76, 50.32, -10.96]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH01");
        var displayingAction:Dynamic = animationAction4;
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4120_talk_17", "main_04_01", this.POKE_SIBIRUDON, true, true, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(scenario[10], -70.38, 0.14, -440.91, -154.6);
            var timeWait5:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait5(scenario, 0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "rejoice_small");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 29));
            displayingAction = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[9]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-72.24, 2.67, -446.39]), lua.Table.create([16.61, 103.86, -26.81]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4120_talk_26", "main_04_01", this.POKE_SIBIRUDON, true, true, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "anger");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-72.0, 2.48, -445.94]), lua.Table.create([19.83, 69.57, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4120_talk_27", "main_04_01", this.POKE_SIBIRUDON, true, true, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 333);
            var timeWait6:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait6(scenario, 1.0);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_L");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-67.06, 0.43, -444.02]), lua.Table.create([19.83, 69.57, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.63, 2.26, -446.7]), lua.Table.create([20.87, 115.6, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(7, "msg_Ev_m04_4120_talk_18", "main_04_01", this.POKE_SIBIRUDON, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[9]);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 491);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4120_talk_44", "main_04_01", this.POKE_SIBIRUDON, true, true, (function():Dynamic
        {
            displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 77);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0006", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0013", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0011", 143);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0010", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0008", 143);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-72.04, 2.26, -448.39]), lua.Table.create([-13.19, -136.49, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence((("ef_line" : Dynamic)));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_L");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4120_talk_19", "main_04_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect((("ef_line" : Dynamic)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-72.21, 2.74, -446.86]), lua.Table.create([5.5, 140.46, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.POKE_SIBIRUDON, "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_20", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-73.58, 3.19, -447.11]), lua.Table.create([-23.57, -120.76, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4120_talk_21", "main_04_01", this.POKE_SIBIRUDON);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_SIBIRUDON, 29);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-67.66, 0.67, -444.31]), lua.Table.create([19.83, 70.7, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-67.03, 0.43, -444.09]), lua.Table.create([19.83, 70.7, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_OTAKU, this.CHR_PLY, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_OTAKU, "head");
        this.TimeWait(2.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.POKE_SIBIRUDON);
    }
}
