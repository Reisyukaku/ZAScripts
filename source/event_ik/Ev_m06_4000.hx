package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C99840AF4A5C4F668")
@:expose("C99840AF4A5C4F668")
class Ev_m06_4000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_co_boss", "npc_main_co_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait("npc_main_co_boss", "ob0004_00_normal_10");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.0, -0.16, -11.59, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_boss", 15.0, 0.015, -18.51, 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_leader", 15.03, -0.04, -13.5, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_co_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([16.59, 1.28, -9.95]), lua.Table.create([-5.47, 32.2, 0.0]), 30.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_co_leader", 32, null, 3.15);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_01", "main_06_01", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ((("0" == getEventModeResult)))
        {
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_leader", "anger", "npc_main_co_leader");
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_leader", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_02", "main_06_01", "npc_main_co_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
            setFacialTemplate("npc_main_co_leader", "normal", "npc_main_co_leader");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_SUS");
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_co_leader");
            var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_co_leader", 13.49, -0.04, -13.52, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_co_boss", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 15.0, 0.03, -15.08, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_leader", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_co_leader", 90.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "rejoice_small", "npc_main_co_boss");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.23, 1.25, -17.66]), lua.Table.create([-14.9, 26.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.0, 0.03, -15.08, 180.0));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_05_SUS");
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_03", "main_06_01", "npc_main_co_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "normal", "npc_main_co_boss");
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.98, 1.61, -13.54]), lua.Table.create([-8.69, 21.86, -0.0]), 25.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_co_boss", 32, null, 1.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_04", "main_06_01", "npc_main_co_boss");
            var menuLabels:Dynamic = (["msg_Ev_m06_4000_select_01", "msg_Ev_m06_4000_select_02"]);
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (((0 == selection)))
            {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "rejoice_small", "npc_main_co_boss");
                var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 1);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_06", "main_06_01", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.52, 0.01, -30.52, 90.0);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_boss", 18.93, 0.08, -30.75, -90.0);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_co_boss", true);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.26, 0.89, -28.72]), lua.Table.create([-0.7, 1.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.5, lua.Table.create([15.37, 0.97, -22.54]), lua.Table.create([-0.7, 1.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
                var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 23);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_07", "main_06_01", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_4000_select_03", "msg_Ev_m06_4000_select_04"]), 0, false, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var setAnimationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction7);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "normal", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([17.54, 1.16, -30.14]), lua.Table.create([7.48, -60.16, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                var setAnimationAction8:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 14);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_08", "main_06_01", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction8);
                var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_co_boss", 15.5, 0.0, -30.75, 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                var moveToPosXYZAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 14.86, 0.01, -30.75, 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.14, 1.09, -26.56]), lua.Table.create([-1.63, 0.65, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.2, 1.4, -29.66]), lua.Table.create([-1.63, 0.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction3);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence("Player", "npc_main_co_boss", "ob0004_00_normal_10");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.07, 0.93, -29.63]), lua.Table.create([13.35, -43.71, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var setAnimationAction9:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 22);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_10", "main_06_01", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction9);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([16.55, 0.87, -29.9]), lua.Table.create([14.27, 58.25, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var setAnimationAction10:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 24);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_11", "main_06_01", "npc_main_co_boss");
                untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_4000_select_05", "msg_Ev_m06_4000_select_06", "msg_Ev_m06_4000_select_07"]), 0, false, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var setAnimationAction11:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction10);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction11);
                var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.07, 0.93, -29.63]), lua.Table.create([13.35, -43.71, 0.0]), 25.0, 0, cameraEase3);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var setAnimationAction12:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 23);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_09", "main_06_01", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction12);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "normal", "npc_main_co_boss");
                untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_co_boss");
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "anger", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 175);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_4000_talk_05", "main_06_01", "npc_main_co_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_leader", 15.03, untyped -0.04, untyped -13.5, 0.0);
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            };
            untyped this.m_resultParam = selection;
        };
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
