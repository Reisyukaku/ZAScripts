package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE478E0A23A331960")
@:expose("CE478E0A23A331960")
class Ev_sys_byebye extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var farewellMessage:Dynamic = ((cast "msg_byebye_talk_01"));
        var confirmationStage:Dynamic = ((cast 0));
        var menuSelection:Dynamic = ((cast 1));
        while ((1 == menuSelection)) {
            var showMessageWindow:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessageWindow;
            showMessageWindow(((cast 2)), farewellMessage, ((cast "byebye")));
            if ((confirmationStage <= 2)) {
                menuSelection = main.event.ik.command.IkScriptCommand.ShowContextMenu((cast (["msg_byebye_select_01", "msg_byebye_select_02"])), ((cast 0)), ((cast false)), ((cast false)));
                if ((0 == menuSelection)) {
                    var hideMessageWindow:Dynamic = main.event.ik.command.IkScriptCommand.HideMessageWindow;
                    hideMessageWindow();
                    confirmationStage = 4;
                } else {
                    if ((1 == menuSelection)) {
                        confirmationStage = (confirmationStage + 1);
                        if ((1 == confirmationStage)) {
                            farewellMessage = "msg_byebye_talk_02";
                        } else {
                            if ((2 == confirmationStage)) {
                                farewellMessage = "msg_byebye_talk_03";
                            } else {
                                if ((3 == confirmationStage)) {
                                    menuSelection = 0;
                                    var hideMessageWindow2:Dynamic = main.event.ik.command.IkScriptCommand.HideMessageWindow;
                                    hideMessageWindow2();
                                } else { };
                            };
                        };
                    } else { };
                };
            } else { };
        };
        if ((3 == confirmationStage)) {
            main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
            cppbindings.C5090F7B8.f92941AC0("SYS_FLAG_TRAVEL_BAG", true);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 7);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-790.91, 2.7, -900.31]), lua.Table.create([-5.11, 35.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -793.08, 1.01, -903.53, -144.21);
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-789.73, 2.7, -898.81]), lua.Table.create([-5.11, 35.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -799.93, 1.01, -912.93, 0.5);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TRAIN_DOOR_CLOSE2");
            main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_byebye_talk_04", "byebye");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_byebye_talk_06", "byebye");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            cppbindings.C5090F7B8.f92941AC0("SYS_FLAG_TRAVEL_BAG", false);
            main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -761.55, 0.16, -872.21, -62.28));
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 70);
            main.event.ik.command.IkScriptCommand.Wait_Time(6.0);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("Player");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-762.35, 3.42, -868.57]), lua.Table.create([-1.83, 0.8, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-762.35, 0.87, -868.57]), lua.Table.create([-1.83, 0.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
            ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_TRAIN_DOOR_CLOSE2");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 4.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_byebye_talk_05", "byebye");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", true);
            main.event.ik.command.IkScriptCommand.Suspend();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -762.43, 0.66, -871.61, -62.28));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ResetToFieldCamera(0.0);
            var executeBGMCommand:Dynamic = ext.gf.audio.SoundCommand.ExecuteBGMCommand;
            executeBGMCommand(((cast "EV_STOP_LYER_EVENT_0S")));
        } else {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-790.68, 2.26, -900.3]), lua.Table.create([-7.59, -143.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-791.53, 2.26, -901.54]), lua.Table.create([-7.59, -143.92, 0.0]), 40.0, 0, cameraEase, ((cast null)), ((cast null)), ((cast null)));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -789.52, 0.16, -898.78, 35.84);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -788.88, ((cast 0.16)), ((cast -897.9)), ((cast 0.5)));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", ((cast 1.0)));
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.SetResetCameraDataAtEventEnd(((cast 0.5)));
            var wait_ResetToFieldCamera:Dynamic = main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera;
            wait_ResetToFieldCamera();
        };
    }
}
