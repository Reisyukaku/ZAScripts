package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCABB08B65D9EC6A3")
@:expose("CCABB08B65D9EC6A3")
class Ev_m03_0091 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main03_0100", "npc_main03_0101", "npc_main03_0102", "npc_main03_0103"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([(-501.46), 0.0, (-319.16)]), (-8.61), "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([(-500.33), 0.01, (-316.18)]), (-1.0), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0110", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0111", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0112", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0113", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0114", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0115", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0116", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0117", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0118", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0119", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main03_0120", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", (-500.48), 0.0, (-313.4), (-173.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main03_0103", (-501.4), 0.0, (-316.08), 172.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main03_0102", (-502.65), 0.0, (-312.72), 159.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main03_0101", (-498.51), 0.0, (-312.75), (-150.3));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main03_0100", (-499.44), 0.0, (-312.71), (-158.8));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-500.67), 0.01, (-318.12), (-0.82));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main03_0103", "sad2");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-501.39), 1.82, (-317.13)]), lua.Table.create([(-2.81), (-174.69), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-501.39), 1.47, (-317.13)]), lua.Table.create([(-2.81), (-174.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_01", "main_03_01", "npc_main03_0103");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-501.51), 1.42, (-318.93)]), lua.Table.create([(-1.34), (-153.01), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", (-500.62), 0.0, (-315.46), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main03_0103", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_02", "main_03_01", "dyn_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_0091_select_01", "msg_Ev_m03_0091_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_03", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.89), 1.68, (-316.25)]), lua.Table.create([13.59, (-143.83), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-501.05), 1.68, (-316.13)]), lua.Table.create([13.59, (-143.83), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main03_0103");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main03_0103", "normal");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main03_0103", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_07", "main_03_01", "dyn_main_ju_boss");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_0091_select_03", "msg_Ev_m03_0091_select_04"]), 0, false, false));
        var cameraVector:Dynamic = lua.Table.create([(-1.34), (-153.01), (-0.0)]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-501.51), 1.42, (-318.93)]), cameraVector, 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
        setFacialTemplate("npc_main03_0103", "normal");
        if (0 == selection)
        {
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_18", "main_03_01", "dyn_main_ju_boss");
            var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            waitFObjAction(setAnimationAction);
        }
        else
        {
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_19", "main_03_01", "dyn_main_ju_boss");
            var waitFObjAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            waitFObjAction2(setAnimationAction3);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-502.12), 1.39, (-317.45)]), lua.Table.create([1.93, (-155.02), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-501.69), 1.39, (-317.65)]), lua.Table.create([1.93, (-155.02), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_20", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-501.16), 1.68, (-316.57)]), lua.Table.create([4.75, (-153.47), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_11", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_0080");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-501.51), 1.42, (-318.93)]), lua.Table.create([(-1.34), (-153.01), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_12", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_04", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_05", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_06", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.89), 1.58, (-316.09)]), lua.Table.create([26.18, (-154.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-501.06), 1.31, (-316.45)]), lua.Table.create([26.18, (-154.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_0091_MUSCLE_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_0091_talk_17", "main_03_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS_3S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-502.92), 1.31, (-320.44)]), lua.Table.create([(-3.51), (-148.97), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", (-520.71), 0.0, (-307.53), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main03_0103");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main03_0103", (-514.24), 0.0, (-316.08), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_M12DB_T5000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-70.03));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main03_0102", (-514.24), 0.0, (-312.72), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main03_0100", (-514.24), 0.0, (-312.75), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main03_0101", (-514.24), 0.0, (-312.75), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", (-501.46), 0.0, (-319.16), 21.89);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-501.27), 1.46, (-320.77)]), lua.Table.create([(-7.18), (-177.23), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_08", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-151.75));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_09", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0091_talk_10", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", (-473.37), 0.0, (-307.61), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.75), 1.93, (-320.21)]), lua.Table.create([(-8.04), (-178.61), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 5.47);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
