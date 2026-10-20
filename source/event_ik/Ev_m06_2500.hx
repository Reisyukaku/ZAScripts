package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C44B87A24EC333F85")
@:expose("C44B87A24EC333F85")
class Ev_m06_2500 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_friend_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A04_z02_03_0016", false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_leader", lua.Table.create([-625.79, 0.15, -197.21]), -64.99, "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("tmp_SYANDERA", lua.Table.create([-625.06, 0.51, -197.11]), -76.49, 609, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_ju_leader", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -647.35, 0.01, -192.74, 10.66);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -648.22, 0.14, -188.61, 14.97);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -646.86, 0.15, -190.22, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-647.87, 1.68, -192.18]), lua.Table.create([-4.59, -168.91, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-647.87, 1.4, -192.18]), lua.Table.create([-4.59, -168.91, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "sad", "npc_main_friend_m");
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_01", "main_06_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
        var turnHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", 146.47);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_02", "main_06_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-647.49, 1.56, -189.44]), lua.Table.create([-3.46, 149.02, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "dyn_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_03", "main_06_01", "npc_main_friend_m", false);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_2500_select_01", "msg_Ev_m06_2500_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-649.99, 1.6, -188.37]), lua.Table.create([-3.28, -70.81, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.5, lua.Table.create([-649.38, 1.56, -188.59]), lua.Table.create([-3.28, -70.8, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.99);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-632.65, 1.56, -194.41]), lua.Table.create([-3.28, -70.8, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-631.02, 1.46, -194.98]), lua.Table.create([-3.28, -70.8, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_leader", 15);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_04", "main_06_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var positionHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -632.36, 0.01, -194.64, 110.43);
        var positionHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -632.32, 0.01, -193.78, 110.43);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle4);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle5);
        var moveHandle6 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -626.48, 0.15, -196.13, 2.0);
        var moveHandle7 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_m", -625.81, 0.02, -194.98, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_SYANDERA", -624.13, 0.5, -197.52, -32.49);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-620.68, 1.89, -195.76]), lua.Table.create([-11.36, 82.59, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_leader"));
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_leader", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-624.22, 1.55, -197.08]), lua.Table.create([-4.93, 98.59, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("tmp_SYANDERA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_SYANDERA", -624.13, 0.5, -197.52, -32.49);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_leader", "tmp_SYANDERA", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_leader", "sad", "npc_main_ju_leader");
        var turnHandle9 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_leader", 117.51);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_05", "main_06_01", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-624.9, 1.58, -197.68]), lua.Table.create([-9.43, 142.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "anger", "npc_main_friend_m");
        var turnHandle10 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", 141.47);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_06", "main_06_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_leader", "anger", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_leader", "npc_main_friend_m", "head");
        var turnHandle11 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_leader", 28.51);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_07", "main_06_01", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -626.48, 0.15, -196.13, 145.93);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("tmp_SYANDERA", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-626.34, 1.61, -194.2]), lua.Table.create([-5.53, -2.7, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -625.81, 0.02, -194.98, -168.53);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_leader", "normal", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_leader", "Player", "head");
        var turnHandle12 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_leader", -47.91);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_08", "main_06_01", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle12);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-626.41, 1.39, -193.47]), lua.Table.create([-3.49, -9.13, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
        var animationHandle13 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_friend_m", 32, null, 2.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_09", "main_06_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_leader", 14);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_10", "main_06_01", "dyn_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang("npc_main_friend_m", 168.97);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-626.15, 1.7, -197.54]), lua.Table.create([-9.19, 178.63, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 24);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2500_talk_11", "main_06_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A04_z02_03_0016", true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
