package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C10220D66640AC4ED")
@:expose("C10220D66640AC4ED")
class Ev_m05_1100 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main05_0001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_5S_LOW");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -691.64, 6.13, -491.81, 170.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main05_0001", -688.16, 6.12, -506.71, -118.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var sceneVector:Dynamic = lua.Table.create([-692.93, 7.91, -492.27]);
        var sceneVector2:Dynamic = lua.Table.create([-5.94, 24.37, 0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector, sceneVector2, 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector3:Dynamic = lua.Table.create([-687.49, 7.91, -494.43]);
        var sceneVector4:Dynamic = lua.Table.create([-5.94, 15.09, 0.0]);
        var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase2);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.51);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -690.36, 6.13, -498.8, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var sceneVector5:Dynamic = lua.Table.create([-688.09, 7.56, -505.51]);
        var sceneVector6:Dynamic = lua.Table.create([-0.3, 12.46, -0.0]);
        var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main05_0001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "surprise2");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main05_0001", -15.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -690.36, 6.13, -498.8, 170.56);
        var sceneVector7:Dynamic = lua.Table.create([-689.74, 7.65, -497.42]);
        var sceneVector8:Dynamic = lua.Table.create([-10.31, 13.85, -0.0]);
        var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase4, null, (null : Dynamic), (null : Dynamic), (null : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "surprise_mc");
        var movementAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main05_0001", -689.85, 6.12, -501.02, 0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_01", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_1100_select_01", "msg_Ev_m05_1100_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_02", "main_05_01", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, ("msg_Ev_m05_1100_talk_03" : Dynamic), ("main_05_01" : Dynamic), ("npc_main05_0001" : Dynamic));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = untyped eventParameters.f73EE8FEC();
        if ("1" == eventMode)
        {
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector9:Dynamic = lua.Table.create([-689.72, 7.59, -500.16]);
            var sceneVector10:Dynamic = lua.Table.create([-1.03, 9.33, -0.0]);
            var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle((0.0 : Dynamic), sceneVector9, sceneVector10, (40.0 : Dynamic), (0 : Dynamic), cameraEase5, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_04", "main_05_01", "npc_main05_0001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
            untyped this.m_resultParam = 2;
        }
        else
        {
            var sceneVector11:Dynamic = lua.Table.create([-689.72, 7.59, -500.16]);
            var sceneVector12:Dynamic = lua.Table.create([-1.03, 9.33, -0.0]);
            var cameraEase6:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector11, sceneVector12, 40.0, 0, cameraEase6);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_05", "main_05_01", "npc_main05_0001");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_06", "main_05_01", "npc_main05_0001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var sceneVector13:Dynamic = lua.Table.create([-689.74, 7.65, -497.42]);
            var sceneVector14:Dynamic = lua.Table.create([-10.31, 13.85, -0.0]);
            var cameraEase7:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector13, sceneVector14, 40.0, (0 : Dynamic), cameraEase7, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_07", "main_05_01", "npc_main05_0001");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_10", "main_05_01", "npc_main05_0001");
            var showContextMenu:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu;
            var dialogueChoices:Dynamic = [null, null];
            untyped dialogueChoices[0] = "msg_Ev_m05_1100_select_03";
            untyped dialogueChoices[1] = "msg_Ev_m05_1100_select_04";
            var showContextMenuResult:Dynamic = showContextMenu(dialogueChoices, 0, true, false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
            if (0 == showContextMenuResult)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 18);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_09", "main_05_01", "npc_main05_0001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_03");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
                untyped this.m_resultParam = showContextMenuResult;
            }
            else
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "sad2");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_08", "main_05_01", "npc_main05_0001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
                untyped this.m_resultParam = showContextMenuResult;
            };
        };
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main05_0001", -687.72, 6.11, -508.76, -15.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
