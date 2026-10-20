package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD9F7F7415FA2894F")
@:expose("CD9F7F7415FA2894F")
class Ev_m08_4300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_nu_boss_m", lua.Table.create([(-347.13), 0.01, (-374.45)]), 135.74, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_nu_boss_f", lua.Table.create([(-346.68), 0.01, (-376.18)]), 121.69, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-340.12), 0.01, (-380.28), (-159.72));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-342.52), 1.0, (-383.6)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-338.87), 1.27, (-379.43)]), lua.Table.create([3.56, 39.22, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-337.09), 1.09, (-377.24)]), lua.Table.create([3.56, 39.22, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_nu_boss_m", (-342.73), 0.01, (-377.77), 1.0);
        var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_nu_boss_f", (-342.66), 0.01, (-379.38), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.25);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-339.21), 1.43, (-381.42)]), lua.Table.create([(-8.51), 143.84, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([(-339.53), 1.43, (-381.66)]), lua.Table.create([(-8.51), 143.84, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_nu_boss_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-65.0));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-341.29), 1.51, (-380.01)]), lua.Table.create([(-3.81), 130.66, 2.88]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_07");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_f", "anger_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_01", "main_08_01", "dyn_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_02", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_nu_boss_f", lua.Table.create([(-342.52), 1.0, (-383.6)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_nu_boss_m", lua.Table.create([(-342.52), 1.0, (-383.6)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-339.49), 0.01, (-381.24), (-65.0)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-335.53), 2.23, (-383.31)]), lua.Table.create([(-7.3), 115.49, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(6.5, lua.Table.create([(-336.32), 2.23, (-384.98)]), lua.Table.create([(-7.3), 115.49, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-342.52), 1.0, (-383.6)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_03", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-335.92), 1.28, (-380.21)]), lua.Table.create([1.77, 60.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.5, lua.Table.create([(-337.59), 1.33, (-381.15)]), lua.Table.create([1.77, 60.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_nu_boss_m", (-341.69), 0.01, (-378.92), (-175.5));
        var moveToPosXYZAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_nu_boss_m", (-341.57), 0.14, (-382.65), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-118.0));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_nu_boss_m", lua.Table.create([(-342.53), 5.0, (-383.89)]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_nu_boss_m", (-146.73)));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_m", "sad", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_nu_boss_f", (-342.66), 0.01, (-379.38), 114.55);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_nu_boss_f", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-342.17), 2.38, (-383.46)]), lua.Table.create([(-34.84), (-142.22), (-0.02)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_nu_boss_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(6.5, lua.Table.create([(-341.95), 2.14, (-383.17)]), lua.Table.create([(-32.87), (-142.22), (-0.0)]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_m", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_04", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_m", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_05", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-340.49), 1.71, (-382.25)]), lua.Table.create([(-4.09), 76.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_m", "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_nu_boss_f", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_06", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_m", "Player", "head");
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_nu_boss_m", 41.77);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-338.44), 1.38, (-381.32)]), lua.Table.create([(-5.24), 76.08, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.0, lua.Table.create([(-338.19), 1.41, (-381.26)]), lua.Table.create([(-5.24), 76.08, (-0.0)]), 40.0, 0, cameraEase, null, null, null, null);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_m", "serious", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_07", "main_08_01", "dyn_main_nu_boss_m");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4300_select_01", "msg_Ev_m08_4300_select_02"]), 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        waitFObjAction(setTurnAction);
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-341.58), 1.6, (-380.12)]), lua.Table.create([(-5.14), 126.18, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(12, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_m", "normal", "npc_main_nu_boss_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-338.74), 0.01, (-381.3), (-102.09));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(12, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([(-341.88), 1.57, (-379.9)]), lua.Table.create([(-5.14), 126.18, 0.01]), 40.0, 0, cameraEase2, null, null, null, null);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_nu_boss_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_m", "dyn_main_nu_boss_f", "head");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH02");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_f", "anger", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_f", 24);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_4300_talk_08", "main_08_01", "dyn_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var fadeEffect:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeEffect;
            var effectKey2:Dynamic = effectKey;
            fadeEffect(effectKey2);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-341.58), 1.6, (-380.12)]), lua.Table.create([(-5.14), 126.18, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(12, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_m", "normal", "npc_main_nu_boss_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-338.74), 0.01, (-381.3), (-102.09));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M08_4300_FL_WHOOSH01");
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(12, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([(-341.88), 1.57, (-379.9)]), lua.Table.create([(-5.14), 126.18, 0.01]), 40.0, 0, cameraEase3, null, null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_nu_boss_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_m", "dyn_main_nu_boss_f", "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_f", "normal", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_f", 22);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_09", "main_08_01", "dyn_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var waitTime:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
            waitTime(0.3);
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-337.57), 1.91, (-380.4)]), lua.Table.create([(-15.92), 60.99, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_nu_boss_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_f", "anger_mc", "npc_main_nu_boss_f");
        var moveToPosXYZAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_nu_boss_f", untyped -340.25, 0.01, (-381.34), 1.0);
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var fObjSetAnimation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation;
            fObjSetAnimation("dyn_main_nu_boss_m", 21);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            var fObjSetAnimation2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation;
            fObjSetAnimation2("dyn_main_nu_boss_m", 25);
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_10", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_f", "dyn_main_nu_boss_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_11", "main_08_01", "dyn_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_m", "sad", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-339.27), 1.62, (-381.05)]), lua.Table.create([(-6.03), 65.12, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_f", "anger", "npc_main_nu_boss_f");
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_f", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_12", "main_08_01", "dyn_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-340.62), 1.76, (-382.09)]), lua.Table.create([(-6.28), 60.96, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_nu_boss_m", "serious", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_nu_boss_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_m", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_13", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_nu_boss_m"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_nu_boss_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_nu_boss_m", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_14", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-337.62), 1.48, (-380.32)]), lua.Table.create([(-4.54), 57.62, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_nu_boss_m", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_15", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4300_talk_16", "main_08_01", "dyn_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_5S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-334.95), 4.9, (-378.56)]), lua.Table.create([(-32.35), 57.88, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.5, lua.Table.create([(-333.68), 5.85, (-377.76)]), lua.Table.create([(-32.35), 57.88, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_nu_boss_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
