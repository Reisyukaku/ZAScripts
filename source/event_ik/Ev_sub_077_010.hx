package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD96B60F745C9706B")
@:expose("CD96B60F745C9706B")
class Ev_sub_077_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub077_001", "npc_sub077_002", "npc_sub077_003", "npc_sub077_004", "npc_sub077_005"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -620.13, 0.26, -257.02, -25.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_002", -620.71, 0.26, -254.3, 161.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_004", -621.54, 0.26, -253.83, 143.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_003", -622.44, 0.26, -254.08, 135.24);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub077_005", -622.22, 0.26, -255.52, 121.22);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-619.82, 1.82, -258.48]), lua.Table.create([-15.01, 172.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-620.32, 1.82, -258.54]), lua.Table.create([-15.01, 172.82, 0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_01", "sub_077", "npc_sub077_001");
        var menuLabels:Dynamic = (["msg_Ev_sub_077_010_select_01", "msg_Ev_sub_077_010_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ((1 == menuSelection))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_077_010_talk_02", "sub_077", "npc_sub077_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_077_010_talk_03", "sub_077", "npc_sub077_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_001", 3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "npc_sub077_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "npc_sub077_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "npc_sub077_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "npc_sub077_001", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_04", "sub_077", "npc_sub077_001");
            var menuSelection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_077_010_select_11", "msg_Ev_sub_077_010_select_12", "msg_Ev_sub_077_010_select_13"]), 0, false, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-621.56, 1.38, -256.53]), lua.Table.create([4.76, -74.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-625.48, 1.74, -254.1]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-625.15, 1.74, -253.26]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_001", 3);
            var wrongAnswersAfterFirstQuestion11:Dynamic = null;
            if ((0 == menuSelection2))
            {
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "anger");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_05", "sub_077", "npc_sub077_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                wrongAnswersAfterFirstQuestion11 = (4 : Dynamic);
            }
            else
            {
                var wrongAnswersAfterFirstQuestion7:Dynamic = null;
                if ((1 == menuSelection2))
                {
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "rejoice_small_mc");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_06", "sub_077", "npc_sub077_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    wrongAnswersAfterFirstQuestion7 = (3 : Dynamic);
                }
                else
                {
                    if ((2 == menuSelection2))
                    {
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "anger");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 175);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_07", "sub_077", "npc_sub077_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    }
                    else
                    {
                    };
                    wrongAnswersAfterFirstQuestion7 = (4 : Dynamic);
                };
                wrongAnswersAfterFirstQuestion11 = wrongAnswersAfterFirstQuestion7;
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "normal");
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_004", 3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_004", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "npc_sub077_004", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "npc_sub077_004", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "npc_sub077_004", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "npc_sub077_004", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_08", "sub_077", "npc_sub077_004");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_09", "sub_077", "npc_sub077_004");
            var menuSelection3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_077_010_select_21", "msg_Ev_sub_077_010_select_22", "msg_Ev_sub_077_010_select_23"]), 0, false, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-621.56, 1.38, -256.53]), lua.Table.create([4.76, -74.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-625.48, 1.74, -254.1]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-625.15, 1.74, -253.26]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_004", 3);
            var wrongAnswersAfterQuestion:Dynamic = null;
            if ((0 == menuSelection3))
            {
                var decrementedWrongAnswers:Dynamic = untyped wrongAnswersAfterFirstQuestion11 - 1;
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "rejoice_small_mc");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_004", 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_10", "sub_077", "npc_sub077_004");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                wrongAnswersAfterQuestion = decrementedWrongAnswers;
            }
            else
            {
                if ((1 == menuSelection3))
                {
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_004", "anger");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_004", 175);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_11", "sub_077", "npc_sub077_004");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                }
                else
                {
                    if ((2 == menuSelection3))
                    {
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_004", "anger");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_004", 175);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_12", "sub_077", "npc_sub077_004");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    }
                    else
                    {
                    };
                };
                wrongAnswersAfterQuestion = wrongAnswersAfterFirstQuestion11;
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_004", "normal");
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_003", 3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_13", "sub_077", "npc_sub077_003");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_14", "sub_077", "npc_sub077_003");
            var menuSelection4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_077_010_select_31", "msg_Ev_sub_077_010_select_32", "msg_Ev_sub_077_010_select_33"]), 0, false, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-621.56, 1.38, -256.53]), lua.Table.create([4.76, -74.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-625.48, 1.74, -254.1]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-625.15, 1.74, -253.26]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_003", 3);
            var wrongAnswersAfterQuestion4:Dynamic = null;
            if ((0 == menuSelection4))
            {
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "sad");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_003", 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_15", "sub_077", "npc_sub077_003");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                wrongAnswersAfterQuestion4 = wrongAnswersAfterQuestion;
            }
            else
            {
                var wrongAnswersAfterQuestion3:Dynamic = null;
                if ((1 == menuSelection4))
                {
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "sad");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_003", 175);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_16", "sub_077", "npc_sub077_003");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    wrongAnswersAfterQuestion3 = wrongAnswersAfterQuestion;
                }
                else
                {
                    var wrongAnswersAfterQuestion2:Dynamic = null;
                    if ((2 == menuSelection4))
                    {
                        var decrementedWrongAnswers2:Dynamic = untyped wrongAnswersAfterQuestion - 1;
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "rejoice_small_mc");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_003", 174);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_17", "sub_077", "npc_sub077_003");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        wrongAnswersAfterQuestion2 = decrementedWrongAnswers2;
                    }
                    else
                    {
                        wrongAnswersAfterQuestion2 = wrongAnswersAfterQuestion;
                    };
                    wrongAnswersAfterQuestion3 = wrongAnswersAfterQuestion2;
                };
                wrongAnswersAfterQuestion4 = wrongAnswersAfterQuestion3;
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "normal");
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_002", 3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_002", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "npc_sub077_002", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "npc_sub077_002", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "npc_sub077_002", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "npc_sub077_002", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_18", "sub_077", "npc_sub077_002");
            var menuSelection5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_077_010_select_41", "msg_Ev_sub_077_010_select_42", "msg_Ev_sub_077_010_select_43"]), 0, false, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-621.56, 1.38, -256.53]), lua.Table.create([4.76, -74.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-625.48, 1.74, -254.1]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-625.15, 1.74, -253.26]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_002", 3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "npc_sub077_002", "head");
            var wrongAnswersAfterQuestion6:Dynamic = null;
            if ((0 == menuSelection5))
            {
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "smile_bitter");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_002", 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_20", "sub_077", "npc_sub077_002");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                wrongAnswersAfterQuestion6 = wrongAnswersAfterQuestion4;
            }
            else
            {
                var wrongAnswersAfterQuestion5:Dynamic = null;
                if ((1 == menuSelection5))
                {
                    var decrementedWrongAnswers3:Dynamic = untyped wrongAnswersAfterQuestion4 - 1;
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "rejoice_small_mc");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_002", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_21", "sub_077", "npc_sub077_002");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    wrongAnswersAfterQuestion5 = decrementedWrongAnswers3;
                }
                else
                {
                    if ((2 == menuSelection5))
                    {
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "smile_bitter");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_002", 175);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_22", "sub_077", "npc_sub077_002");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    }
                    else
                    {
                    };
                    wrongAnswersAfterQuestion5 = wrongAnswersAfterQuestion4;
                };
                wrongAnswersAfterQuestion6 = wrongAnswersAfterQuestion5;
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "normal");
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_005", 3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_005", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "npc_sub077_005", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "npc_sub077_005", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "npc_sub077_005", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "npc_sub077_005", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_23", "sub_077", "npc_sub077_005");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_24", "sub_077", "npc_sub077_005");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_077_010_select_51", "msg_Ev_sub_077_010_select_52", "msg_Ev_sub_077_010_select_53"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-621.56, 1.38, -256.53]), lua.Table.create([4.76, -74.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-625.48, 1.74, -254.1]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-625.15, 1.74, -253.26]), lua.Table.create([-7.93, -68.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub077_005", 3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_005", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_25", "sub_077", "npc_sub077_005");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_005", "normal");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub077_001", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-620.87, 1.3, -256.94]), lua.Table.create([-7.61, 161.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_077_010_talk_26", "sub_077", "npc_sub077_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            if ((0 == wrongAnswersAfterQuestion6))
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "rejoice_big_mc");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "rejoice_big_mc");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "rejoice_big_mc");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_004", "rejoice_big_mc");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_005", "rejoice_big_mc");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_27", "sub_077", "npc_sub077_001");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                if ((4 == wrongAnswersAfterQuestion6))
                {
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "sad");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "sad");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "sad");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_004", "sad");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_005", "sad");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 175);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_29", "sub_077", "npc_sub077_001");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "smile_bitter");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "smile_bitter");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "smile_bitter");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_004", "smile_bitter");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_005", "smile_bitter");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_28", "sub_077", "npc_sub077_001");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                };
            };
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-620.32, 1.82, -258.54]), lua.Table.create([-15.01, 172.82, 0.0]), 40.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_003", "normal");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_003", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_30", "sub_077", "npc_sub077_003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_001", "normal");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_002", "normal");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_004", "normal");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub077_005", "normal");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "npc_sub077_003", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_005", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_31", "sub_077", "npc_sub077_005");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_002", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_003", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_004", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub077_005", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub077_001", 1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_077_010_talk_32", "sub_077", "npc_sub077_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0077");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        untyped this.m_resultParam = menuSelection;
    }
}
