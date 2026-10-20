package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C8A6939B7C299328A")
@:expose("C8A6939B7C299328A")
class Ev_m09_2100 extends BaseMainScenario
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

    @:abiSlot(14)
    public var slot14:Dynamic;

    @:abiSlot(15)
    public var slot15:Dynamic;

    @:abiSlot(16)
    public var slot16:Dynamic;

    @:abiSlot(17)
    public var slot17:Dynamic;

    public function new()
    {
        this.slot17 = "dyn_game_5";
        this.slot16 = "dyn_game_4";
        this.slot15 = "dyn_game_3";
        this.slot14 = "dyn_game_2";
        this.slot13 = "dyn_game_1";
        this.slot12 = "dyn_haga";
        this.slot11 = "dyn_kame";
        this.slot10 = "dyn_tara";
        this.slot9 = "dyn_kana";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ga_boss", "npc_main_ga_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_STATE_EV_M09_BOUSOU_AURA_EVENT");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_MUTE_T0");
        (untyped main.event.ik.command.IkScriptCommand.S726C2890C3D75149)("t1_lb_tower", "t1_lb_tower", true);
        (untyped main.event.ik.command.IkScriptCommand.CreateEffect)("battle/etc/kaiwa/ef_concentration_line01", ("ef_line" : Dynamic));
        this.Await((function():Dynamic
        {
            return (untyped main.event.ik.command.IkScriptCommand.IsSetUpEffect)(("ef_line" : Dynamic));
        }));
        var sceneVector:Dynamic = lua.Table.create([(-651.58), 6.04, (-441.94)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot9, sceneVector, 123.47, "npc_main_ga_boss");
        var sceneVector2:Dynamic = lua.Table.create([(-649.65), 6.19, (-439.23)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot10, sceneVector2, 123.99, "npc_main_ga_leader");
        var sceneVector3:Dynamic = lua.Table.create([(-637.5), 6.01, (-452.93)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_NpcPokemon)(this.slot11, sceneVector3, (untyped -60.43), 9, 1, 0);
        var sceneVector4:Dynamic = lua.Table.create([(-635.49), 6.01, (-449.52)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_NpcPokemon)(this.slot12, sceneVector4, (untyped -80.67), 208, 1, 0);
        var sceneVector5:Dynamic = lua.Table.create([(-644.03), 6.0, (-443.9)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot13, sceneVector5, 138.53, "npc_ga_member_m_03");
        var sceneVector6:Dynamic = lua.Table.create([(-646.9), 6.0, (-444.94)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot14, sceneVector6, 133.31, "npc_ga_member_m_02");
        var sceneVector7:Dynamic = lua.Table.create([(-644.86), 6.0, (-442.24)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot15, sceneVector7, 141.81, "npc_ga_member_m_01");
        var sceneVector8:Dynamic = lua.Table.create([(-642.77), 6.15, (-442.35)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot16, sceneVector8, 160.99, "npc_ga_member_m_00");
        var sceneVector9:Dynamic = lua.Table.create([(-646.8), 6.0, (-450.88)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot17, sceneVector9, 86.01, "npc_ga_member_f_03");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -652.59), 6.02, (untyped -447.3), 16.76);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot9, (untyped -647.49), 6.01, (untyped -447.86), 111.16);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -647.04), 6.0, (untyped -446.68), 123.99);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -657.0), 6.28, (untyped -451.38), 62.72);
        (untyped main.event.ik.command.IkScriptCommand.AddBousouAuraTag)(this.slot11);
        (untyped main.event.ik.command.IkScriptCommand.AddBousouAuraTag)(this.slot12);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_main09_ga_member_01", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_main09_ga_member_02", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_main09_ga_member_03", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_main09_ga_member_04", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_main09_ga_member_05", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot17, 27);
        var sceneVector10:Dynamic = lua.Table.create([(-657.24), 7.96, (-452.77)]);
        var sceneVector11:Dynamic = lua.Table.create([(-11.19), (-128.68), (-0.0)]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector10, sceneVector11, 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.slot8, (untyped -655.79), 6.28, (untyped -450.82), 0.5);
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.1, true);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        this.TimeWait(1.5);
        var sceneVector12:Dynamic = lua.Table.create([(-648.95), 7.38, (-448.65)]);
        var sceneVector13:Dynamic = lua.Table.create([(-5.46), (-124.9), (-0.0)]);
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector12, sceneVector13, 40.0, 0, cameraEase2);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.slot9, (untyped -118.88));
        this.TimeWait(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.slot10, (untyped -165.83));
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot13, this.slot8, "head");
        this.TimeWait(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot14, this.slot8, "head");
        this.TimeWait(0.1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot15, this.slot8, "head");
        this.TimeWait(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot16, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -651.52), 6.01, (untyped -448.96), 98.85);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_RESET_T1000");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_01", "main_09_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var sceneVector14:Dynamic = lua.Table.create([(-653.02), 7.83, (-448.57)]);
        var sceneVector15:Dynamic = lua.Table.create([(-10.41), (-87.03), 0.0]);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector14, sceneVector15, 40.0, 0, cameraEase3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_02", "main_09_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector16:Dynamic = lua.Table.create([(-642.9), 6.74, (-451.42)]);
        var sceneVector17:Dynamic = lua.Table.create([5.35, (-90.54), (-0.0)]);
        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector16, sceneVector17, 40.0, 0, cameraEase4);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -647.04), 6.0, (untyped -446.68), 118.86);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot13, this.slot11, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot14, this.slot11, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot15, this.slot11, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot16, this.slot11, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 40);
        this.TimeWait(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot12, 40);
        this.TimeWait(2.5);
        var sceneVector18:Dynamic = lua.Table.create([(-646.0), 6.78, (-448.19)]);
        var sceneVector19:Dynamic = lua.Table.create([5.35, 146.79, (-0.0)]);
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector18, sceneVector19, 40.0, 0, cameraEase5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_14", "main_09_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -647.04), 6.0, (untyped -446.68), (untyped -175.07));
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, "head");
        var sceneVector20:Dynamic = lua.Table.create([(-648.75), 7.41, (-448.02)]);
        var sceneVector21:Dynamic = lua.Table.create([(-3.13), (-93.47), 0.0]);
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector20, sceneVector21, 40.0, 0, cameraEase6);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot9, "sad", "npc_main_ga_boss");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 2);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_15", "main_09_01", this.slot9);
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m09_2100_select_01", "msg_Ev_m09_2100_select_02"]), 0, false, (false : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot9, "normal", "npc_main_ga_boss");
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot9, "rejoice_small", ("npc_main_ga_boss" : Dynamic));
        var fObj_Set_Animation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation;
        var slot9:Dynamic = this.slot9;
        fObj_Set_Animation(slot9, (174 : Dynamic));
        if (0 == menuSelection)
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var slot92:Dynamic = this.slot9;
            showMessage((0 : Dynamic), ("msg_Ev_m09_2100_talk_03" : Dynamic), ("main_09_01" : Dynamic), slot92);
        }
        else
        {
            var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var slot93:Dynamic = this.slot9;
            showMessage2((0 : Dynamic), ("msg_Ev_m09_2100_talk_04" : Dynamic), ("main_09_01" : Dynamic), slot93);
        };
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot13);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot14);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot15);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot16);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot13, (untyped -644.15), 6.0, (untyped -443.68), (untyped -146.41));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot14, (untyped -643.86), 6.16, (untyped -441.78), (untyped -156.06));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot15, (untyped -645.0), 6.0, (untyped -442.85), (untyped -171.06));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot16, (untyped -645.07), 6.15, (untyped -441.27), (untyped -172.81));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_05", "main_09_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -645.43), 6.0, (untyped -445.11), (untyped -134.37));
        var sceneVector22:Dynamic = lua.Table.create([(-646.82), 6.99, (-446.0)]);
        var sceneVector23:Dynamic = lua.Table.create([0.59, (-129.8), 0.0]);
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector22, sceneVector23, 40.0, 0, cameraEase7);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 23);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m09_2100_talk_06", "main_09_01", this.slot10, null, null, (function():Dynamic
        {
            var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait(scenario, 1.5);
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "rejoice_small", "npc_main_ga_leader");
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_07", "main_09_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot11, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -646.17), 6.0, (untyped -446.05), (untyped -141.94));
        var sceneVector24:Dynamic = lua.Table.create([(-650.51), 7.09, (-448.64)]);
        var sceneVector25:Dynamic = lua.Table.create([0.59, (-97.62), 0.0]);
        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector24, sceneVector25, 40.0, 0, cameraEase8);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot9, "serious", "npc_main_ga_boss");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_08", "main_09_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -650.66), 6.01, (untyped -449.68), 60.98);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot8, "head");
        var sceneVector26:Dynamic = lua.Table.create([(-647.04), 7.58, (-446.91)]);
        var sceneVector27:Dynamic = lua.Table.create([(-8.53), 40.47, 0.0]);
        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector26, sceneVector27, 40.0, 0, cameraEase9);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -644.48), 6.0, (untyped -445.5), (untyped -120.83));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot13, (untyped -643.66), 6.0, (untyped -444.32), (untyped -125.69));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot14, (untyped -643.5), 6.0, (untyped -443.32), (untyped -141.86));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot15, (untyped -644.53), 6.0, (untyped -443.4), (untyped -148.82));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot16, (untyped -644.15), 6.16, (untyped -441.68), (untyped -162.4));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_09", "main_09_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector28:Dynamic = lua.Table.create([(-647.77), 6.62, (-447.08)]);
        var sceneVector29:Dynamic = lua.Table.create([1.13, (-127.27), 0.0]);
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector28, sceneVector29, 40.0, 0, cameraEase10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "normal", "npc_main_ga_leader");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_10", "main_09_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 24);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_11", "main_09_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_CHEERS_MEN");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(1, "msg_Ev_m09_2100_talk_12", "main_09_01", this.slot13, false, true, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[13]), 491);
            var timeWait2:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait2(scenario, 0.2);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[14]), 491);
            var timeWait3:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait3(scenario, 0.1);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[15]), 491);
            var timeWait4:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait4(scenario, 0.2);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[16]), 491);
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var sceneVector30:Dynamic = lua.Table.create([(-645.83), 7.02, (-446.21)]);
        var sceneVector31:Dynamic = lua.Table.create([1.13, (-127.27), 0.0]);
        var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector30, sceneVector31, 40.0, 0, cameraEase11);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.slot10, (untyped -60.0));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot17, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot8, this.slot17, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot17, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_16", "main_09_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector32:Dynamic = lua.Table.create([(-644.57), 7.0, (-443.93)]);
        var sceneVector33:Dynamic = lua.Table.create([(-2.81), 17.23, (-0.0)]);
        var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector32, sceneVector33, 40.0, 0, cameraEase12);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.slot17);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        this.TimeWait(0.5);
        var fObj_Set_Turn_To_ObjResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.slot17, this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_Turn_To_ObjResult);
        (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)(this.slot17);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_17", "main_09_01", this.slot16);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector34:Dynamic = lua.Table.create([(-645.93), 7.29, (-449.18)]);
        var sceneVector35:Dynamic = lua.Table.create([(-1.69), 26.83, 0.0]);
        var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(26, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector34, sceneVector35, 40.0, 0, cameraEase13);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var sceneVector36:Dynamic = lua.Table.create([(-646.16), 7.34, (-449.63)]);
        var sceneVector37:Dynamic = lua.Table.create([(-1.69), 26.83, 0.0]);
        var cameraEase14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(26, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.7, sceneVector36, sceneVector37, 40.0, 0, cameraEase14);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_EV_M09_2100_OTAKU_WHOOSH05");
        (untyped main.event.ik.command.IkScriptCommand.PlayEffectSequence)(("ef_line" : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot17, 21);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_m09_2100_talk_18", "main_09_01", this.slot17);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FadeEffect)(("ef_line" : Dynamic));
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.5, true);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot8);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -645.47), 6.01, (untyped -449.04), 100.98);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot9, (untyped -645.23), 6.01, (untyped -447.89), 111.49);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot10, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot13, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot14, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot15, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot16, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot17, false);
        var sceneVector38:Dynamic = lua.Table.create([(-647.21), 7.27, (-445.1)]);
        var sceneVector39:Dynamic = lua.Table.create([(-6.17), (-47.4), (-0.0)]);
        var cameraEase15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector38, sceneVector39, 40.0, 0, cameraEase15);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 491);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot8, 491);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.5, true);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m09_2100_talk_13", "main_09_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_VS_READY");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_STATE_EV_M09_BOUSOU_AURA_BATTLE");
        (untyped main.event.ik.command.IkScriptCommand.FadeOutType)(7);
        (untyped main.event.ik.command.IkScriptCommand.RemoveAllTagEffect)();
        (untyped main.event.ik.command.IkScriptCommand.S726C2890C3D75149)("t1_lb_tower", "t1_lb_tower", false);
    }
}
