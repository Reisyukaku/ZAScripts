package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C88993A1A7AF538F8")
@:expose("C88993A1A7AF538F8")
class Ev_m07_4010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_friend_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-475.15, 17.23, -874.29]), 138.47, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_holo_pa_boss", lua.Table.create([-476.42, 17.23, -874.66]), -131.53, "npc_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -475.99, 17.24, -875.09, 90.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara01", ("holo_disapp" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("holo_disapp" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -476.42, 18.23, -874.66);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -131.53, 0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_holo_pa_boss", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-475.99, 17.24, -875.09, 90.0);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_YUKIMENOKONAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -475.99, 17.24, -875.09, 141.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_m", true);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-475.6, 18.68, -876.01]), lua.Table.create([-3.79, 163.86, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([-475.83, 18.68, -876.08]), lua.Table.create([-3.79, 163.86, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_holo_pa_boss", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "rejoice_small", "npc_main_pa_boss");
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_04", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-475.91, 18.58, -877.9]), lua.Table.create([-5.79, 174.79, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_DISAPPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -476.42, 18.23, -874.66);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -131.53, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        var fObj_Set_Pos_AngResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_holo_pa_boss", -477.34, 17.23, -873.86, -131.53);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -41.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_holo_pa_boss", "head");
        var fObj_Set_TurnResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", -128.53);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "sad", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Pos_AngResult);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -477.34, 18.23, -873.86);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -131.53, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_holo_pa_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.45);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 21);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_05", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4010_select_01", "msg_Ev_m07_4010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-477.93, 18.63, -874.76]), lua.Table.create([-2.24, -151.93, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_06", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_07", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_holo_pa_boss"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-473.74, 18.53, -875.6]), lua.Table.create([-2.53, 116.92, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "sad", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_holo_pa_boss", "Player", "head");
        var fObj_Set_TurnResult3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_holo_pa_boss", 130.47);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_08", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult3);
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 14);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4010_talk_13", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_holo_pa_boss", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "rejoice_small", "npc_main_pa_boss");
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_14", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_DISAPPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -477.34, 18.23, -873.86);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -131.53, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var fObj_Set_Pos_AngResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_holo_pa_boss", -475.82, 17.23, -874.36, 82.97);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-474.15, 18.59, -875.6]), lua.Table.create([-1.03, 134.38, 0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "normal", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Pos_AngResult2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -475.82, 18.23, -874.36);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, 77.77, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "surprise", "npc_main_friend_m");
        var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4010_talk_15", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_16", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-475.59, 18.65, -876.42]), lua.Table.create([-4.56, 175.99, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_holo_pa_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_holo_pa_boss", 132.98));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 23);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4010_talk_09", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_DISAPPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -475.82, 18.23, -874.36);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, 118.98, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "surprise_mc", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "sad", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-476.2, 18.66, -874.82]), lua.Table.create([-4.31, -108.73, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -475.99, 17.24, -875.09, 5.44);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "sad", "npc_main_friend_m");
        var animationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 25);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4010_talk_10", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter("dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-477.5, 18.67, -875.08]), lua.Table.create([-5.24, -99.21, 0.01]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "rejoice_small", "npc_main_friend_m");
        var animationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4010_talk_11", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction8);
        var animationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4010_talk_12", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "rejoice_small", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_m"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -482.94, (17.23 : Dynamic), (untyped -870.98 : Dynamic), (1.0 : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -65.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_07_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4210")))
        {
            remainingBeforeSecondFlag = (1 : Dynamic);
        }
        else
        {
            remainingBeforeSecondFlag = (2 : Dynamic);
        };
        var remainingObjectives:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue(("flag_Ev_m07_4410" : Dynamic))))
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
            main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m07_4010_talk_03" : Dynamic), ("main_07_01" : Dynamic));
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            if (1 == remainingObjectives)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m07_4010_talk_02" : Dynamic), ("main_07_01" : Dynamic));
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            }
            else
            {
                if (2 == remainingObjectives)
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m07_4010_talk_01" : Dynamic), ("main_07_01" : Dynamic));
                    var hideMessageWindow3:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                    hideMessageWindow3();
                }
                else
                {
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
