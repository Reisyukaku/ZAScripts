package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD372B41187C2C090")
@:expose("CD372B41187C2C090")
class Ev_m07_5000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_HAL:Dynamic;

    @:abiSlot(10)
    public var CHR_RIV:Dynamic;

    public function new()
    {
        this.CHR_RIV = "npc_main_pa_leader";
        this.CHR_HAL = "npc_main_rival_m";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "normal", this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_RIV, 1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_PLY, 15.31, 0.03, (untyped -16.43), 138.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_HAL, 16.3, 0.01, (untyped -17.3), (untyped -47.5));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_RIV, 15.7, 0.01, (untyped -19.35), 0.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_PLY, this.CHR_HAL, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_HAL, this.CHR_PLY, "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        var sceneVector:Dynamic = lua.Table.create([15.79, 1.36, (-14.93)]);
        var sceneVector2:Dynamic = lua.Table.create([(-5.93), 3.25, (-0.0)]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector, sceneVector2, (40.0 : Dynamic), (0 : Dynamic), cameraEase, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", (0.1 : Dynamic), (true : Dynamic));
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ("0" == getEventModeResult)
        {
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_01", "main_07_01", this.CHR_HAL);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.1, true);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("npc_main_rival_m", (17.38 : Dynamic), (0.01 : Dynamic), (untyped -15.61 : Dynamic), (180.0 : Dynamic));
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal(("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000" : Dynamic));
        }
        else
        {
            if ("1" == getEventModeResult)
            {
                (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_HAL, 20);
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_02", "main_07_01", this.CHR_HAL);
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m07_5000_talk_04", "main_07_01", this.CHR_RIV, null, null, (function():Dynamic
                {
                    var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
                    timeWait(scenario, 0.5);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[9]), (untyped scenario[10]), "head");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)((untyped scenario[9]), (untyped scenario[10]));
                    var timeWait2:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
                    timeWait2(scenario, 0.3);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[8]), (untyped scenario[10]), "head");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)((untyped scenario[8]), (untyped scenario[10]));
                    return null;
                }));
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)(this.CHR_RIV);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_RIV, 2);
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_06", "main_07_01", this.CHR_RIV);
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                var sceneVector3:Dynamic = lua.Table.create([15.72, 1.58, (-18.25)]);
                var sceneVector4:Dynamic = lua.Table.create([(-2.77), 1.15, (-0.0)]);
                var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase2, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
                (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                this.TimeWait(0.3);
                (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_RIV, "rejoice_small", "npc_main_pa_leader");
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_07", "main_07_01", this.CHR_RIV);
                var menuLabels:Dynamic = (["msg_Ev_m07_5000_select_01", "msg_Ev_m07_5000_select_02"]);
                var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)(menuLabels, (0 : Dynamic), (true : Dynamic), (false : Dynamic));
                var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow();
                if (0 == menuSelection)
                {
                    var sceneVector5:Dynamic = lua.Table.create([15.7, 1.37, (-14.55)]);
                    var sceneVector6:Dynamic = lua.Table.create([(-4.95), (-0.32), 0.0]);
                    var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase3);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.CHR_HAL, 32);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_09", "main_07_01", this.CHR_HAL);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    this.TimeWait(1.0);
                    (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.5, true);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_PLY);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink)(this.CHR_PLY, false);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_PLY, 15.79, 0.03, (untyped -19.29), 0.85);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_HAL, 16.3, 0.01, (untyped -10.3), (untyped -47.5));
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_RIV, 15.7, 0.01, (untyped -8.35), 0.0);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                    var sceneVector7:Dynamic = lua.Table.create([15.76, 1.34, (-17.21)]);
                    var sceneVector8:Dynamic = lua.Table.create([(-1.2), 0.15, (-0.0)]);
                    var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, sceneVector7, sceneVector8, 27.5, 0, cameraEase4);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                    (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.5, true);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_10", "main_07_01", this.CHR_RIV);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(2, "msg_Ev_m07_5000_talk_12", "main_07_01");
                    var menuSelection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m07_5000_select_04", "msg_Ev_m07_5000_select_05", "msg_Ev_m07_5000_select_07", "msg_Ev_m07_5000_select_06"]), 0, (false : Dynamic), (false : Dynamic));
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    this.TimeWait(0.5);
                    if (0 == menuSelection2)
                    {
                        var cHR_PLY:Dynamic = this.CHR_PLY;
                        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "serious", cHR_PLY);
                        var scenario3:Dynamic = this;
                        var timeWait3:Dynamic = untyped this.F32FAD7D4DF3ACA95;
                        timeWait3(scenario3, (1.5 : Dynamic));
                    }
                    else
                    {
                        if (1 == menuSelection2)
                        {
                            var cHR_PLY2:Dynamic = this.CHR_PLY;
                            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "rejoice_small", cHR_PLY2);
                            var scenario4:Dynamic = this;
                            var timeWait4:Dynamic = untyped this.F32FAD7D4DF3ACA95;
                            timeWait4(scenario4, (1.5 : Dynamic));
                        }
                        else
                        {
                            if (2 == menuSelection2)
                            {
                                var cHR_PLY3:Dynamic = this.CHR_PLY;
                                (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "sad", cHR_PLY3);
                                var scenario5:Dynamic = this;
                                var timeWait5:Dynamic = untyped this.F32FAD7D4DF3ACA95;
                                timeWait5(scenario5, (1.5 : Dynamic));
                            }
                            else
                            {
                                if (3 == menuSelection2)
                                {
                                    var cHR_PLY4:Dynamic = this.CHR_PLY;
                                    (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "normal", cHR_PLY4);
                                    var scenario6:Dynamic = this;
                                    var timeWait6:Dynamic = untyped this.F32FAD7D4DF3ACA95;
                                    timeWait6(scenario6, (0.5 : Dynamic));
                                }
                                else
                                {
                                };
                            };
                        };
                    };
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink)(this.CHR_PLY, false);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_13", "main_07_01", this.CHR_RIV);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    this.TimeWait(0.5);
                    (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_PHOTO_SHUTTER");
                    (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("White", 0.1, true);
                    (untyped main.event.ik.command.IkScriptCommand.Fade_In)("White", 0.1, true);
                    this.TimeWait(0.5);
                    (untyped main.event.ik.command.IkScriptCommand.CaptureTournamentIcon)(680, 103);
                    this.TimeWait(0.5);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_11", "main_07_01", this.CHR_RIV);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink)(this.CHR_PLY, true);
                    (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "normal", this.CHR_PLY);
                    (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.5, true);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_PLY, 15.19, 0.03, (untyped -16.78), 171.0);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_HAL, 16.3, 0.01, (untyped -17.3), (untyped -174.5));
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_RIV, 15.7, 0.01, (untyped -19.35), 0.0);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                    var sceneVector9:Dynamic = lua.Table.create([15.7, 1.37, (-14.55)]);
                    var sceneVector10:Dynamic = lua.Table.create([(-4.95), (-0.32), 0.0]);
                    var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector9, sceneVector10, 40.0, 0, cameraEase5, (null : Dynamic), (null : Dynamic), (null : Dynamic));
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                    this.TimeWait(1.0);
                    (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 2.0, true);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_RIV, 1);
                    this.TimeWait(0.5);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5000_talk_05", "main_07_01", this.CHR_RIV);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.CHR_RIV, (untyped -180.0));
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_RIV, 15.68, (0.01 : Dynamic), (untyped -20.96 : Dynamic), (0.5 : Dynamic));
                    (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                    this.TimeWait((1.5 : Dynamic));
                    (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_HOTEL_RICHISSIME_EV_OP");
                    var executeBGMCommand:Dynamic = untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand;
                    executeBGMCommand(("SYS_SE_BLOCK_ALL" : Dynamic));
                }
                else
                {
                    (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_RIV, "normal", "npc_main_pa_leader");
                    var cHR_RIV:Dynamic = this.CHR_RIV;
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, ("msg_Ev_m07_5000_talk_08" : Dynamic), ("main_07_01" : Dynamic), cHR_RIV);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    var postEventGlobal2:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
                    postEventGlobal2(("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000" : Dynamic));
                };
                untyped this.m_resultParam = menuSelection;
                var fade_Out:Dynamic = untyped main.event.ik.command.IkScriptCommand.Fade_Out;
                fade_Out(("transition_fade_inout" : Dynamic), (0.1 : Dynamic), (true : Dynamic));
            }
            else
            {
            };
        };
    }
}
