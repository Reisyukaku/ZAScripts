package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C4F9706C853387CC4")
@:expose("C4F9706C853387CC4")
class Ev_m03_2500 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_trainer_rankW_rankup"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 14.04, 0.53, -2.11, 90.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_trainer_rankW_rankup", 15.74, 0.52, -2.11, -90.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_trainer_rankW_rankup", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_trainer_rankW_rankup", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([12.82, 1.98, -1.09]), lua.Table.create([-4.28, -60.38, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_trainer_rankW_rankup", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2500_talk_01", "main_03_01", "npc_trainer_rankW_rankup");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction);
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_trainer_rankW_rankup", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2500_talk_02", "main_03_01", "npc_trainer_rankW_rankup");
        var menuSelection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_2500_select_01", "msg_Ev_m03_2500_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var wait_FObj_Action:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        wait_FObj_Action(animationAction2);
        var menuSelectionAfterBranch2:Dynamic = null;
        if ((0 == menuSelection))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            var eventParameters:Dynamic = this.m_eventScriptParam;
            var eventMode:Dynamic = eventParameters.f73EE8FEC();
            var menuSelectionAfterBranch:Dynamic = null;
            if (("0" == eventMode))
            {
                var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_trainer_rankW_rankup", 19);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2500_talk_06", "main_03_01", "npc_trainer_rankW_rankup");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                menuSelectionAfterBranch = (1 : Dynamic);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "serious");
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 8.66, -0.98, -26.49, 90.0);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_trainer_rankW_rankup", 18.4, -1.0, -26.49, -90.0);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([5.45, 0.38, -25.76]), lua.Table.create([-3.76, -76.86, -0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([5.56, 0.38, -25.27]), lua.Table.create([-3.76, -76.86, -0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                var movementAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 13.22, -0.98, -26.48, 1.0);
                var movementAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_trainer_rankW_rankup", 13.81, -1.0, -26.42, 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([13.54, 0.07, -18.5]), lua.Table.create([-2.59, 0.12, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([13.49, 0.31, -25.33]), lua.Table.create([3.16, -0.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(movementAction2);
                main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence("Player", "npc_trainer_rankW_rankup");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.48, 0.26, -25.63]), lua.Table.create([4.78, 48.23, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_trainer_rankW_rankup", 32, null, 3.72);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2500_talk_07", "main_03_01", "npc_trainer_rankW_rankup");
                untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_2500_select_03", "msg_Ev_m03_2500_select_04", "msg_Ev_m03_2500_select_05"]), 0, false, false);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationAction4);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
                var sceneVector:Dynamic = lua.Table.create([12.4, 0.1, -25.63]);
                var sceneVector2:Dynamic = lua.Table.create([10.13, -52.59, -0.0]);
                var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, sceneVector, sceneVector2, 30.0, 0, cameraEase);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "rejoice_big");
                var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_trainer_rankW_rankup", 20);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2500_talk_03", "main_03_01", "npc_trainer_rankW_rankup");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "rejoice_big_mc");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "normal");
                menuSelectionAfterBranch = menuSelection;
            };
            menuSelectionAfterBranch2 = menuSelectionAfterBranch;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_trainer_rankW_rankup", 32, null, 3.72);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2500_talk_04", "main_03_01", "npc_trainer_rankW_rankup");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_trainer_rankW_rankup", "normal");
            var wait_FObj_Action2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var fObj_Reset_AnimationResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_trainer_rankW_rankup");
            wait_FObj_Action2(fObj_Reset_AnimationResult, null, null, null, null, null, null, null, null, null, null, null, null);
            menuSelectionAfterBranch2 = (1 : Dynamic);
        };
        untyped this.m_resultParam = menuSelectionAfterBranch2;
    }
}
