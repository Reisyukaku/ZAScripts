package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C101E87666407AB64")
@:expose("C101E87666407AB64")
class Ev_m05_1110 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", ("line01" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("line01" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main05_0001", -687.96, 6.12, -508.85, -9.92);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(("Player" : Dynamic), (-688.51 : Dynamic), (6.15 : Dynamic), -507.08, (166.27 : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (true == cppbindings.C5090F7B8.fB628218B())
        {
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_Left_morning", lua.Table.create([-698.3, 6.12, -512.87]), -135.78, "npc_ju_member_m_02");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_Ringht_morning_01", lua.Table.create([-683.02, 6.13, -505.85]), 39.33, "npc_ju_member_m_01");
            var create_Npc_Dynamic:Dynamic = main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic;
            var sceneVector:Dynamic = lua.abi.Host.emptyTable();
            untyped sceneVector[1] = -682.29;
            untyped sceneVector[2] = (6.13 : Dynamic);
            untyped sceneVector[3] = (-505.01 : Dynamic);
            create_Npc_Dynamic(("dyn_Ringht_morning_02" : Dynamic), sceneVector, -141.5, "npc_ju_member_m_00");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0016", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0017", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A05_z02_01_0018", false);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_Left_night", lua.Table.create([-698.3, 6.12, -512.87]), -135.78, "npc_ju_member_f_02");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_Ringht_night_01", lua.Table.create([-683.02, 6.13, -505.85]), 39.33, "npc_ju_member_f_03");
            var create_Npc_Dynamic2:Dynamic = main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic;
            var sceneVector2:Dynamic = lua.abi.Host.emptyTable();
            untyped sceneVector2[1] = -682.29;
            untyped sceneVector2[2] = (6.13 : Dynamic);
            untyped sceneVector2[3] = (-505.01 : Dynamic);
            create_Npc_Dynamic2(("dyn_Ringht_night_02" : Dynamic), sceneVector2, -141.5, "npc_ju_member_f_00");
        };
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([-696.2, 6.25, -484.1]), 162.0, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "lose");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.89, 7.57, -508.28]), lua.Table.create([5.11, 6.05, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-687.81, 7.4, -507.63]), lua.Table.create([5.11, 6.05, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main05_0001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_1110_talk_01", "main_05_01", "npc_main05_0001", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.59, 7.6, -505.58]), lua.Table.create([-9.65, 18.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_11", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.13, 7.89, -508.59]), lua.Table.create([-18.3, 120.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-687.0, 7.89, -508.37]), lua.Table.create([-18.3, 120.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main05_0001", "Player", "head");
        var movementAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main05_0001", -688.22, 6.12, -507.89, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_27", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.87, 7.63, -507.68]), lua.Table.create([-8.23, 132.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-688.02, 7.52, -505.94]), lua.Table.create([-6.02, 15.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_28", "main_05_01", "npc_main05_0001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_02", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_03", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", -696.66, 6.24, -482.86, 160.99);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", -690.86, 6.13, -499.69, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-697.09, 7.65, -481.57]), lua.Table.create([-5.25, -18.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.2, lua.Table.create([-694.61, 7.65, -488.9]), lua.Table.create([-5.25, -18.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-690.33, 6.84, -501.2]), lua.Table.create([-14.3, 160.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-690.33, 8.29, -501.2]), lua.Table.create([-14.3, 160.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-690.62, 8.19, -500.37]), lua.Table.create([-14.3, 160.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Facial("dyn_main_ju_boss", 362, 451);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Facial("dyn_main_ju_boss", 352, 451);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([-680.72, 15.89, -528.93]), lua.Table.create([-14.3, 160.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M05_1110");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MUSCLE_WHOOSH01");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main05_0001", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -19.677);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_1110_talk_04", "main_05_01", "dyn_main_ju_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", -690.86, 6.13, -499.69, 150.29);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-691.3, 8.08, -500.59]), lua.Table.create([-5.41, -153.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(11, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([-698.62, 7.69, -514.63]), lua.Table.create([-5.41, -153.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(11, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", -152.71);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_1110_MUSCLE_WHOOSH02");
        if (true == cppbindings.C5090F7B8.fB628218B())
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Left_morning", 40.22);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Left_night", 40.22);
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_1110_talk_05", "main_05_01", "dyn_main_ju_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-690.17, 8.05, -500.18]), lua.Table.create([-1.69, 124.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(11, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([-680.89, 7.45, -506.65]), lua.Table.create([-1.69, 124.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(11, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        var fObj_Set_TurnResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", 124.84);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_1110_MUSCLE_WHOOSH03");
        if (true == cppbindings.C5090F7B8.fB628218B())
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_morning_01", -44.67);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_morning_02", -68.5);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_night_01", -44.67);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_night_02", -68.5);
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_1110_talk_06", "main_05_01", "dyn_main_ju_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.97, 8.06, -511.13]), lua.Table.create([-12.04, -172.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_07", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_08", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-690.57, 7.4, -500.96]), lua.Table.create([6.75, 165.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-690.57, 7.8, -500.96]), lua.Table.create([6.75, 165.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        if (true == cppbindings.C5090F7B8.fB628218B())
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Left_morning", 49.22);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_morning_01", 39.33);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_morning_02", -141.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_Ringht_morning_01", 32);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Left_night", 49.22);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_night_01", 39.33);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_Ringht_night_02", -141.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_Ringht_night_01", 32);
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(1.1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "surprise_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_09", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_big_mc");
        var movementAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", -688.97, 6.13, -506.24, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.97, 8.06, -511.13]), lua.Table.create([-12.04, -172.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.95, 6.92, -503.54]), lua.Table.create([19.4, -177.07, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.6, lua.Table.create([-688.75, 7.22, -507.96]), lua.Table.create([19.4, -177.07, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_10", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction2);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_1110_select_01", "msg_Ev_m05_1110_select_02"]), 0, false, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.98, 8.35, -506.13]), lua.Table.create([-28.77, -59.67, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_12", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_13", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.35, 7.27, -510.72]), lua.Table.create([-1.86, -167.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-689.28, 7.26, -510.4]), lua.Table.create([-1.86, -167.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_14", "main_05_01", "dyn_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_1110_select_03", "msg_Ev_m05_1110_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.27, 7.08, -507.44]), lua.Table.create([15.38, -165.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-689.27, 7.53, -507.44]), lua.Table.create([15.38, -165.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_15", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_16", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_17", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_18", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-688.83, 7.26, -508.11]), lua.Table.create([13.91, -173.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_19", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_20", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_21", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", -689.02, 6.13, -505.89, 164.09);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-692.93, 6.51, -502.92]), lua.Table.create([4.86, -68.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_22", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_5S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000_DELAY1000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", -700.05, 6.0, -477.79, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-688.22, 7.69, -508.01]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main05_0001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -688.51, 6.15, -507.08, 166.27);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-687.75, 8.09, -505.81]), lua.Table.create([-3.71, 21.79, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-687.75, 7.54, -505.81]), lua.Table.create([-3.71, 21.79, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T500");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_23", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_24", "main_05_01", "npc_main05_0001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_1110_select_05", "msg_Ev_m05_1110_select_06"]), 0, false, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "rejoice_small_mc");
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_25", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1110_talk_26", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
