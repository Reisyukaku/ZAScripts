package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5051FB2778617775")
@:expose("C5051FB2778617775")
class Ev_m04_0070 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -255.04, 0.09, -282.74, 36.48);
        var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_secretary", -253.49, 0.08, -281.0, -150.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_secretary", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_secretary", "Player", "head");
        var cameraVector:Dynamic = lua.Table.create([-256.51, 1.41, -283.09]);
        var cameraVector2:Dynamic = lua.Table.create([-0.45, -114.08, -0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 30.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = eventParameters.f73EE8FEC();
        if ((("1" == eventMode)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_secretary", 32, null, 3.75);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0070_talk_01", "main_04_01", "npc_main_secretary");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var setPosAngAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -254.76, 0.09, -282.74, 30.0);
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_secretary");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
            var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_0070");
            if (((false == flagValue)))
            {
                var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 18);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0070_talk_05", "main_04_01", "npc_main_secretary");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-254.39, 1.61, -281.42]), lua.Table.create([6.33, -110.15, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 28);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0070_talk_06", "main_04_01", "npc_main_secretary");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_secretary"));
                var cameraMoveAngleFov:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov;
                var cameraVector3:Dynamic = lua.Table.create([-253.28, 1.98, -279.48]);
                var cameraVector4:Dynamic = lua.Table.create([-11.55, 18.6, -0.0]);
                var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                cameraMoveAngleFov(0.0, cameraVector3, cameraVector4, 25.0, 0, cameraEase2, null, null, null, null, null, null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            };
            var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_secretary", 32, null, 3.75);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0070_talk_02", "main_04_01", "npc_main_secretary");
            var menuLabels:Dynamic = (["msg_Ev_m04_0070_select_01", "msg_Ev_m04_0070_select_02"]);
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (((0 == selection)))
            {
                var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
                main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_main_secretary", "ob0004_00_normal_08");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -258.99, 0.09, -287.9, 36.98);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_secretary", -255.85, 0.08, -283.58, -143.0);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-262.92, 1.28, -281.76]), lua.Table.create([-2.48, -54.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -257.57, 0.09, -285.95, 1.0);
                var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_secretary", -257.23, 0.08, -285.46, 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_secretary", "Player", "neck");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-258.45, 1.41, -285.0]), lua.Table.create([5.46, -54.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
                main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence("Player", "npc_main_secretary", "ob0004_00_normal_08");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-257.26, 2.03, -284.44]), lua.Table.create([-20.35, 5.18, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 18);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0070_talk_03", "main_04_01", "npc_main_secretary");
                untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_0070_select_03", "msg_Ev_m04_0070_select_04", "msg_Ev_m04_0070_select_05"]), 0, false, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
                var cameraVector5:Dynamic = lua.Table.create([-258.79, 1.18, -286.15]);
                var cameraVector6:Dynamic = lua.Table.create([15.23, -107.49, -0.0]);
                var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector5, cameraVector6, 25.0, 0, cameraEase3);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 20);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0070_talk_07", "main_04_01", "npc_main_secretary");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            }
            else
            {
                var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
                var setAnimationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 19);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0070_talk_04", "main_04_01", "npc_main_secretary");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction6);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var setPosAngAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -254.76, 0.09, -282.74, 30.0);
                waitFObjAction(setPosAngAction4, null, null, null, null, null, null, null, null, null, null);
            };
            untyped this.m_resultParam = selection;
        };
    }
}
