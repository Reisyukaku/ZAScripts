package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDAD8924B2173126")
@:expose("CDDAD8924B2173126")
class Ev_m06_2945 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_KARA:Dynamic;

    @:abiSlot(10)
    public var CHR_SITA:Dynamic;

    public function new()
    {
        this.CHR_SITA = "dyn_sita";
        this.CHR_KARA = "dyn_kara";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        var sceneVector:Dynamic = lua.Table.create([(-134.83), (-4.7), (-366.41)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_KARA, sceneVector, (untyped -10.12), "npc_main_co_boss");
        var sceneVector2:Dynamic = lua.Table.create([(-136.83), (-4.69), (-363.7)]);
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_SITA, sceneVector2, 128.97, "npc_main06_0002");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_SITA, this.CHR_PLY, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_PLY, (untyped -135.44), (untyped -4.69), (untyped -363.2), 153.69);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_POS_M12DB_T500");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_IRON_GATE_CL");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_RESET");
        var sceneVector3:Dynamic = lua.Table.create([(-132.04), (-3.3), (-367.15)]);
        var sceneVector4:Dynamic = lua.Table.create([(-5.85), 133.59, 0.0]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.CHR_KARA, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_PLY, (untyped -134.95), (untyped -4.69), (untyped -364.66), 0.5);
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 1.0, true);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        this.TimeWait(0.5);
        var sceneVector5:Dynamic = lua.Table.create([(-134.48), (-3.24), (-365.66)]);
        var sceneVector6:Dynamic = lua.Table.create([(-6.66), 146.68, 0.0]);
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase2);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.CHR_KARA, true);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_PLY, this.CHR_KARA, "head");
        this.TimeWait(0.3);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "surprise2", this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_SITA, this.CHR_KARA, "head");
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_SITA, "surprise2", "npc_main06_0002");
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_SITA, 333);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_SITA);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_SITA, "normal", "npc_main06_0002");
        var sceneVector7:Dynamic = lua.Table.create([(-134.1), (-3.24), (-367.1)]);
        var sceneVector8:Dynamic = lua.Table.create([(-6.66), 146.68, (-0.0)]);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_07", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_05");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_KARA, (untyped -134.54), (untyped -4.7), (untyped -366.11), (untyped -10.56));
        var sceneVector9:Dynamic = lua.Table.create([(-134.15), (-3.57), (-363.96)]);
        var sceneVector10:Dynamic = lua.Table.create([7.72, 33.52, (-0.0)]);
        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector9, sceneVector10, 40.0, 0, cameraEase4);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "normal", this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_SITA, 201);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_KARA, (untyped -134.66), (untyped -4.7), (untyped -365.26), 0.5);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KARA, "sad2", "npc_main_co_boss");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_08", "main_06_01", this.CHR_KARA);
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m06_2940_select_01", "msg_Ev_m06_2940_select_02"]), 0, false, (false : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KARA, 175);
        var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
        var cHR_KARA:Dynamic = this.CHR_KARA;
        setFacialTemplate(cHR_KARA, ("sad" : Dynamic), ("npc_main_co_boss" : Dynamic));
        if (0 == menuSelection)
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHR_KARA2:Dynamic = this.CHR_KARA;
            showMessage((0 : Dynamic), ("msg_Ev_m06_2940_talk_09" : Dynamic), ("main_06_01" : Dynamic), cHR_KARA2);
        }
        else
        {
            var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHR_KARA3:Dynamic = this.CHR_KARA;
            showMessage2((0 : Dynamic), ("msg_Ev_m06_2940_talk_10" : Dynamic), ("main_06_01" : Dynamic), cHR_KARA3);
        };
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KARA, "serious", "npc_main_co_boss");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_11", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_12", "main_06_01", this.CHR_KARA);
        var menuSelection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m06_2940_select_03", "msg_Ev_m06_2940_select_04"]), 0, false, (false : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KARA, "normal", ("npc_main_co_boss" : Dynamic));
        var fObj_Set_Animation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation;
        var cHR_KARA4:Dynamic = this.CHR_KARA;
        fObj_Set_Animation(cHR_KARA4, (22 : Dynamic));
        if (0 == menuSelection2)
        {
            var showMessage3:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHR_KARA5:Dynamic = this.CHR_KARA;
            showMessage3((0 : Dynamic), ("msg_Ev_m06_2940_talk_13" : Dynamic), ("main_06_01" : Dynamic), cHR_KARA5);
        }
        else
        {
            var showMessage4:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var cHR_KARA6:Dynamic = this.CHR_KARA;
            showMessage4((0 : Dynamic), ("msg_Ev_m06_2940_talk_14" : Dynamic), ("main_06_01" : Dynamic), cHR_KARA6);
        };
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector11:Dynamic = lua.Table.create([(-134.33), (-3.39), (-364.67)]);
        var sceneVector12:Dynamic = lua.Table.create([7.72, 33.52, (-0.0)]);
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector11, sceneVector12, 40.0, 0, cameraEase5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_15", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KARA, "rejoice_small_mc", "npc_main_co_boss");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_KARA, 20);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_16", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KARA, "sad2", "npc_main_co_boss");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_KARA);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_KARA, (untyped -133.77), (untyped -4.7), (untyped -365.94), 0.5);
        this.TimeWait(0.5);
        var sceneVector13:Dynamic = lua.Table.create([(-134.79), (-3.24), (-363.54)]);
        var sceneVector14:Dynamic = lua.Table.create([(-6.47), (-5.75), 0.0]);
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector13, sceneVector14, 40.0, 0, cameraEase6);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_17", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_18", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var sceneVector15:Dynamic = lua.Table.create([(-132.21), (-3.53), (-363.16)]);
        var sceneVector16:Dynamic = lua.Table.create([(-1.28), 44.62, 0.0]);
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector15, sceneVector16, 40.0, 0, cameraEase7);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var sceneVector17:Dynamic = lua.Table.create([(-131.91), (-3.58), (-362.85)]);
        var sceneVector18:Dynamic = lua.Table.create([(-1.28), 44.63, 0.0]);
        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, sceneVector17, sceneVector18, 40.0, 0, cameraEase8);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_KARA, this.CHR_PLY, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.CHR_KARA, 35.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_19", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var sceneVector19:Dynamic = lua.Table.create([(-134.14), (-3.31), (-365.29)]);
        var sceneVector20:Dynamic = lua.Table.create([(-1.28), (-25.33), 0.0]);
        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector19, sceneVector20, 40.0, 0, cameraEase9);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KARA, "rejoice_big", "npc_main_co_boss");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_24", "main_06_01", this.CHR_KARA);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_KARA, "normal", "npc_main_co_boss");
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_20", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_KARA);
        var sceneVector21:Dynamic = lua.Table.create([(-132.83), (-3.26), (-366.22)]);
        var sceneVector22:Dynamic = lua.Table.create([(-6.43), 118.93, 0.0]);
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector21, sceneVector22, 40.0, 0, cameraEase10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m06_2940_talk_21", "main_06_01", this.CHR_KARA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_KARA, (untyped -131.22), (untyped -4.69), (untyped -364.7), 0.5);
        this.TimeWait(2.5);
        var sceneVector23:Dynamic = lua.Table.create([(-134.3), (-3.3), (-365.73)]);
        var sceneVector24:Dynamic = lua.Table.create([(-3.98), 139.91, 0.0]);
        var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector23, sceneVector24, 40.0, 0, cameraEase11);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_SITA, this.CHR_PLY, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.CHR_SITA, this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m06_2940_talk_22", "main_06_01", this.CHR_SITA, null, null, (function():Dynamic
        {
            var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait(scenario, 0.7);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[8]), (untyped scenario[10]), "head");
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)((untyped scenario[8]), (untyped scenario[10]));
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.1, true);
    }
}
