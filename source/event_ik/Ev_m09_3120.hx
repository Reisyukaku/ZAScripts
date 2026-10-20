package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE76517AED9E70E9D")
@:expose("CE76517AED9E70E9D")
class Ev_m09_3120 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_DEU:Dynamic;

    @:abiSlot(11)
    public var CHR_PYU:Dynamic;

    @:abiSlot(12)
    public var CHR_MAS:Dynamic;

    @:abiSlot(13)
    public var CHR_YUKA:Dynamic;

    @:abiSlot(14)
    public var CHR_HAL:Dynamic;

    @:abiSlot(15)
    public var CHR_KANA:Dynamic;

    @:abiSlot(16)
    public var CHR_TARA:Dynamic;

    @:abiSlot(17)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(18)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(19)
    public var CHR_KARA:Dynamic;

    @:abiSlot(20)
    public var CHR_JIPU:Dynamic;

    public function new()
    {
        this.CHR_JIPU = "dyn_jipu";
        this.CHR_KARA = "dyn_kara";
        this.CHR_MUKU = "dyn_muku";
        this.CHR_SIRO = "dyn_siro";
        this.CHR_TARA = "dyn_tara";
        this.CHR_KANA = "dyn_kana";
        this.CHR_HAL = "dyn_hal";
        this.CHR_YUKA = "dyn_yuka";
        this.CHR_MAS = "dyn_mas";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_DEU = "dyn_deu";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_m", "npc_main_friend_f", "npc_main_secretary", "npc_main_holo_pa_boss", "npc_main_holo_pa_leader", "npc_main_holo_ga_boss", "npc_main_holo_ga_leader", "npc_main_holo_ju_boss", "npc_main_holo_ju_leader", "npc_main_holo_co_boss", "npc_main_holo_co_leader"]);
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
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([(-414.73), 36.09, (-422.98)]), 0.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([(-414.73), 36.09, (-422.98)]), 0.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MAS, lua.Table.create([(-414.73), 36.09, (-422.98)]), 0.0, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_YUKA, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_HAL, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KANA, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_TARA, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_ga_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KARA, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_JIPU, lua.Table.create([(-414.73), 36.09, (-422.98)]), 180.0, "npc_main_holo_co_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_YUKA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_HAL, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_KANA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_TARA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_SIRO, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_MUKU, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_KARA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_JIPU, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_YUKA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_HAL, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_SIRO, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MUKU, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_KANA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_TARA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_KARA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_JIPU, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_YUKA, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_HAL, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_KANA, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_TARA, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_SIRO, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_MUKU, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_KARA, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_JIPU, 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_YUKA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KANA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_TARA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JIPU, this.CHR_PLY, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "normal", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MAS, "rejoice_small_mc", "npc_main_secretary");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KARA, "normal", "npc_main_co_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JIPU, "normal", "npc_main_co_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_YUKA, "normal", "npc_main_pa_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "normal", "npc_main_pa_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KANA, "normal", "npc_main_ga_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "normal", "npc_main_ga_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "normal", "npc_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "normal", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-410.01), 36.09, (-425.44), (-135.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-413.57), 36.09, (-430.27), (-121.56));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, (-413.73), 36.09, (-429.56), (-121.56));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, (-414.95), 36.09, (-428.58), (-145.06));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, (-416.95), 36.09, (-433.02), 54.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, (-417.85), 36.09, (-433.0), 54.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, (-418.88), 36.09, (-431.48), 54.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-418.13), 36.09, (-431.42), 54.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, (-417.06), 36.09, (-431.26), 54.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, (-417.41), 36.09, (-432.19), 54.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, (-417.72), 36.09, (-430.73), 54.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JIPU, (-418.47), 36.09, (-430.54), 54.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraPosition:Dynamic = lua.Table.create([(-463.83), 100.67, (-469.32)]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PYU, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_DEU, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MAS, cameraPosition);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-409.74), 38.58, (-427.55)]), lua.Table.create([16.7, 56.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-409.74), 36.12, (-427.55)]), lua.Table.create([16.7, 56.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.OverrideAreaLight(0, "env_t1_tower_bousou3", 0.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        this.PlayDemo(lua.abi.Host.concat(Std.string(lua.abi.Host.concat(Std.string(lua.abi.Host.concat(Std.string(lua.abi.Host.concat(Std.string("ik_demo/ee/"), Std.string("ee935"))), Std.string("/"))), Std.string("ee935"))), Std.string(".trtml")), false);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, (-414.93), 36.09, (-429.45), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, cameraPosition);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.93), 38.18, (-431.29)]), lua.Table.create([(-19.37), (-129.18), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_01", "main_09_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.97), 37.62, (-429.83)]), lua.Table.create([(-11.61), (-97.85), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "rejoice_small_mc", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_02", "main_09_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.01), 37.41, (-430.38)]), lua.Table.create([0.0, 51.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect(this.CHR_KANA, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 24);
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m09_3120_talk_03", "main_09_01", this.CHR_KANA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-414.99), 37.95, (-429.68)]), lua.Table.create([(-10.54), 53.5, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-413.58), 38.28, (-428.64)]), lua.Table.create([(-10.54), 53.5, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect(this.CHR_MUKU, true);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 1);
        this.TimeWait(0.6);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect(this.CHR_SIRO, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 1);
        this.TimeWait(0.6);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect(this.CHR_HAL, true);
        this.TimeWait(0.4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_RICH_HUMAN_APPEAR");
        this.k_HoloEffect_YUKA(this.CHR_YUKA, true);
        this.TimeWait(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 20);
        this.k_HoloEffect(this.CHR_TARA, true);
        this.TimeWait(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect(this.CHR_KARA, true);
        this.TimeWait(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_APPEAR");
        this.k_HoloEffect(this.CHR_JIPU, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-417.28), 37.38, (-430.8)]), lua.Table.create([(-4.52), 53.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-417.25), 37.38, (-430.84)]), lua.Table.create([(-4.52), 53.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_YUKA, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_KARA, 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_04", "main_09_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-417.24), 37.71, (-432.24)]), lua.Table.create([(-6.66), 56.12, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-417.14), 37.71, (-432.39)]), lua.Table.create([(-6.66), 56.12, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_HAL, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_17", "main_09_01", this.CHR_HAL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-417.71), 37.85, (-431.3)]), lua.Table.create([2.01, 72.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-417.76), 37.85, (-431.14)]), lua.Table.create([2.01, 72.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "rejoice_big_mc", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_18", "main_09_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.06), 37.23, (-432.29)]), lua.Table.create([10.77, 51.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-416.2), 37.29, (-432.41)]), lua.Table.create([10.77, 51.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 20);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MSBC_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m09_3120_talk_19", "main_09_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_20", "main_09_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.9), 37.28, (-430.36)]), lua.Table.create([4.48, 74.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-416.9), 37.38, (-430.36)]), lua.Table.create([4.48, 74.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_YUKA, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JIPU, "rejoice_big_mc", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JIPU, this.CHR_KARA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_YUKA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_YUKA, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KARA, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_21", "main_09_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.97), 37.62, (-429.83)]), lua.Table.create([(-11.61), (-97.85), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_YUKA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_HAL, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KANA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_TARA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JIPU, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        this.TimeWait(0.3);
        var cameraPosition2:Dynamic = lua.Table.create([(-415.28), 37.8, (-429.77)]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PYU, cameraPosition2);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_DEU, cameraPosition2);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MAS, cameraPosition2);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_PLY);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3120_talk_05", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_DEU, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_06", "main_09_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3120_talk_07", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3120_talk_08", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3120_talk_09", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.74), 37.33, (-430.27)]), lua.Table.create([6.56, (-146.79), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, (-416.95), 36.09, (-433.02), 29.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JIPU, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_10", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_11", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_12", "main_09_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-414.99), 37.95, (-429.68)]), lua.Table.create([(-10.54), 53.5, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([(-413.58), 38.28, (-428.64)]), lua.Table.create([(-10.54), 53.5, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_YUKA);
        var chrYUKAAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_22", "main_09_01", this.CHR_YUKA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_YUKA, "head");
        this.TimeWait(0.5);
        var chrMUKUAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_23", "main_09_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 333);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m09_3120_talk_24", "main_09_01", this.CHR_KANA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "smile", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_HAL, "battle", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 29);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrMUKUAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 29);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_KANA, false);
        this.TimeWait(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KARA, "smile", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KARA, 29);
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_HAL, false);
        this.TimeWait(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JIPU, 29);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_SIRO, false);
        this.TimeWait(0.6);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_MUKU, false);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrYUKAAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 29);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_TARA, false);
        this.TimeWait(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_KARA, false);
        this.TimeWait(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_HUMAN_DISAPPEAR");
        this.k_HoloEffect(this.CHR_JIPU, false);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_3120_HOLO_RICH_HUMAN_DISAPPEAR");
        this.k_HoloEffect_YUKA(this.CHR_YUKA, false);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-412.0), 36.08, (-427.35)]), lua.Table.create([28.63, 48.24, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-412.42), 36.38, (-427.73)]), lua.Table.create([28.63, 48.24, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, cameraPosition);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PYU, cameraPosition);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_DEU, cameraPosition);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MAS, cameraPosition);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_13", "main_09_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HEARTBEAT_IRON");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.5, 3.0, 10, 4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "serious", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "serious", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_DEU, "serious", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MAS, "serious", "npc_main_secretary");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.66), 38.19, (-432.22)]), lua.Table.create([(-17.23), (-153.96), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-415.48), 38.11, (-431.84)]), lua.Table.create([(-17.23), (-153.96), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_14", "main_09_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3120_talk_15", "main_09_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.5), 37.83, (-430.72)]), lua.Table.create([(-17.23), (-153.96), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-415.35), 37.75, (-430.43)]), lua.Table.create([(-17.23), (-153.96), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3120_talk_16", "main_09_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
        main.event.ik.command.IkScriptCommand.ResetOverrideAreaLight(0.0);
    }

    @:hashAbi("FDD725D31FAC585BD")
    public function k_HoloEffect_YUKA(?OBJ_NAME:Dynamic, ?visibility:Dynamic):Dynamic
    {
        var effectKey:String = ("holo_disapp_chara01_" + Std.string(OBJ_NAME));
        if (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey))) {
            main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara01", effectKey);
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
}
