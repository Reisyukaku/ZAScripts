package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA60C897643979BD5")
@:expose("CA60C897643979BD5")
class Ev_sub_079_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub078_001", "npc_sub078_002", "npc_sub078_003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub078_001", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_01", "sub_079", "npc_sub078_001");
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(((["msg_Ev_sub_079_010_select_01", "msg_Ev_sub_079_010_select_02"]) : Dynamic), ((0 : Dynamic)), ((true : Dynamic)), ((false : Dynamic)));
        if (1 == menuSelection)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(((0 : Dynamic)), (("msg_Ev_sub_079_010_talk_02" : Dynamic)), (("sub_079" : Dynamic)), (("npc_sub078_001" : Dynamic)));
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_03", "sub_079", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_MUTE_T0");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_MUTE_T1000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_ON");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line01", (("btl_event_line_eff" : Dynamic)));
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line02", (("btl_event_line2_eff" : Dynamic)));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -591.95, 0.15, -107.82, -161.23);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", -591.1, 0.14, -107.91, -151.73);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_adult_b_m_01", lua.Table.create([-600.02, 0.15, -127.16]), 4.66, "npc_adult_b_m_01");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_tall01_f_03", lua.Table.create([-600.63, 0.14, -127.05]), 8.63, "npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            var getUnitParamInPartyByDevNoResult:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(709);
            var f89B3EEBFResult:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(getUnitParamInPartyByDevNoResult);
            var getAppearanceState:Dynamic = untyped f89B3EEBFResult.fCFD269DB;
            var getAppearanceStateResult:Dynamic = getAppearanceState(f89B3EEBFResult);
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("OOROTTO", lua.Table.create([-601.4, 0.12, -98.03]), -177.81, getUnitParamInPartyByDevNoResult.f0DE6FCA9(), getUnitParamInPartyByDevNoResult.f9E86AD53(), getUnitParamInPartyByDevNoResult.fB31DF589(), "event_script", 0, true, getUnitParamInPartyByDevNoResult.fA284DF88(), getUnitParamInPartyByDevNoResult.f1E57BACE(), getAppearanceStateResult, false);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("OOROTTO", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("OOROTTO", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("btl_event_line_eff" : Dynamic)));
            }));
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("btl_event_line2_eff" : Dynamic)));
            }));
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-588.43, 1.98, -104.89]), lua.Table.create([-7.03, 36.66, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_RESET_T0");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_04", "sub_079", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayEffectSequence((("btl_event_line_eff" : Dynamic)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-594.43, 0.15, -117.98]), lua.Table.create([7.57, 30.88, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-597.2, 0.95, -116.32]), lua.Table.create([7.57, 30.88, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_tall01_f_03", -599.42, 0.14, -119.1, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_adult_b_m_01", -598.36, 0.15, -118.88, 0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_tall01_f_03", "sad");
            main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(0, "msg_Ev_sub_079_010_talk_05", "sub_079", "dyn_npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait("dyn_npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_adult_b_m_01", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(0, "msg_Ev_sub_079_010_talk_06", "sub_079", "dyn_npc_adult_b_m_01");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.7);
            main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait("dyn_npc_adult_b_m_01");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_tall01_f_03", "sad");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_adult_b_m_01", "normal");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_tall01_f_03", 27);
            main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(0, "msg_Ev_sub_079_010_talk_17", "sub_079", "dyn_npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
            main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait("dyn_npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult_b_m_01", 27);
            main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(0, "msg_Ev_sub_079_010_talk_18", "sub_079", "dyn_npc_adult_b_m_01");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait("dyn_npc_adult_b_m_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("OOROTTO", -602.03, 0.11, -96.83, 173.72);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("OOROTTO", -601.25, 0.11, -101.01, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("OOROTTO", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-604.84, 4.33, -104.97]), lua.Table.create([-30.49, -163.19, -0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_adult_b_m_01", -598.36, 0.15, -118.97, -33.14);
            var fObj_Set_Pos_Ang:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang((("dyn_npc_tall01_f_03" : Dynamic)), ((untyped -599.27 : Dynamic)), ((0.14 : Dynamic)), ((untyped -119.43 : Dynamic)), ((untyped -12.61 : Dynamic)));
            if (lua.abi.Host.truthy(getAppearanceStateResult))
            {
                var fObj_Set_Pos_Ang2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
                fObj_Set_Pos_Ang2((("OOROTTO" : Dynamic)), ((untyped -615.43 : Dynamic)), ((untyped -0.28 : Dynamic)), ((untyped -104.67 : Dynamic)), ((148.87 : Dynamic)));
            }
            else
            {
                var fObj_Set_Pos_Ang3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
                fObj_Set_Pos_Ang3((("OOROTTO" : Dynamic)), ((untyped -615.45 : Dynamic)), ((0.16 : Dynamic)), ((untyped -104.1 : Dynamic)), ((156.26 : Dynamic)));
            };
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-607.38, 0.95, -112.78]), lua.Table.create([4.93, -60.59, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            camera_Move_Angle(((5.0 : Dynamic)), (lua.Table.create([-615.66, 1.19, -107.09]) : Dynamic), (lua.Table.create([3.75, -60.75, 0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            if (lua.abi.Host.truthy(getAppearanceStateResult))
            {
                var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var movementAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("OOROTTO", -612.72, -0.28, -107.52, 0.5);
                wait_FObj_Action(movementAction, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            }
            else
            {
                var wait_FObj_Action2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var movementAction2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("OOROTTO", -613.5, 0.16, -107.33, 0.5);
                wait_FObj_Action2(movementAction2, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            };
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("OOROTTO", -602.65, 0.12, -112.84, 146.69);
            var fObj_Set_Pos_Ang4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang4((("dyn_npc_adult_b_m_01" : Dynamic)), ((untyped -598.53 : Dynamic)), ((0.15 : Dynamic)), ((untyped -119.72 : Dynamic)), ((11.39 : Dynamic)));
            if (lua.abi.Host.truthy(getAppearanceStateResult))
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-599.34, 0.42, -117.4]), lua.Table.create([-6.24, 143.93, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var camera_Move_Angle2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                camera_Move_Angle2(((4.0 : Dynamic)), (lua.Table.create([-599.34, 2.05, -117.4]) : Dynamic), (lua.Table.create([-6.24, 143.93, 0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase2, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-600.02, 0.41, -116.46]), lua.Table.create([-6.24, 143.93, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var camera_Move_Angle3:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                camera_Move_Angle3(((4.0 : Dynamic)), (lua.Table.create([-600.02, 1.51, -116.46]) : Dynamic), (lua.Table.create([-6.24, 143.93, -0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase3, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            };
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("OOROTTO", ((untyped -601.09 : Dynamic)), ((0.12 : Dynamic)), ((untyped -115.01 : Dynamic)), ((0.5 : Dynamic)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal((("PLAY_SS_COMMON_CAMERA_WHOOSH02_WEAK" : Dynamic)));
            if (lua.abi.Host.truthy(getAppearanceStateResult))
            {
                var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(((0.2 : Dynamic)), (lua.Table.create([-597.69, 2.0, -119.66]) : Dynamic), (lua.Table.create([-6.24, 143.93, 0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase4, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                var wait_Camera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
                wait_Camera();
            }
            else
            {
                var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(((0.2 : Dynamic)), (lua.Table.create([-598.47, 1.38, -118.6]) : Dynamic), (lua.Table.create([-6.24, 143.93, -0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase5, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                var wait_Camera2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
                wait_Camera2();
            };
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("OOROTTO", 20);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_npc_adult_b_m_01");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_07", "sub_079");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("OOROTTO", -600.99, 0.12, -114.96, 149.69);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_adult_b_m_01", -598.36, 0.15, -118.97, -33.14);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_tall01_f_03", -599.27, 0.14, -119.43, -12.61);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH08_WEAK");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-598.76, 1.34, -117.69]), lua.Table.create([12.2, 13.25, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-598.27, 0.84, -116.31]), lua.Table.create([12.2, 13.25, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("dyn_npc_adult_b_m_01", "surprise_mc");
            main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("dyn_npc_tall01_f_03", "surprise_mc");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_tall01_f_03", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_079_010_talk_08", "sub_079", "dyn_npc_tall01_f_03", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.PlayEffectSequence((("btl_event_line2_eff" : Dynamic)));
            main.event.ik.command.IkScriptCommand.FadeEffect((("btl_event_line_eff" : Dynamic)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-598.18, 1.41, -120.41]), lua.Table.create([-3.15, 153.24, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-597.59, 1.41, -121.58]), lua.Table.create([-3.15, 153.24, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("OOROTTO", 20);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_adult_b_m_01", "normal");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_tall01_f_03", "sad2");
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_tall01_f_03", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_09", "sub_079", "dyn_npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -591.85, 0.15, -107.58, -145.23);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", -591.1, 0.15, -107.91, -131.23);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-591.59, 1.92, -109.49]), lua.Table.create([-9.5, 55.25, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-587.72, 1.92, -106.21]), lua.Table.create([-9.5, 55.25, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_079_010_talk_10", "sub_079", "npc_sub078_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", -591.2, 0.15, -108.16, -133.23);
            var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-591.48, 1.56, -109.71]), lua.Table.create([0.95, -175.02, -0.0]), 28.0, 0, cameraEase6, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_tall01_f_03", 28);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 19);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "sad2");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_11", "sub_079", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_tall01_f_03", -599.27, 0.14, -119.43, 9.89);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_adult_b_m_01", -598.41, 0.15, -118.84, -54.64);
            var fObj_Set_Pos_Ang5:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang5((("OOROTTO" : Dynamic)), ((untyped -600.92 : Dynamic)), ((0.12 : Dynamic)), ((untyped -115.78 : Dynamic)), ((156.19 : Dynamic)));
            if (lua.abi.Host.truthy(getAppearanceStateResult))
            {
                var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(((0.0 : Dynamic)), (lua.Table.create([-597.07, 2.36, -121.34]) : Dynamic), (lua.Table.create([-14.86, 142.16, 0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase7, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                var wait_Camera3:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
                wait_Camera3();
            }
            else
            {
                var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(((0.0 : Dynamic)), (lua.Table.create([-597.56, 2.21, -120.96]) : Dynamic), (lua.Table.create([-14.83, 145.07, 0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase8, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                var wait_Camera4:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
                wait_Camera4();
            };
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("OOROTTO", 20);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_adult_b_m_01", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_12", "sub_079", "dyn_npc_adult_b_m_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_13", "sub_079", "dyn_npc_tall01_f_03");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-591.48, 1.56, -109.71]), lua.Table.create([0.95, -175.02, -0.0]), 28.0, ((0 : Dynamic)), cameraEase9, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 21);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_079_010_talk_14", "sub_079", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "anger");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_01");
            main.event.ik.command.IkScriptCommand.ShowMessage(((1 : Dynamic)), (("msg_Ev_sub_079_010_talk_15" : Dynamic)), (("sub_079" : Dynamic)), (("npc_sub078_001" : Dynamic)));
            var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow2();
            if (lua.abi.Host.truthy(getAppearanceStateResult))
            {
                var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(((0.0 : Dynamic)), (lua.Table.create([-597.07, 2.36, -121.34]) : Dynamic), (lua.Table.create([-14.86, 142.16, 0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase10, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                var wait_Camera5:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
                wait_Camera5();
            }
            else
            {
                var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(((0.0 : Dynamic)), (lua.Table.create([-597.56, 2.21, -120.96]) : Dynamic), (lua.Table.create([-14.83, 145.07, 0.0]) : Dynamic), ((28.0 : Dynamic)), ((0 : Dynamic)), cameraEase11, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                var wait_Camera6:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
                wait_Camera6();
            };
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_079_010_talk_16", "sub_079", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0079");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_MUTE_ON");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang((("npc_sub078_001" : Dynamic)), ((untyped -605.23 : Dynamic)), ((0.01 : Dynamic)), ((untyped -164.45 : Dynamic)), ((untyped -90.58 : Dynamic)));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var wait_Fade:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            wait_Fade();
        };
        untyped this.m_resultParam = menuSelection;
    }
}
