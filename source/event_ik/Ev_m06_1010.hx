package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB8F9411E54725CF4")
@:expose("CB8F9411E54725CF4")
class Ev_m06_1010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    public function new()
    {
        this.slot12 = "dyn_sita_2";
        this.slot11 = "dyn_sita_1";
        this.slot10 = "dyn_jipu";
        this.slot9 = "dyn_deu";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_co_member_m_00", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_co_member_f_00", false);
        (untyped main.event.ik.command.IkScriptCommand.WordSet_Name_Rival)(1);
        var sceneVector:Dynamic = lua.Table.create([(-326.7), 0.0, (-645.64)]);
        (untyped main.event.ik.command.IkScriptCommand.S156410CEE281BFF8)(this.slot11, sceneVector, (untyped -157.35), 56);
        var sceneVector2:Dynamic = lua.Table.create([(-325.69), 0.0, (-645.99)]);
        (untyped main.event.ik.command.IkScriptCommand.S156410CEE281BFF8)(this.slot12, sceneVector2, (untyped -163.34), 62);
        var sceneVector3:Dynamic = lua.Table.create([(-325.51), 0.88, (-643.73)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot10, sceneVector3, (untyped -164.45), "npc_main_co_leader");
        var sceneVector4:Dynamic = lua.Table.create([(-326.03), 0.0, (-650.4)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot9, sceneVector4, (untyped -67.65), "npc_main_friend_f");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -326.26), 0.01, (untyped -650.96), (untyped -56.08));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot9, (untyped -326.03), 0.0, (untyped -650.4), (untyped -67.65));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot11, (untyped -329.58), 0.0, (untyped -650.51), 95.8);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot12, (untyped -329.32), 0.0, (untyped -649.85), 100.76);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var sceneVector5:Dynamic = lua.Table.create([(-325.04), 2.0, (-652.41)]);
        var sceneVector6:Dynamic = lua.Table.create([(-4.15), 130.08, 0.0]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var sceneVector7:Dynamic = lua.Table.create([(-325.04), 1.3, (-652.41)]);
        var sceneVector8:Dynamic = lua.Table.create([(-4.15), 130.08, 0.0]);
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase2);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_VS_END");
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 491);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot11, 172, null, 1.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_01", "main_06_01", this.slot11);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot12, 172, null, 1.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot12, this.slot11, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_02", "main_06_01", this.slot12);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot11, this.slot12, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot11, 172, null, 1.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_03", "main_06_01", this.slot11);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot12, 172, null, 1.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot12, 2);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_04", "main_06_01", this.slot12);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_FADE_OUT_0_5S_SUS");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m06_1010_talk_05", "main_06_01", null, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[10]), (untyped scenario[11]), "head");
            var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait(scenario, 0.5);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[8]), (untyped scenario[10]), "head");
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[9]), (untyped scenario[10]), "head");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[12]), 1);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[12]), (untyped scenario[10]), "head");
            var timeWait2:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait2(scenario, 0.2);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[11]), (untyped scenario[10]), "head");
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)((untyped scenario[12]), (untyped scenario[10]));
            var timeWait3:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait3(scenario, 0.3);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)((untyped scenario[11]), (untyped scenario[10]));
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector9:Dynamic = lua.Table.create([(-325.9), 1.97, (-645.27)]);
        var sceneVector10:Dynamic = lua.Table.create([0.0, (-165.68), 0.0]);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector9, sceneVector10, 40.0, 0, cameraEase3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var sceneVector11:Dynamic = lua.Table.create([(-325.9), 2.26, (-645.27)]);
        var sceneVector12:Dynamic = lua.Table.create([0.0, (-165.68), 0.0]);
        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, sceneVector11, sceneVector12, 40.0, 0, cameraEase4);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -326.88), 0.01, (untyped -650.65), 4.54);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot9, (untyped -326.2), 0.0, (untyped -650.26), (untyped -17.08));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot11, (untyped -328.4), 0.0, (untyped -649.84), 36.01);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot12, (untyped -328.89), 0.0, (untyped -649.29), 40.59);
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot9, "head");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_BGM_05_SUS");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_06", "main_06_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var sceneVector13:Dynamic = lua.Table.create([(-327.28), 1.28, (-649.39)]);
        var sceneVector14:Dynamic = lua.Table.create([(-3.88), 90.85, (-0.0)]);
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector13, sceneVector14, 40.0, 0, cameraEase5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var sceneVector15:Dynamic = lua.Table.create([(-327.28), 1.15, (-649.39)]);
        var sceneVector16:Dynamic = lua.Table.create([(-3.88), 90.85, (-0.0)]);
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(1.0, sceneVector15, sceneVector16, 40.0, 0, cameraEase6);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot11);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot12);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 333);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot12, 333);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_07", "main_06_01", this.slot11);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -326.21), 0.0, (untyped -646.43), (untyped -165.26));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.slot10, (untyped -327.03), 0.0, (untyped -649.51), 0.5);
        var sceneVector17:Dynamic = lua.Table.create([(-328.41), 0.86, (-651.24)]);
        var sceneVector18:Dynamic = lua.Table.create([7.21, (-161.56), 0.0]);
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector17, sceneVector18, 40.0, 0, cameraEase7);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var sceneVector19:Dynamic = lua.Table.create([(-327.57), 1.28, (-651.64)]);
        var sceneVector20:Dynamic = lua.Table.create([1.17, (-154.38), 0.0]);
        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(4.0, sceneVector19, sceneVector20, 40.0, 0, cameraEase8);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot11, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_08", "main_06_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_09", "main_06_01", this.slot10);
        var dialogueChoices:Dynamic = [null, null];
        var createRivalTextResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.CreateRivalText)("msg_Ev_m06_1010_select_01", null, 1);
        untyped dialogueChoices[0] = createRivalTextResult;
        var createPlaneTextResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.CreatePlaneText)("msg_Ev_m06_1010_select_02");
        untyped dialogueChoices[1] = createPlaneTextResult;
        var arrayResult:Dynamic = dialogueChoices;
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenuWithTag)(arrayResult, 0, false, false);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot10, 172, null, 1.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_10", "main_06_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector22:Dynamic = lua.Table.create([(-327.31), 1.45, (-650.54)]);
        var sceneVector23:Dynamic = lua.Table.create([1.17, (-154.38), (-0.0)]);
        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector22, sceneVector23, 40.0, 0, cameraEase9);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot11, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.slot12, false);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m06_1010_talk_11", "main_06_01", this.slot10, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)((untyped scenario[10]));
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)((untyped scenario[10]), 175);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)((untyped scenario[10]), "normal", "npc_main_co_leader");
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector24:Dynamic = lua.Table.create([(-328.42), 1.46, (-649.37)]);
        var sceneVector25:Dynamic = lua.Table.create([(-4.5), (-70.69), (-0.0)]);
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector24, sceneVector25, 40.0, 0, cameraEase10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 21);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_12", "main_06_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "normal", "npc_main_co_leader");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot10, 172, null, 1.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_13", "main_06_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var sceneVector26:Dynamic = lua.Table.create([(-327.57), 1.28, (-651.64)]);
        var sceneVector27:Dynamic = lua.Table.create([1.17, (-154.38), (-0.0)]);
        var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector26, sceneVector27, 40.0, 0, cameraEase11);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot10, 172, null, 1.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_14", "main_06_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_1010_talk_15", "main_06_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT_SUS");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.1, true);
    }
}
