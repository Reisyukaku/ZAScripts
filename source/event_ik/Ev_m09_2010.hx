package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C937C4EB7C7DB1FEC")
@:expose("C937C4EB7C7DB1FEC")
class Ev_m09_2010 extends BaseMainScenario
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
        this.slot13 = "dyn_same3";
        this.slot12 = "dyn_same2";
        this.slot11 = "dyn_hasa";
        this.slot10 = "dyn_muku";
        this.slot9 = "dyn_siro";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_EVENT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("main_M9_GARUURA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_GARUURA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("main_M9_PIZYOTTO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_PIZYOTTO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("main_M9_GABURIASU", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_M9_GABURIASU", false);
        var messageLabel:Dynamic = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", messageLabel);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(messageLabel);
        }));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-571.3), 0.01, (-654.69)]), 34.84, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([(-571.3), 0.01, (-654.69)]), 48.03, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot11, lua.Table.create([(-571.3), 0.01, (-654.69)]), 46.23, 212, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot12, lua.Table.create([(-571.3), 0.01, (-654.69)]), 53.3, 319, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot13, lua.Table.create([(-571.3), 0.01, (-654.69)]), 16.0, 319, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot11);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot12);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.slot13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-591.91), 0.01, (-609.26), 31.72);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-591.0), 0.0, (-609.91), 34.84);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-589.68), 0.0, (-610.48), 48.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-595.96), 0.01, (-616.72), 46.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, (-596.96), 0.0, (-615.13), 53.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, (-593.81), 0.01, (-617.32), 16.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot8, 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot9, 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot10, 491);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-594.6), 1.13, (-611.79)]), lua.Table.create([0.57, (-122.05), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 1);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 333);
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MUSCLE_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_01", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        var slot10Turn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, (-123.18));
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.slot10);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-590.92), 1.2, (-611.01)]), lua.Table.create([(-0.92), (-108.09), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot10Turn);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 21);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.41), 1.13, (-611.37)]), lua.Table.create([0.0, 38.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-590.55), 1.13, (-610.29)]), lua.Table.create([0.0, 38.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_2010_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(messageLabel);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 40);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 40);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 40);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-590.07), 0.0, (-610.85), (-134.67));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot8, (-147.24));
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, (-123.88));
        main.event.ik.command.IkScriptCommand.FadeEffect(messageLabel);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.06), 1.77, (-605.79)]), lua.Table.create([(-10.13), 8.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        var slot9Action:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-592.59), 0.0, (-611.46), 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-596.11), 1.41, (-610.72)]), lua.Table.create([(-6.85), (-94.39), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-596.11), 1.41, (-610.72)]), lua.Table.create([(-6.85), (-83.5), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2010_talk_02", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot9Action);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_03", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.37), 1.15, (-610.95)]), lua.Table.create([1.79, (-92.11), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_04", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_05", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-591.91), 0.01, (-609.26), (-130.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-590.07), 0.0, (-610.85), (-81.45));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-592.51), 0.0, (-611.19), (-108.0));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-595.02), 1.56, (-609.52)]), lua.Table.create([(-4.35), (-75.18), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        slot9Action = (main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot8, this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot9Action);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot9, this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_09", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_10", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-592.08), 2.03, (-609.98)]), lua.Table.create([(-9.3), 23.87, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2010_talk_11", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "lose", "npc_main_ju_boss");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-591.69), 0.01, (-609.49), 139.13);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.28), 1.25, (-610.91)]), lua.Table.create([(-2.07), (-90.49), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_12", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, (-58.5));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-589.84), 1.43, (-611.95)]), lua.Table.create([(-6.79), 155.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_13", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, (-590.87), 0.01, (-610.43), 0.5));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-590.77), 1.15, (-611.94)]), lua.Table.create([3.68, (-166.07), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 30);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.04), 1.29, (-610.71)]), lua.Table.create([(-1.59), (-83.04), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_06", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-590.76), 0.0, (-608.28), 144.74);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-589.82), 0.01, (-607.3), 179.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-589.82), 0.01, (-607.3), 179.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-589.97), 0.0, (-610.85), (-21.21));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-591.31), 1.79, (-613.53)]), lua.Table.create([(-9.72), (-163.56), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2010_talk_07", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 174);
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[8], 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, (-584.19), 0.01, (-600.16), 2.0);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-585.49), 0.0, (-600.6), 2.0);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-589.79), 1.66, (-605.91)]), lua.Table.create([(-3.07), (-3.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-590.29), 1.66, (-605.95)]), lua.Table.create([(-3.07), (-3.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 333);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_2010_MUSCLE_WHOOSH01");
        this.TimeWait(3.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot11, "head");
        slot10Turn = (main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, (-130.5)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-589.26), 1.86, (-608.29)]), lua.Table.create([(-13.33), 25.43, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-589.46), 1.82, (-608.2)]), lua.Table.create([(-10.68), 24.76, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot10Turn);
        slot10Turn = (main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot10, 170.0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2010_talk_08", "main_09_01", this.slot10, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot10Turn);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, (-587.47), 0.0, (-612.0), 2.0);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot13, 78.5);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot11, 81.3);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot12, 98.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot13, (-585.72), 0.01, (-617.96), 2.0);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot11, (-586.38), 0.01, (-615.3), 2.0);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, (-585.34), 0.0, (-616.07), 2.0);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_BATTLE");
        this.TimeWait(0.5);
    }
}
