package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C45850BBB8440E46D")
@:expose("C45850BBB8440E46D")
class Ev_sub_114_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub114_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -687.81, 6.15, -508.03, -69.31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub114_001", -689.0, 6.13, -506.78, -157.81);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([-690.72, 6.13, -502.12]), 155.54, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GORONDA_1", lua.Table.create([-691.87, 6.11, -510.04]), 33.32, 675, 0, 0, "event_script", 0, true, false, null, true, false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GORONDA_2", lua.Table.create([-688.57, 6.12, -513.25]), -14.49, 675, 0, 0, "event_script", 0, true, false, null, true, false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("GORONDA_1", 35);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("GORONDA_2", 53);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "GORONDA_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "GORONDA_1", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 1);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.37, 8.91, -503.16]), lua.Table.create([-6.59, 2.59, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-689.37, 7.86, -503.16]), lua.Table.create([-6.59, 2.59, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub114_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub114_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "rejoice_big");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_01", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_big_mc");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_1", 69);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_2", 99);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "GORONDA_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "GORONDA_1", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_1", 26);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_02", "sub_114");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub114_001", -48.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub114_001", lua.Table.create([-693.96, 6.23, -490.74]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub114_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_03", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("GORONDA_1", lua.Table.create([-693.96, 6.23, -490.74]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_2", 25);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GORONDA_1", -693.96, 6.23, -490.74, -20.62);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GORONDA_2", -692.14, 6.12, -496.41, -15.67);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("GORONDA_1", -699.14, 6.14, -477.24, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-685.96, 6.99, -503.09]), lua.Table.create([1.97, 141.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-685.05, 6.94, -504.21]), lua.Table.create([1.97, 141.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("GORONDA_2", -696.96, 6.23, -483.07, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -687.19, 6.13, -506.51, -51.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub114_001", -688.32, 6.12, -507.01, -25.49);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", -688.79, 6.13, -505.7, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "npc_sub114_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-682.17, 10.14, -507.71]), lua.Table.create([-26.0, 101.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-683.0, 9.73, -507.54]), lua.Table.create([-26.0, 101.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_04", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "npc_sub114_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_05", "sub_114", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.73, 8.14, -503.29]), lua.Table.create([-13.76, 10.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_06", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "smile");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub114_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_07", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub114_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 19);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_08", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-685.53, 8.04, -505.33]), lua.Table.create([-8.88, 70.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-686.01, 7.96, -505.5]), lua.Table.create([-8.88, 70.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_09", "sub_114", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_10", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_11", "sub_114", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_12", "sub_114", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.8, 7.72, -506.55]), lua.Table.create([6.04, 128.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_13", "sub_114", "dyn_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_14", "sub_114", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-688.28, 7.62, -505.97]), lua.Table.create([-6.17, 5.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_15", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.73, 8.14, -503.29]), lua.Table.create([-13.76, 10.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub114_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_030_talk_16", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0114");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
