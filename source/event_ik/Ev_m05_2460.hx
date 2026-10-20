package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC93E865FF32A8F6B")
@:expose("CC93E865FF32A8F6B")
class Ev_m05_2460 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([10.1, 3.01, (-269.18)]), (-143.827), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([8.78, 3.01, (-269.97)]), 87.369, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 28));
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_detective", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_ju_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 10.15, 3.01, (-270.75), (-37.631));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([11.48, 5.86, (-272.7)]), lua.Table.create([(-7.39), 145.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([11.48, 4.73, (-272.7)]), lua.Table.create([(-7.39), 145.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_01", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_1_5S");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_02", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        var dynMainJuBossMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 7.08, 3.01, (-269.91), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainJuBossMovement);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.12, 3.62, (-270.88)]), lua.Table.create([(-6.3), 136.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([8.47, 4.25, (-271.07)]), lua.Table.create([(-6.3), 138.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        var dynMainJuBossAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 244);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M05_2460");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_MUSCLE_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2460_talk_03", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainJuBossAnimation);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_MUSCLE_WHOOSH02");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 7.15, 3.01, (-270.03), (-89.67));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([12.17, 3.46, (-269.87)]), lua.Table.create([6.24, 87.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([10.42, 3.46, (-269.95)]), lua.Table.create([6.24, 87.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HEAT_UP");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.89, 3.68, (-267.91)]), lua.Table.create([3.92, 4.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([6.75, 4.51, (-269.1)]), lua.Table.create([(-2.22), 34.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.15);
        var dynMainJuBossAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_boss");
        var effectKey:Dynamic = "wall_disapp_ripple01";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/wall_disapp/wall_disapp_ripple01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, 5.65, 4.46, (-270.32));
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey, 0, (-270.36), 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_HEAT_UP");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_JUSTICE_PUNCH_MISS_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_0_5S");
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2460_talk_04", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainJuBossAnimation2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_05", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.96, 5.21, (-268.96)]), lua.Table.create([(-18.1), 51.77, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 245);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_06", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 8.58, 3.01, (-269.18), (-91.65));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 7.88, 3.01, (-268.18), (-96.01));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.1, 4.58, (-266.98)]), lua.Table.create([(-6.17), 26.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var dynMainDetectiveAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 28);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", 12.83);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveAnimation);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_07", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_detective"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 7.49, 3.01, (-268.3), (-88.25));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 8.74, 3.02, (-269.1), (-64.15));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 7.04, 3.01, (-269.99), 1.82);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.04, 4.79, (-267.61)]), lua.Table.create([(-9.87), 65.6, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var dynMainDetectiveMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 5.4, 3.01, (-268.23), 1.0);
        var effectKey2:Dynamic = "wall_disapp_ripple02";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/wall_disapp/wall_disapp_ripple02", effectKey2);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey2);
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey2, 5.8, 4.22, (-268.27));
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey2, 0, (-270.36), 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.23);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_WALL_THROUGH");
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveMovement);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 5.23, 3.01, (-268.19), 96.58);
        main.event.ik.command.IkScriptCommand.Wait_Time(4.5);
        var dynMainDetectiveMovement2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 6.89, 3.01, (-268.29), 1.0);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey2, 5.8, 4.22, (-268.27));
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey2, 0, (-270.36), 0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_WALL_THROUGH");
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveMovement2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.76, 4.37, (-268.25)]), lua.Table.create([1.31, 110.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, lua.Table.create([7.68, 4.37, (-268.47)]), lua.Table.create([1.31, 110.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        var dynMainDetectiveAnimation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 28);
        var dynMainJuBossAnimation3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveAnimation2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainJuBossAnimation3);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2460_talk_08", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_09", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 7.15, 3.01, (-270.03), 74.85);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.04, 5.12, (-270.74)]), lua.Table.create([(-17.95), 143.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_10", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_11", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 7.15, 3.01, (-270.03), 42.35);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.08, 4.81, (-267.37)]), lua.Table.create([(-10.34), 59.54, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_boss");
        var dynMainJuBossMovement2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 4.09, 3.01, (-269.62), 0.5);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey2, 5.7, 4.46, (-269.71));
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey2, 0, (-270.36), 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.8);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_WALL_THROUGH");
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainJuBossMovement2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        var dynMainDetectiveMovement3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 7.67, 3.01, (-268.49), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 8.65, 3.02, (-269.32), (-58.15));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 7.76, 3.01, (-268.51), 121.21);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.6, 4.46, (-269.03)]), lua.Table.create([(-5.78), 90.65, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2460_talk_12", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainDetectiveMovement3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
