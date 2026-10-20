package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC20D8F5B88FFD436")
@:expose("CC20D8F5B88FFD436")
class Ev_m08_3500 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_friend_f", "npc_main_co_leader", "npc_co_member_m_02", "npc_co_member_m_01", "npc_co_member_f_02"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-188.09), 19.53, (-757.11), 33.05);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", (-188.26), 19.52, (-755.89), 96.25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_leader", (-164.22), 19.5, (-748.77), 50.97);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_co_member_m_02", (-185.59), 20.17, (-754.18), (-121.53));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_co_member_m_01", (-164.0), 19.31, (-751.22), 48.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_co_member_f_02", (-166.73), 19.31, (-747.92), 48.42);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_co_member_m_02", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "npc_co_member_m_02", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_co_member_m_02", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "serious", "npc_main_friend_f");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-187.28), 21.2, (-755.8)]), lua.Table.create([(-1.04), (-133.37), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([(-189.15), 21.0, (-757.57)]), lua.Table.create([(-1.04), (-133.37), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_co_member_m_02", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_3500_talk_01", "main_08_01", "npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-185.66), 21.44, (-754.7)]), lua.Table.create([(-14.95), 56.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([(-186.4), 21.2, (-755.2)]), lua.Table.create([(-14.95), 56.22, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_03", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-186.88), 21.55, (-754.92)]), lua.Table.create([(-3.73), (-118.43), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_co_member_m_02", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_05", "main_08_01", "npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-191.52), 21.37, (-757.09)]), lua.Table.create([(-8.58), (-105.28), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_co_member_m_02", "npc_main_friend_f", "head");
        var turnHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_co_member_m_02", 45.55);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_06", "main_08_01", "npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_5S");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_co_member_m_02");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_co_member_m_02", (-179.66), 20.01, (-749.17), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_f", (-181.32), 20.06, (-750.59), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-181.32), 20.06, (-750.59), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-170.94), 19.38, (-748.69), 105.79);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", (-172.15), 19.37, (-748.15), 114.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_co_member_m_02", (-174.92), 19.31, (-747.55), 99.69);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_co_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "npc_main_co_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-167.18), 19.33, (-750.02), 1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_f", (-168.43), 19.31, (-749.11), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-173.76), 21.08, (-748.67)]), lua.Table.create([(-10.3), (-92.68), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-173.76), 21.08, (-748.67)]), lua.Table.create([(-7.98), (-92.07), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_co_member_f_02", "npc_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_co_member_f_02", (-149.79));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_co_member_m_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_co_member_m_01", (-76.08));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-167.24), 21.07, (-749.01)]), lua.Table.create([(-5.15), (-94.9), 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-167.18), 19.33, (-750.02), 60.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", (-168.43), 19.31, (-749.11), 92.1);
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_leader", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.SB70BF7116F3080EE("main_m8_mega_suta");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_07", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_leader", "anger", "npc_main_co_leader");
        var turnHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_co_leader", (-126.03));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_08", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-170.35), 20.81, (-749.7)]), lua.Table.create([(-5.63), (-96.06), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_leader", "normal", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_leader", "npc_main_friend_f", "head");
        var animationHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_09", "main_08_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle6);
        var animationHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_co_leader", 32, null, 3.15);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_10", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-158.8), 22.05, (-749.09)]), lua.Table.create([(-17.38), 85.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_co_leader", lua.Table.create([(-152.87), 15.88, (-747.52)]));
        var turnHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_co_leader", 53.97);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_11", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle8);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-166.17), 22.94, (-748.01)]), lua.Table.create([(-43.29), (-91.6), 0.57]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", (-168.27), 19.32, (-748.59), 93.1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-164.17), 21.06, (-747.96)]), lua.Table.create([(-43.29), (-91.6), 0.57]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-150.87), 3.85, (-746.22)]), lua.Table.create([(-21.41), (-81.86), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-147.81), 2.64, (-746.66)]), lua.Table.create([(-21.41), (-81.86), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_12", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-166.52), 20.8, (-748.57)]), lua.Table.create([(-2.73), 82.74, (-0.0)]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle9 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_friend_f", 32, null, 4.01);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_13", "main_08_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_14", "main_08_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-162.9), 21.24, (-748.35)]), lua.Table.create([(-7.73), 80.92, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_co_leader");
        var animationHandle10 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_leader", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_15", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle9);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle10);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_leader", "normal", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_leader", "npc_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        var animationHandle11 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_leader", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_16", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle11);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "sad", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 25);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_17", "main_08_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-169.7), 20.46, (-750.03)]), lua.Table.create([1.02, (-96.77), 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_co_leader", (-124.53)));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-166.18), 20.44, (-749.1)]), lua.Table.create([12.99, (-95.5), (-0.0)]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var animationHandle12 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_leader", 491);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_leader", "rejoice_small", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_3500_talk_18", "main_08_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle12);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_leader", 1));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_leader", "normal", "npc_main_co_leader");
    }
}
