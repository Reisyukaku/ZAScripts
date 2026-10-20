package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C1108CAA291D54E54")
@:expose("C1108CAA291D54E54")
class Ev_m02_1050 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_ZURUGGU", lua.Table.create([-537.34, 0.01, -978.82]), 113.33, 559, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-541.09, 0.01, -975.12]), 128.5, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -536.21, 0.16, -982.51, -0.13);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-537.68, 1.34, -979.59]), lua.Table.create([0.92, -33.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var movementAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -536.2, 0.01, -978.77, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZURUGGU", -539.77, 0.01, -975.66, 143.83);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.69, 0.21, -974.42]), lua.Table.create([4.7, -30.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-540.1, 0.21, -974.67]), lua.Table.create([4.7, -30.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_ZURUGGU", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -47.37);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_01", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -541.98, 0.01, -974.46, 128.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZURUGGU", -540.0, 0.01, -974.8, 131.83);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.29, 0.59, -977.1]), lua.Table.create([-10.93, 173.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_ZURUGGU", -537.51, 0.01, -976.99, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -537.66, 0.01, -977.84, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-536.8, 0.31, -978.45]), lua.Table.create([-2.37, 125.77, 0.0]), 35.84, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-536.8, 1.36, -978.45]), lua.Table.create([-2.37, 125.77, 0.0]), 35.84, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_ZURUGGU", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_02", "main_02_01", "dyn_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_1050_select_01", "msg_Ev_m02_1050_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-536.0, 1.51, -980.14]), lua.Table.create([-12.78, 157.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_ZURUGGU", 17);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_03", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_04", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-536.83, 1.33, -978.44]), lua.Table.create([-0.2, 139.4, 0.0]), 36.39, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-536.99, 1.33, -978.58]), lua.Table.create([-0.2, 139.4, 0.0]), 36.39, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_05", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_06", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_07", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_08", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_09", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-538.62, 0.87, -978.12]), lua.Table.create([-12.06, -86.92, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-538.62, 1.49, -978.12]), lua.Table.create([-12.06, -86.92, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        var animationAction3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_15", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-537.08, 1.22, -978.55]), lua.Table.create([3.07, 143.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-537.87, 1.4, -978.46]), lua.Table.create([-5.43, -88.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -536.89, 0.01, -978.32, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_13", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-537.12, 1.38, -978.67]), lua.Table.create([-0.8, -82.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_S_ITEM_GET_EVENT");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m02_1050_talk_16", "main_02_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_ZURUGGU");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Suspend();
        var isMaleResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.IsMale();
        if (lua.abi.Host.truthy(isMaleResult))
        {
            var characterDressup:Dynamic = untyped main.event.ik.command.IkScriptCommand.CharacterDressup;
            untyped characterDressup(6, "p0_hdw0000_00_default_normal_07");
        }
        else
        {
            var characterDressup2:Dynamic = untyped main.event.ik.command.IkScriptCommand.CharacterDressup;
            untyped characterDressup2(6, "p0_hdw0000_00_default_normal_08");
        };
        main.event.ik.command.IkScriptCommand.CharacterDressupSave();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FOLEY_HAT");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-536.9, 1.4, -978.31]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_ZURUGGU", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-537.04, 1.47, -978.83]), lua.Table.create([-0.54, -81.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.7, lua.Table.create([-537.02, 1.47, -978.69]), lua.Table.create([-0.54, -81.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -536.2, 0.01, -978.77, -65.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -536.9, 0.01, -978.31, 121.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZURUGGU", -537.34, 0.01, -976.99, 152.27);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-535.54, 1.67, -978.69]), lua.Table.create([-13.53, 82.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-535.15, 1.59, -978.48]), lua.Table.create([-13.53, 82.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 174));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_14", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-534.39, 1.55, -978.59]), lua.Table.create([-14.7, 94.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_ZURUGGU", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_10", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.OpenTips("tips_0070");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1050_talk_11", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -536.9, 0.01, -978.31, 121.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -536.2, 0.01, -978.77, -65.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZURUGGU", -537.49, 0.01, -977.1, 136.27);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-532.79, 0.77, -975.44]), lua.Table.create([0.54, 57.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -530.15, 0.01, -975.35, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_ZURUGGU");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_ZURUGGU", 63.27));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_ZURUGGU");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_ZURUGGU", -529.84, 0.01, -973.87, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 65.71);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_12", "main_02_01", "dyn_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_1050_select_03", "msg_Ev_m02_1050_select_04"]), 0, false, false);
        var sD2850AEE9F875155Result:Dynamic = untyped main.event.ik.command.IkScriptCommand.SD2850AEE9F875155("field_item302a_a0102_003");
        if (lua.abi.Host.truthy(sD2850AEE9F875155Result))
        {
            var sD2850AEE9F875155Result2:Dynamic = untyped main.event.ik.command.IkScriptCommand.SD2850AEE9F875155("field_item302a_a0102_002");
            if (lua.abi.Host.truthy(sD2850AEE9F875155Result2))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_20", "main_02_01", "dyn_main_friend_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-535.17, 1.51, -979.26]), lua.Table.create([-9.04, 129.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-535.07, 1.51, -979.14]), lua.Table.create([-9.04, 129.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-547.11, 1.72, -963.87]));
                main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_21", "main_02_01", "dyn_main_friend_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.77, 1.57, -967.55]), lua.Table.create([-4.57, 147.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-545.07, 1.53, -967.08]), lua.Table.create([-4.57, 147.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.LookAtRotomPhone("Player");
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.OpenTips("tips_0081");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                var sceneVector:Dynamic = lua.Table.create([-535.38, 1.58, -977.6]);
                var sceneVector2:Dynamic = lua.Table.create([-14.47, 30.72, 0.0]);
                var cameraEase:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector, sceneVector2, 40.0, 0, cameraEase);
                untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            }
            else
            {
            };
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_20", "main_02_01", "dyn_main_friend_m");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_21", "main_02_01", "dyn_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.OpenTips("tips_0081");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m02_1050_talk_22", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000");
    }
}
