package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CBB063F4834326147")
@:expose("CBB063F4834326147")
class Ev_m04_4010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    public function new()
    {
        this.slot13 = 3;
        this.slot12 = "npc_main04_0004";
        this.slot11 = "npc_main04_0003";
        this.slot10 = "npc_main_ju_leader";
        this.slot9 = "npc_main_holo_ga_boss";
        this.slot8 = "Player";
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
        var scenario:Dynamic = this;
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue((("flag_Quizzone_Enable" : Dynamic)));
        if (true == getFlagValueResult)
        {
            var createEffect:Dynamic = untyped main.event.ik.command.IkScriptCommand.CreateEffect;
            createEffect((("field/event/quiz/quiz_area01" : Dynamic)), (((("EF_MARU" : Dynamic)) : Dynamic)));
        }
        else
        {
            var createEffect2:Dynamic = untyped main.event.ik.command.IkScriptCommand.CreateEffect;
            createEffect2((("field/event/quiz/quiz_area03" : Dynamic)), (((("EF_MARU" : Dynamic)) : Dynamic)));
        };
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("EF_MARU" : Dynamic)));
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition((("EF_MARU" : Dynamic)), -68.08871, 0.15, -431.6894);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation((("EF_MARU" : Dynamic)), 0, 72.0, 0);
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/quiz/quiz_area02", (("EF_BATSU" : Dynamic)));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("EF_BATSU" : Dynamic)));
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition((("EF_BATSU" : Dynamic)), -60.78425, 0.15, -454.16995);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation((("EF_BATSU" : Dynamic)), 0, 72.0, 0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_OFF");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-61.12, 3.77, -446.99]), lua.Table.create([-20.2, 101.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -72.84, 1.44, -446.27, 71.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -69.68, 0.14, -445.18, -103.21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -70.24, 0.14, -442.58, -155.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0003", -69.16, 0.14, -446.86, -84.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0004", -68.09, 0.14, -445.68, -99.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0005", -70.96, 0.14, -442.06, -147.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0006", -69.57, 0.14, -441.71, -155.07);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0007", -69.13, 0.14, -448.76, -64.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0008", -68.56, 0.14, -447.5, -81.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0009", -69.79, 0.14, -443.56, -120.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0011", -66.91, 0.14, -446.04, -94.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0012", -68.49, 0.14, -444.02, -131.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_041100_0013", -67.59, 0.14, -447.47, -75.2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic((("dyn_a" : Dynamic)), lua.Table.create([-68.37, 0.14, -442.61]), -133.45, "npc_main_041100_0010");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang((("dyn_a" : Dynamic)), -68.37, 0.14, -442.61, -133.45);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal", this.slot8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_ju_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, false);
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", (("ef_concentration_line01" : Dynamic)));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("ef_concentration_line01" : Dynamic)));
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_01");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, -66.56, 0.16, -443.9, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot8, -111.02);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-68.32, 1.52, -445.21]), lua.Table.create([0.0, 94.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4010_talk_17", "main_04_01", this.slot12);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4010_talk_18", "main_04_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot12));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot12, this.slot8);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-65.31, 1.55, -444.25]), lua.Table.create([-5.42, 90.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4010_talk_19", "main_04_01", this.slot12);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4010_talk_20", "main_04_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-72.4, 2.43, -447.66]), lua.Table.create([-18.52, -127.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -72.84, 1.43, -446.27, 71.96);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_02");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4010_talk_21", "main_04_01", "npc_main_holo_ga_boss", null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[12], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[12], scenario[9]);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0011", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0005", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0006", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0007", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0013", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0009", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0003", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0008", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_041100_0004", scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj((("dyn_a" : Dynamic)), scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.34, 1.68, -446.16]), lua.Table.create([1.76, 86.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-71.34, 2.67, -446.16]), lua.Table.create([1.76, 86.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 2);
        this.k_HoloEffect(this.slot9, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        this.TimeWait(1.0);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.95, 2.76, -445.5]), lua.Table.create([1.76, 50.32, -10.96]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_big_mc", "npc_main_ju_leader");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH01");
        var displayingAction:Dynamic = animationAction2;
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4010_talk_04", "main_04_01", "npc_main_holo_ga_boss", true, true, (function():Dynamic
        {
            displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 333);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[12], 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0011", 143);
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0006", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0013", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0003", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0008", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 143);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation((("dyn_a" : Dynamic)), 143);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 143);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 31);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH03");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-72.59, 2.18, -447.32]), lua.Table.create([-13.48, -127.36, 12.59]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        displayingAction = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4010_talk_23", "main_04_01", "npc_main_holo_ga_boss", true, true, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.91, 2.78, -445.98]), lua.Table.create([0.45, 73.06, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4010_talk_24", "main_04_01", "npc_main_holo_ga_boss", true, true, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "rejoice_small_mc", "npc_main_ga_boss");
            displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 29);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_M");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-63.48, 1.31, -443.32]), lua.Table.create([0.45, 73.06, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence((("ef_concentration_line01" : Dynamic)));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4010_talk_06", "main_04_01", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect((("ef_concentration_line01" : Dynamic)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.39, 2.51, -446.34]), lua.Table.create([10.03, 99.81, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(8, "msg_Ev_m04_4010_talk_05", "main_04_01", "npc_main_holo_ga_boss", null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[9]));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 491));
            displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 77);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -69.83, 0.14, -442.48, -140.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.81, 1.39, -448.05]), lua.Table.create([-7.75, -142.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_M");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence((("ef_concentration_line01" : Dynamic)));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4010_talk_06", "main_04_01", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.FadeEffect((("ef_concentration_line01" : Dynamic)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.39, 2.51, -446.34]), lua.Table.create([10.03, 99.81, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
        displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 24);
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4010_talk_07", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.81, 1.39, -448.05]), lua.Table.create([-7.75, -142.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CHEERS_L");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence((("ef_concentration_line01" : Dynamic)));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4010_talk_08", "main_04_01", this.slot12, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect((("ef_concentration_line01" : Dynamic)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-64.48, 1.21, -444.41]), lua.Table.create([2.17, 89.24, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(7, "msg_Ev_m04_4010_talk_09", "main_04_01", "npc_main_holo_ga_boss", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
            displayingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(displayingAction);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(7, "msg_Ev_m04_4010_talk_14", "main_04_01", "npc_main_holo_ga_boss", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[10]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[12], 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation((("dyn_a" : Dynamic)), 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0005", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0006", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0007", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0013", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0012", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0011", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0009", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0003", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0004", 144);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_041100_0008", 144);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-64.54, 5.73, -422.69]), lua.Table.create([-28.71, 16.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-58.1, 5.73, -443.78]), lua.Table.create([-28.71, 16.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_PANEL");
        main.event.ik.command.IkScriptCommand.PlayEffect((("EF_MARU" : Dynamic)));
        main.event.ik.command.IkScriptCommand.PlayEffect((("EF_BATSU" : Dynamic)));
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4010_talk_10", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-70.74, 1.51, -446.12]), lua.Table.create([0.0, -129.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4010_talk_22", "main_04_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-64.48, 1.21, -444.41]), lua.Table.create([2.17, 89.24, -0.5]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot12);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_FADEOUT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_QUIZ_QUESTION02");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M04_CHEERS_BASE_SILENCE");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_03_A");
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4010_talk_11", "main_04_01", "npc_main_holo_ga_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(8, "msg_Ev_m04_4010_talk_32", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-71.63, 2.77, -445.88]), lua.Table.create([0.0, 71.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_small_mc", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m04_4010_talk_15", "main_04_01", "npc_main_holo_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-67.43, 1.57, -444.48]), lua.Table.create([-6.25, -121.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 28));
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m04_4010_talk_12", "main_04_01", "npc_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        this.TimeWait(0.5);
        untyped this.m_resultParam = 0;
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_NPC_HAND_CLAPS_ON");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_ju_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -89.09, 0.14, -390.36, -20.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
    }

    @:hashAbi("FBDD58087485296DE")
    public function k_HoloEffect(?OBJ_NAME:Dynamic, ?visibility:Dynamic):Dynamic
    {
        var effectKey:String = "holo_disapp_chara02";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara02", effectKey);
        this.Await(function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        });
        var position:lua.Table<Int, Float> = (cast main.event.ik.command.IkScriptCommand.FObj_Get_Pos(OBJ_NAME));
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle(OBJ_NAME);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, (cast position)[1], ((cast position)[2] + 1.3), (cast position)[3]);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey, 0, angle, 0);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(OBJ_NAME, visibility);
        return null;
    }
}
