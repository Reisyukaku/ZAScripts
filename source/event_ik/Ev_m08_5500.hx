package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C9D04EF49C9D4028C")
@:expose("C9D04EF49C9D4028C")
class Ev_m08_5500 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_F:Dynamic;

    @:abiSlot(10)
    public var POKE_ZIGA:Dynamic;

    public function new()
    {
        this.POKE_ZIGA = "dyn_ziga_10";
        this.CHR_F = "dyn_f";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_F, (lua.Table.create([410.46, 2.41, 18.28]) : Dynamic), 180.0, "npc_main_f");
        (untyped main.event.ik.command.IkScriptCommand.Create_NpcPokemon)(this.POKE_ZIGA, (lua.Table.create([410.46, 2.41, 18.36]) : Dynamic), (untyped -134.94), 718, 1, 0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.CHR_F, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity)(this.POKE_ZIGA, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_PLY, 409.7, 2.41, 24.91, 0.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_F, 410.85, 2.4, 14.21, (untyped -0.23));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.POKE_ZIGA, 410.46, 2.41, 20.9, 0.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.POKE_ZIGA, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_PLY, 410.28, 2.41, 27.6, 0.5);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([409.0, 4.32, 24.74]) : Dynamic), (lua.Table.create([(-2.51), (-167.87), 0.0]) : Dynamic), 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([409.0, 3.73, 24.74]) : Dynamic), (lua.Table.create([(-2.51), (-167.87), 0.0]) : Dynamic), 40.0, 0, cameraEase2, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.1, true);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_START_SERVER");
        (untyped main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj)("t2_g02", "t2_g02_1_anime", "on", "trigger");
        (untyped main.event.ik.command.IkScriptCommand.OverrideAreaLight)(2, "env_t2_g02_light", 0.3);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.CHR_PLY, (lua.Table.create([410.62, 7.41, 42.93]) : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "serious", this.CHR_PLY);
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(2, "msg_Ev_m08_5500_talk_19", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_20", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_REBOOT_SYSTEM");
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_21", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_22", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_23", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_24", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_25", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_26", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(3, "msg_Ev_m08_5500_talk_27", "main_08_01");
        var dialogueChoices:Dynamic = [null, null, null, null];
        untyped dialogueChoices[0] = "msg_Ev_m08_5500_select_05";
        untyped dialogueChoices[1] = "msg_Ev_m08_5500_select_06";
        untyped dialogueChoices[2] = (("msg_Ev_m08_5500_select_07" : Dynamic));
        untyped dialogueChoices[3] = (("msg_Ev_m08_5500_select_08" : Dynamic));
        var arrayResult:Dynamic = dialogueChoices;
        var loopIndex:Dynamic = ((0 : Dynamic));
        while (loopIndex < 4)
        {
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(((0.0 : Dynamic)), (lua.Table.create([409.0, 3.73, 24.74]) : Dynamic), (lua.Table.create([(-2.51), (-167.87), 0.0]) : Dynamic), ((40.0 : Dynamic)), ((0 : Dynamic)), cameraEase3, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            var wait_Camera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            wait_Camera();
            if (loopIndex > 0)
            {
                var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                showMessage(((3 : Dynamic)), (("msg_Ev_m08_5500_talk_27" : Dynamic)), (("main_08_01" : Dynamic)), ((null : Dynamic)));
            }
            else
            {
            };
            var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)(arrayResult, ((0 : Dynamic)), ((false : Dynamic)), ((false : Dynamic)));
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var sceneField:Dynamic = untyped arrayResult[menuSelection];
            if ("msg_Ev_m08_5500_select_05" == sceneField)
            {
                var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([410.24, 4.52, 30.37]) : Dynamic), (lua.Table.create([(-20.42), 0.23, (-0.0)]) : Dynamic), 40.0, 0, cameraEase4);
                (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(20.0, (lua.Table.create([410.25, 5.59, 33.25]) : Dynamic), (lua.Table.create([(-20.42), 0.23, (-0.0)]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase5, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                showMessage2(((3 : Dynamic)), (("msg_Ev_m08_5500_talk_28" : Dynamic)), (("main_08_01" : Dynamic)), ((null : Dynamic)));
            }
            else
            {
                if ("msg_Ev_m08_5500_select_06" == sceneField)
                {
                    var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([408.6, 3.73, 28.09]) : Dynamic), (lua.Table.create([(-2.64), (-84.69), 0.0]) : Dynamic), 40.0, 0, cameraEase6);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                    var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(20.0, (lua.Table.create([408.57, 3.73, 27.74]) : Dynamic), (lua.Table.create([(-2.64), (-84.69), 0.0]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase7, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                    var showMessage3:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                    showMessage3(((3 : Dynamic)), (("msg_Ev_m08_5500_talk_29" : Dynamic)), (("main_08_01" : Dynamic)), ((null : Dynamic)));
                }
                else
                {
                    if ("msg_Ev_m08_5500_select_07" == sceneField)
                    {
                        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([406.75, 2.62, 20.56]) : Dynamic), (lua.Table.create([6.6, (-153.57), 0.0]) : Dynamic), 40.0, 0, cameraEase8);
                        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(20.0, (lua.Table.create([409.23, 2.62, 19.81]) : Dynamic), (lua.Table.create([6.6, (-172.82), 0.0]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase9, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                        var showMessage4:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                        showMessage4(((3 : Dynamic)), (("msg_Ev_m08_5500_talk_30" : Dynamic)), (("main_08_01" : Dynamic)), ((null : Dynamic)));
                    }
                    else
                    {
                        if ("msg_Ev_m08_5500_select_08" == sceneField)
                        {
                            var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([410.21, 4.12, 25.91]) : Dynamic), (lua.Table.create([0.0, (-178.91), (-0.0)]) : Dynamic), 40.0, 0, cameraEase10);
                            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                            var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(20.0, (lua.Table.create([410.15, 4.12, 22.65]) : Dynamic), (lua.Table.create([0.0, (-178.91), (-0.0)]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase11, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                            var showMessage5:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                            showMessage5(((3 : Dynamic)), (("msg_Ev_m08_5500_talk_31" : Dynamic)), (("main_08_01" : Dynamic)), ((null : Dynamic)));
                        }
                        else
                        {
                        };
                    };
                };
            };
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var splice:Dynamic = untyped arrayResult.splice;
            splice(arrayResult, menuSelection, ((1 : Dynamic)));
            loopIndex = untyped loopIndex + 1;
        };
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([410.08, 3.23, 22.13]) : Dynamic), (lua.Table.create([(-1.72), (-178.58), 0.04]) : Dynamic), 40.0, 0, cameraEase12);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.POKE_ZIGA, true);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.CHR_PLY, (lua.Table.create([410.96, 3.5, 25.47]) : Dynamic));
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_POS_M6DB_T3000");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_FADE_OUT_1_5S");
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "surprise", this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID)(this.POKE_ZIGA, 9);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_32", "main_08_01");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_PLY, this.POKE_ZIGA, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.CHR_PLY, this.POKE_ZIGA);
        this.TimeWait(0.3);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "surprise2", this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.POKE_ZIGA, 410.23, 2.41, 25.66, 0.0);
        var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([411.34, 3.0, 24.2]) : Dynamic), (lua.Table.create([8.01, 150.27, 0.04]) : Dynamic), 40.0, 0, cameraEase13);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([411.34, 2.71, 24.2]) : Dynamic), (lua.Table.create([8.01, 150.27, 0.04]) : Dynamic), 40.0, 0, cameraEase14);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([410.81, 4.16, 28.09]) : Dynamic), (lua.Table.create([(-30.51), 26.81, 0.04]) : Dynamic), 40.0, 0, cameraEase15);
        (untyped main.event.ik.command.IkScriptCommand.FixLightWithPriority)(10, "light/spl/spl_ev_m08_5500/spl_ev_m08_5500.trlgt", 0.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase16:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([410.89, 4.27, 28.39]) : Dynamic), (lua.Table.create([(-30.51), 26.81, 0.04]) : Dynamic), 40.0, 0, cameraEase16);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.CHR_F, true);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_F, 410.95, 2.4, 24.34, 0.5);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "normal", this.CHR_PLY);
        var cameraEase17:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([411.29, 3.75, 29.36]) : Dynamic), (lua.Table.create([(-2.67), 14.68, 0.0]) : Dynamic), 40.0, 0, cameraEase17);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase18:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(4.5, (lua.Table.create([411.29, 3.75, 29.36]) : Dynamic), (lua.Table.create([(-2.67), 14.68, 0.0]) : Dynamic), 40.0, 0, cameraEase18);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_PLY, this.CHR_F, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_01", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_08");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase19:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([411.32, 4.1, 25.35]) : Dynamic), (lua.Table.create([(-2.67), 25.13, 0.0]) : Dynamic), 40.0, 0, cameraEase19);
        (untyped main.event.ik.command.IkScriptCommand.ResetFixLightWithPriority)(10, 0.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_02", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m08_5500_select_01", "msg_Ev_m08_5500_select_02"]), 0, false, false);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_F, this.POKE_ZIGA, "head");
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase20:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([410.96, 2.84, 27.49]) : Dynamic), (lua.Table.create([10.79, 13.5, (-0.0)]) : Dynamic), 40.0, 0, cameraEase20);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_03", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_F);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.CHR_F, (lua.Table.create([411.49, 5.0, 22.55]) : Dynamic));
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_04", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_F);
        this.TimeWait(0.3);
        var cameraEase21:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([413.07, 3.85, 29.42]) : Dynamic), (lua.Table.create([(-6.79), 35.41, 0.0]) : Dynamic), 40.0, 0, cameraEase21);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase22:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([413.07, 3.85, 29.42]) : Dynamic), (lua.Table.create([(-6.79), 46.38, 0.0]) : Dynamic), 40.0, 0, cameraEase22);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_F, 407.96, 2.4, 24.42, 0.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_05", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_F, 407.94, 2.4, 31.72, 0.5);
        this.TimeWait(2.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.CHR_PLY, (untyped -30.0));
        var cameraEase23:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([408.08, 4.2, 32.99]) : Dynamic), (lua.Table.create([(-10.45), (-6.91), 0.0]) : Dynamic), 40.0, 0, cameraEase23);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_06", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.CHR_F, (lua.Table.create([404.77, 4.0, 36.16]) : Dynamic));
        this.TimeWait(0.5);
        var cameraEase24:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([409.63, 4.01, 30.67]) : Dynamic), (lua.Table.create([0.37, 138.79, (-0.0)]) : Dynamic), 40.0, 0, cameraEase24);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase25:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([409.15, 4.02, 31.22]) : Dynamic), (lua.Table.create([0.37, 138.79, (-0.0)]) : Dynamic), 40.0, 0, cameraEase25);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_07", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_F);
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.CHR_F, this.CHR_PLY);
        this.TimeWait(0.5);
        var cameraEase26:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([410.06, 3.77, 25.96]) : Dynamic), (lua.Table.create([(-4.4), 171.57, 0.0]) : Dynamic), 40.0, 0, cameraEase26);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_08", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase27:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([408.22, 4.1, 30.68]) : Dynamic), (lua.Table.create([(-2.76), 169.92, 0.0]) : Dynamic), 40.0, 0, cameraEase27);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_F, 19);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_09", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase28:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([406.41, 4.26, 32.5]) : Dynamic), (lua.Table.create([(-11.17), (-50.02), 0.04]) : Dynamic), 40.0, 0, cameraEase28);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_10", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m08_5500_select_03", "msg_Ev_m08_5500_select_04"]), 0, false, false);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase29:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([406.41, 4.26, 32.5]) : Dynamic), (lua.Table.create([(-11.17), (-50.02), 0.04]) : Dynamic), 40.0, 0, cameraEase29);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase30:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([406.41, 4.26, 32.5]) : Dynamic), (lua.Table.create([(-14.48), (-40.71), 0.04]) : Dynamic), 40.0, 0, cameraEase30);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_F, this.POKE_ZIGA, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_11", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase31:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([408.94, 4.1, 28.84]) : Dynamic), (lua.Table.create([(-19.53), (-23.27), 0.04]) : Dynamic), 40.0, 0, cameraEase31);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase32:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([409.03, 4.02, 28.62]) : Dynamic), (lua.Table.create([(-19.53), (-23.27), 0.04]) : Dynamic), 40.0, 0, cameraEase32);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_12", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_13", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_F);
        var cameraEase33:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([408.5, 3.95, 30.64]) : Dynamic), (lua.Table.create([4.45, 152.65, (-0.0)]) : Dynamic), 40.0, 0, cameraEase33);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_14", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_F, this.CHR_PLY, "head");
        var cameraEase34:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([407.93, 4.28, 33.17]) : Dynamic), (lua.Table.create([(-12.38), (-9.42), (-0.0)]) : Dynamic), 40.0, 0, cameraEase34);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase35:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(4.0, (lua.Table.create([408.11, 4.28, 33.2]) : Dynamic), (lua.Table.create([(-12.38), (-9.42), (-0.0)]) : Dynamic), 40.0, 0, cameraEase35);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_15", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_16", "main_08_01", this.CHR_F);
        var cameraEase36:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([408.72, 4.11, 30.94]) : Dynamic), (lua.Table.create([(-4.04), 127.82, (-0.0)]) : Dynamic), 40.0, 0, cameraEase36);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_17", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase37:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([411.36, 3.84, 27.2]) : Dynamic), (lua.Table.create([(-4.68), 131.45, 0.0]) : Dynamic), 40.0, 0, cameraEase37);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase38:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(4.0, (lua.Table.create([411.59, 3.82, 26.85]) : Dynamic), (lua.Table.create([(-4.68), 131.45, 0.0]) : Dynamic), 40.0, 0, cameraEase38);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_F, 2);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m08_5500_talk_18", "main_08_01", this.CHR_F);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        this.TimeWait(0.5);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.5, true);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.CHR_PLY, "normal", this.CHR_PLY);
        (untyped main.event.ik.command.IkScriptCommand.UpdateReplace)();
        (untyped main.event.ik.command.IkScriptCommand.WaitReplace)();
    }
}
