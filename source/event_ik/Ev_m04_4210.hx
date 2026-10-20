package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAA8CE9482B1B6491")
@:expose("CAA8CE9482B1B6491")
class Ev_m04_4210 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_OTAKU:Dynamic;

    @:abiSlot(10)
    public var CHR_KANA:Dynamic;

    @:abiSlot(11)
    public var CHR_PYU:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var hdl_kana:Dynamic;

    public function new()
    {
        this.slot13 = "npc_main_ju_leader";
        this.slot12 = "npc_main04_0004";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_KANA = "dyn_kana";
        this.CHR_OTAKU = "dyn_otaku";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = [slot12, "npc_main_holo_ga_boss", "npc_main_friend_m"];
        return null;
    }

    @:hashAbi("FBDD58087485296DE")
    public function k_HoloEffect(?OBJ_NAME:Dynamic, ?visibility:Dynamic):Dynamic
    {
        var effectKey:String = "holo_disapp_chara02";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara02", effectKey);
        this.Await(function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        });
        var position:lua.Table<Int, Float> = (cast main.event.ik.command.IkScriptCommand.FObj_Get_Pos(OBJ_NAME));
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle(OBJ_NAME);
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(effectKey, (cast position)[1], ((cast position)[2] + 1.3), (cast position)[3]);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(effectKey, 0, angle, 0);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_HUMAN_DISAPPEAR");
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(OBJ_NAME, visibility);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KANA, 1);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_OTAKU, (lua.Table.create([(-56.25), 0.14, (-454.9)]) : Dynamic), (untyped -91.38), this.slot12);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_KANA, (lua.Table.create([(-56.25), 0.14, (-454.9)]) : Dynamic), (untyped -91.38), "npc_main_holo_ga_boss");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_PYU, (lua.Table.create([(-56.25), 0.14, (-454.9)]) : Dynamic), (untyped -91.38), "npc_main_friend_m");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot12, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_main_holo_ga_boss", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.CHR_PYU, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_PLY, (untyped -70.1), 0.15, (untyped -443.92), 168.25);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_OTAKU, (untyped -68.88), 0.14, (untyped -446.46), (untyped -18.0));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_KANA, (untyped -73.62), 1.43, (untyped -446.47), 71.96);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("npc_main_041100_0010", (untyped -66.61), 0.15, (untyped -440.29), (untyped -127.47));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("npc_main_041100_0006", (untyped -65.99), 0.14, (untyped -441.34), (untyped -117.65));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-69.67), 1.53, (-442.26)]) : Dynamic), (lua.Table.create([(-4.87), 0.92, (-0.0)]) : Dynamic), 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_STATE_EV_M04_CHEERS_BASE_RESET");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_03_01");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_VS_END");
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.1, true);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_OTAKU, 22);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4210_talk_01", "main_04_01");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_STATE_EV_M04_CHEERS_BASE_SILENCE");
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-68.49), 0.96, (-443.69)]) : Dynamic), (lua.Table.create([14.69, 74.63, (-0.0)]) : Dynamic), 40.0, 0, cameraEase2);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_03_FADEOUT");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_QUIZ_QUESTION02");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_03_03_A");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(8, "msg_Ev_m04_4210_talk_02", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[10]), (untyped scenario[8]), "head");
            var fObj_Set_Turn_To_ObjResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)((untyped scenario[10]), (untyped scenario[8]));
            untyped scenario[14] = fObj_Set_Turn_To_ObjResult;
            var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait(scenario, 0.5);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[8]), (untyped scenario[10]), "head");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)((untyped scenario[8]), (untyped scenario[10]));
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)((untyped scenario[14]));
            var timeWait2:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait2(scenario, 0.3);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 2);
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_26", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-70.79), 1.34, (-445.08)]) : Dynamic), (lua.Table.create([4.29, (-155.78), 0.0]) : Dynamic), 40.0, 0, cameraEase3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var animationAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_PLY, 28);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m04_4210_talk_03", "main_04_01", this.CHR_PYU);
        var dialogueChoices:Dynamic = [null, null, null, null];
        untyped dialogueChoices[0] = "msg_Ev_m04_4210_select_01";
        untyped dialogueChoices[1] = "msg_Ev_m04_4210_select_02";
        untyped dialogueChoices[2] = (("msg_Ev_m04_4210_select_03" : Dynamic));
        untyped dialogueChoices[3] = (("msg_Ev_m04_4210_select_04" : Dynamic));
        var arrayResult:Dynamic = dialogueChoices;
        while (true)
        {
            var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)(arrayResult, 0, false, false);
            if (3 == menuSelection)
            {
                break;
            }
            else
            {
            };
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHR_PYU:Dynamic = this.CHR_PYU;
            showMessage(((3 : Dynamic)), (("msg_Ev_m04_4210_talk_04" : Dynamic)), (("main_04_01" : Dynamic)), cHR_PYU);
        };
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_PLY, this.CHR_KANA, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_PLY, 18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_03_04");
        this.TimeWait(0.5);
        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-72.21), 2.4699999999999998, (-445.7)]) : Dynamic), (lua.Table.create([8.88, 61.27, 0.0]) : Dynamic), 40.0, 0, cameraEase4);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([(-72.66), 2.6100000000000003, (-445.94)]) : Dynamic), (lua.Table.create([8.88, 61.27, 0.0]) : Dynamic), 40.0, 0, cameraEase5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KANA, 1);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KANA, "rejoice_big", "npc_main_holo_ga_boss");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(7, "msg_Ev_m04_4210_talk_05", "main_04_01", this.CHR_KANA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        var animationAction2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KANA, 20);
        this.hdl_kana = animationAction2;
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KANA, "rejoice_small", "npc_main_holo_ga_boss");
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(1, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.3, (lua.Table.create([(-72.94), 2.7, (-446.09)]) : Dynamic), (lua.Table.create([8.88, 61.27, (-0.0)]) : Dynamic), 40.0, 0, cameraEase6);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_STATE_EV_M04_CHEERS_BASE_RESET");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_CHEERS_L");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_QUIZ_CORRECT_ANSWER");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_03_02");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(7, "msg_Ev_m04_4210_talk_06", "main_04_01", this.CHR_KANA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(this.hdl_kana);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_08", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "rejoice_small", "npc_main_holo_ga_boss");
            var animationAction3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 31);
            untyped scenario[14] = animationAction3;
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-69.67), 1.53, (-442.26)]) : Dynamic), (lua.Table.create([(-4.87), 0.92, (-0.0)]) : Dynamic), 40.0, 0, cameraEase7);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_OTAKU, 22);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4210_talk_09", "main_04_01");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var fObj_Reset_AnimationResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.CHR_KANA);
        this.hdl_kana = fObj_Reset_AnimationResult;
        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-68.49), 0.96, (-443.69)]) : Dynamic), (lua.Table.create([14.69, 74.63, (-0.0)]) : Dynamic), 40.0, 0, cameraEase8, null, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(this.hdl_kana);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KANA, 491);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_10", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            return null;
        }));
        var sceneCallback:Dynamic = function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 1);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 2);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            return null;
        };
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_23", "main_04_01", this.CHR_KANA, null, ((null : Dynamic)), sceneCallback);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_PLY, 28);
        var menuSelection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)(((["msg_Ev_m04_4210_select_05", "msg_Ev_m04_4210_select_06", "msg_Ev_m04_4210_select_07"]) : Dynamic), ((0 : Dynamic)), ((false : Dynamic)), ((false : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        wait_FObj_Action();
        if (0 != menuSelection2)
        {
            var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-70.79), 1.34, (-445.08)]) : Dynamic), (lua.Table.create([4.29, (-155.78), 0.0]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase9, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.CHR_PLY);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_PLY, 18);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m04_4210_talk_11", "main_04_01", this.CHR_PYU);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_PLY, 1);
            var cHR_PYU2:Dynamic = this.CHR_PYU;
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(((3 : Dynamic)), (("msg_Ev_m04_4210_talk_12" : Dynamic)), (("main_04_01" : Dynamic)), cHR_PYU2);
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
        };
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.CHR_PLY);
        this.TimeWait(0.3);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KANA, "normal", "npc_main_holo_ga_boss");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KANA, 1);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-72.6), 2.78, (-446.0)]) : Dynamic), (lua.Table.create([(-0.59), 68.65, (-0.0)]) : Dynamic), 40.0, 0, cameraEase10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_13", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            var timeWait3:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait3(scenario, 0.3);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 21);
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_14", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "serious", "npc_main_holo_ga_boss");
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(0, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-72.75), 2.01, (-446.53)]) : Dynamic), (lua.Table.create([40.86, 99.21, 20.0]) : Dynamic), 40.0, 0, cameraEase11);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(8.0, (lua.Table.create([(-72.75), 2.01, (-446.53)]) : Dynamic), (lua.Table.create([40.86, 99.21, (-0.0)]) : Dynamic), 40.0, 0, cameraEase12);
        this.TimeWait(0.3);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KANA, "lose", "npc_main_holo_ga_boss");
        this.TimeWait(2.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_24", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)((untyped scenario[10]));
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 19);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-72.6), 2.78, (-446.0)]) : Dynamic), (lua.Table.create([(-0.59), 68.65, (-0.0)]) : Dynamic), 40.0, 0, cameraEase13);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_15", "main_04_01", this.CHR_KANA, false, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "normal", "npc_main_holo_ga_boss");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 28);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            return null;
        }));
        var fObj_Reset_AnimationResult2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.CHR_KANA);
        this.hdl_kana = fObj_Reset_AnimationResult2;
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_16", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)((untyped scenario[10]));
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "normal", "npc_main_holo_ga_boss");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 2);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_17", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "rejoice_small", "npc_main_holo_ga_boss");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 174);
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(7, "msg_Ev_m04_4210_talk_18", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 491);
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(8, "msg_Ev_m04_4210_talk_25", "main_04_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "normal", "npc_main_holo_ga_boss");
            (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_EV_M04_4210_OTAKU_WHOOSH04");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[10]), 77);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KANA, 1);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        this.TimeWait(0.3);
        this.k_HoloEffect(this.CHR_KANA, false);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_STATE_EV_M04_CHEERS_BASE_SILENCE");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT");
        this.TimeWait(1.5);
        var cameraEase14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-70.79), 1.34, (-445.08)]) : Dynamic), (lua.Table.create([4.29, (-155.78), 0.0]) : Dynamic), 40.0, 0, cameraEase14);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_PLY);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m04_4210_talk_19", "main_04_01", this.CHR_PYU);
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m04_4210_select_08", "msg_Ev_m04_4210_select_09"]), 0, false, false);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_PLY, 18);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m04_4210_talk_20", "main_04_01", this.CHR_PYU);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m04_4210_talk_21", "main_04_01", this.CHR_PYU);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m04_4210_talk_22", "main_04_01", this.CHR_PYU);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.1, true);
        (untyped main.event.ik.command.IkScriptCommand.RemoveAllTagEffect)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot12, true);
    }
}
