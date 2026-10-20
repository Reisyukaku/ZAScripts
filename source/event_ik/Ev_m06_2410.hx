package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3D58C524E86389C3")
@:expose("C3D58C524E86389C3")
class Ev_m06_2410 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-339.96, -5.27, -789.21]), 50.19, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_f", lua.Table.create([-333.55, -5.27, -798.1]), -58.6, "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ZIGARUDE", lua.Table.create([-345.32, 0.32, -781.0]), 144.4, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -339.06, -5.26, -788.46, -20.17));
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/z_move/z_move_disapp", ("ziga_disapp" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("ziga_disapp" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("ziga_disapp" : Dynamic), -342.46, 0.32, -779.0);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("ziga_disapp" : Dynamic), 0, 64.4, 0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ZIGARUDE", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_f", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-339.06, -5.26, -788.46, -20.17);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_GAMENODESUNAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -339.06, -5.26, -788.46, -129.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-337.58, -3.81, -788.51]), lua.Table.create([-4.88, 82.85, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_17", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("ZIGARUDE", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m06_2410_talk_18", "main_06_01", null, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "surprise", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("ZIGARUDE"));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "sad", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-335.47, -6.15, -794.33]), lua.Table.create([20.96, 143.41, -0.87]), 15.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-336.52, -5.47, -792.91]), lua.Table.create([20.96, 143.41, -0.87]), 15.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "ZIGARUDE");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var fObj_Set_Turn_To_ObjResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_friend_f", "ZIGARUDE");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-342.12, 0.52, -781.83]), lua.Table.create([4.13, 104.67, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("ZIGARUDE");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("ZIGARUDE", 64.4));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-337.98, 2.78, -781.2]), lua.Table.create([-22.84, 104.67, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("ZIGARUDE", -341.23, 0.32, -778.25, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_MOVE_FAST");
        main.event.ik.command.IkScriptCommand.PlayEffect(("ziga_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("ZIGARUDE", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_f", true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_f", -334.93, -5.27, -796.32, 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-331.87, -3.9, -798.23]), lua.Table.create([-3.03, 142.16, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-332.47, -3.9, -798.5]), lua.Table.create([-3.03, 142.16, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2410_talk_04", "main_06_01", "dyn_main_f", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_friend_f", "dyn_main_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-339.18, -3.93, -785.42]), lua.Table.create([-2.39, -9.91, -0.02]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_08");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-339.59, -3.93, -785.42]), lua.Table.create([-2.39, -9.91, -0.02]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_f", 32, null, 2.68);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_05", "main_06_01", "dyn_main_f");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_2410_select_01", "msg_Ev_m06_2410_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-335.44, -3.58, -794.59]), lua.Table.create([-1.04, -9.29, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_f", "rejoice_small", "npc_main_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_06", "main_06_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_f", "normal", "npc_main_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-336.99, -5.48, -792.02]), lua.Table.create([18.32, -25.93, -0.02]), 15.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(12.0, lua.Table.create([-336.06, -4.54, -793.93]), lua.Table.create([19.05, -25.93, 0.0]), 15.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_07", "main_06_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_f", "surprise_mc", "npc_main_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_08", "main_06_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_f", "serious", "npc_main_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_f"));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_f");
        var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_09", "main_06_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-339.53, -1.65, -782.85]), lua.Table.create([-20.23, -3.76, -0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(8.0, lua.Table.create([-338.78, -1.65, -782.8]), lua.Table.create([-20.23, -3.76, -0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_f", "normal", "npc_main_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 27);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_10", "main_06_01", "dyn_main_f");
        var fObj_Reset_AnimationResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_11", "main_06_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_f", -334.93, -5.27, -796.32, -32.6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-335.32, -3.62, -794.12]), lua.Table.create([-3.02, -4.29, -1.1]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Reset_AnimationResult);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_f", "head");
        var animationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_12", "main_06_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_f", -325.4, -5.27, -809.85, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T5000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-339.9, -3.92, -783.79]), lua.Table.create([-2.53, -13.69, -0.02]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([-339.9, -3.92, -783.79]), lua.Table.create([-1.85, -15.33, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-337.31, -3.92, -790.08]), lua.Table.create([-2.68, 121.14, -1.1]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_f", false);
        var animationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_13", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction8);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_14", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-337.58, -3.81, -788.51]), lua.Table.create([-4.88, 82.85, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        var fObj_Set_Turn_To_ObjResult3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_friend_f", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var fObj_Set_Turn_To_ObjResult4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_15", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult4);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_big_mc", "npc_main_friend_f");
        var animationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 29);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2410_talk_16", "main_06_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_f"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_f", -325.4, -5.27, -809.85, 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-335.57, -3.96, -791.02]), lua.Table.create([-4.05, 124.58, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small_mc", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 165.33);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-335.82, -3.96, -791.48]), lua.Table.create([-4.04, 124.58, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_06_03");
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m06_2210")))
        {
            remainingBeforeSecondFlag = (1 : Dynamic);
        }
        else
        {
            remainingBeforeSecondFlag = (2 : Dynamic);
        };
        var remainingObjectives:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m06_2610")))
        {
            var remainingAfterSecondFlag:Dynamic = untyped remainingBeforeSecondFlag - 1;
            remainingObjectives = remainingAfterSecondFlag;
        }
        else
        {
            remainingObjectives = remainingBeforeSecondFlag;
        };
        if (0 == remainingObjectives)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_2410_talk_03", "main_06_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            if (1 == remainingObjectives)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_2410_talk_02", "main_06_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if (2 == remainingObjectives)
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_2410_talk_01", "main_06_01");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -338.69, -5.26, -788.96, 143.29));
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
