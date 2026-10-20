package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD375BA1187C50099")
@:expose("CD375BA1187C50099")
class Ev_m07_5010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_YUKA:Dynamic;

    @:abiSlot(11)
    public var CHR_HAL:Dynamic;

    @:abiSlot(12)
    public var CHR_KANA:Dynamic;

    @:abiSlot(13)
    public var CHR_TARA:Dynamic;

    @:abiSlot(14)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(15)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(16)
    public var CHR_KARA:Dynamic;

    @:abiSlot(17)
    public var CHR_JIPU:Dynamic;

    public function new()
    {
        this.CHR_JIPU = "dyn_jipu";
        this.CHR_KARA = "dyn_kara";
        this.CHR_MUKU = "dyn_muku";
        this.CHR_SIRO = "dyn_siro";
        this.CHR_TARA = "dyn_tara";
        this.CHR_KANA = "dyn_kana";
        this.CHR_HAL = "dyn_hal";
        this.CHR_YUKA = "dyn_yuka";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_boss", "npc_main_ga_boss", "npc_main_ga_leader", "npc_main_ju_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader"]);
        main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_RIV, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_rival_m");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_YUKA, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_pa_boss");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_HAL, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_pa_leader");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_KANA, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_ga_boss");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_TARA, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_ga_leader");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_SIRO, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_MUKU, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_ju_leader");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_KARA, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_co_boss");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.CHR_JIPU, (lua.Table.create([15.75, 0.03, (-4.91)]) : Dynamic), 180.0, "npc_main_co_leader");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_YUKA, 2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_HAL, 2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_PLY, 15.42, 0.03, (untyped -22.48), 3.95);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_RIV, 16.7, 0.03, (untyped -19.16), 4.17);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_YUKA, 21.76, 0.03, (untyped -12.21), (untyped -90.0));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_HAL, 22.66, 0.03, (untyped -10.16), (untyped -108.0));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_KANA, 14.14, 0.03, (untyped -14.82), 65.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_TARA, 12.58, 0.03, (untyped -14.72), 30.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_SIRO, 12.69, 0.03, (untyped -11.08), 120.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_MUKU, 13.17, 0.03, (untyped -10.07), 119.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_KARA, 18.71, 0.03, (untyped -10.48), 116.26);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_JIPU, 18.4, 0.03, (untyped -9.41), 137.5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var sceneVector10:Dynamic = lua.Table.create([27.89, 4.0, (-11.82)]);
        var sceneActors:Dynamic = [null, null, null, null, null, null, null, null];
        untyped sceneActors[0] = this.CHR_PLY;
        untyped sceneActors[1] = this.CHR_RIV;
        untyped sceneActors[2] = this.CHR_KANA;
        untyped sceneActors[3] = this.CHR_TARA;
        untyped sceneActors[4] = this.CHR_SIRO;
        untyped sceneActors[5] = this.CHR_MUKU;
        untyped sceneActors[6] = this.CHR_KARA;
        untyped sceneActors[7] = this.CHR_JIPU;
        var arrayResult:Dynamic = sceneActors;
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_HOTEL_RICHISSIME_EV_CL");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_PLY, 15.71, 0.03, (untyped -16.34), 0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.CHR_RIV, 17.11, 0.03, (untyped -15.35), 0.5);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([16.72, 1.29, (-14.09)]) : Dynamic), (lua.Table.create([(-5.09), 7.33, 0.0]) : Dynamic), 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([16.84, 1.37, (-13.19)]) : Dynamic), (lua.Table.create([(-5.09), 7.33, 0.0]) : Dynamic), 40.0, 0, cameraEase2);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_RESET");
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 1.0, true);
        this.TimeWait(1.2);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([16.6, 2.37, (-19.62)]) : Dynamic), (lua.Table.create([(-11.1), 164.92, 0.0]) : Dynamic), 40.0, 0, cameraEase3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([16.6, 1.8, (-19.62)]) : Dynamic), (lua.Table.create([(-11.1), 164.92, (-0.0)]) : Dynamic), 40.0, 0, cameraEase4);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.CHR_KANA, 140.0);
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m07_5010_talk_01", "main_07_01", this.CHR_KANA, ((null : Dynamic)), null, (function():Dynamic
        {
            var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait(scenario, 0.3);
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[8]), (untyped scenario[12]), "head");
            var timeWait2:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait2(scenario, 0.3);
            var sceneField:Dynamic = untyped scenario[12];
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[9]), sceneField, (("head" : Dynamic)));
            var length:Dynamic = untyped arrayResult.length;
            var loopIndex:Dynamic = ((3 : Dynamic));
            while (loopIndex < length)
            {
                loopIndex = untyped loopIndex + 1;
                var fObj_LookAt_Obj:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
                var sceneField2:Dynamic = untyped arrayResult[(loopIndex - 1)];
                var sceneField3:Dynamic = untyped scenario[8];
                fObj_LookAt_Obj(sceneField2, sceneField3, (("head" : Dynamic)));
            };
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m07_5010_select_01", "msg_Ev_m07_5010_select_02"]), 0, false, ((false : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var fObj_Set_Turn_To_ObjResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.CHR_KANA, this.CHR_YUKA);
        this.TimeWait(((0.7 : Dynamic)));
        var length2:Dynamic = untyped arrayResult.length;
        var loopIndex2:Dynamic = ((0 : Dynamic));
        while (loopIndex2 < length2)
        {
            loopIndex2 = untyped loopIndex2 + 1;
            var fObj_LookAt_Pos:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos;
            var sceneField4:Dynamic = untyped arrayResult[(loopIndex2 - 1)];
            fObj_LookAt_Pos(sceneField4, sceneVector10);
        };
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([11.98, 1.25, (-16.31)]) : Dynamic), (lua.Table.create([(-0.55), (-113.04), (-0.0)]) : Dynamic), 40.0, 0, cameraEase5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([12.26, 1.25, (-16.2)]) : Dynamic), (lua.Table.create([(-0.55), (-113.04), (-0.0)]) : Dynamic), 40.0, 0, cameraEase6);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m07_5010_talk_02", "main_07_01", this.CHR_KANA, null, null, (function():Dynamic
        {
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_Turn_To_ObjResult);
            var timeWait3:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
            timeWait3(scenario, 0.3);
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped scenario[12]), 2);
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([20.5, 1.38, (-12.71)]) : Dynamic), (lua.Table.create([(-2.2), (-111.3), (-0.0)]) : Dynamic), 40.0, 0, cameraEase7);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_YUKA, 15);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_06");
        var cHR_YUKA:Dynamic = this.CHR_YUKA;
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, (("msg_Ev_m07_5010_talk_03" : Dynamic)), (("main_07_01" : Dynamic)), cHR_YUKA);
        var length3:Dynamic = untyped arrayResult.length;
        var loopIndex3:Dynamic = ((0 : Dynamic));
        while (loopIndex3 < length3)
        {
            loopIndex3 = untyped loopIndex3 + 1;
            var fObj_Set_Turn_To_Obj:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj;
            var sceneField5:Dynamic = untyped arrayResult[(loopIndex3 - 1)];
            var cHR_YUKA2:Dynamic = this.CHR_YUKA;
            fObj_Set_Turn_To_Obj(sceneField5, cHR_YUKA2);
        };
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_YUKA, 1);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5010_talk_04", "main_07_01", this.CHR_YUKA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.CHR_YUKA, (untyped -140.0));
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.CHR_YUKA, sceneVector10);
        this.TimeWait(0.5);
        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([18.05, 0.56, (-13.92)]) : Dynamic), (lua.Table.create([13.6, (-106.7), 0.0]) : Dynamic), 40.0, 0, cameraEase8);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.5, (lua.Table.create([18.09, 1.47, (-15.0)]) : Dynamic), (lua.Table.create([7.43, (-102.04), 0.0]) : Dynamic), 40.0, 0, cameraEase9);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5010_talk_05", "main_07_01", this.CHR_YUKA);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5010_talk_06", "main_07_01", this.CHR_YUKA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([17.56, 1.18, (-14.14)]) : Dynamic), (lua.Table.create([6.74, 24.75, (-0.0)]) : Dynamic), 40.0, 0, cameraEase10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([17.41, 1.18, (-14.07)]) : Dynamic), (lua.Table.create([6.74, 24.75, (-0.0)]) : Dynamic), 40.0, 0, cameraEase11);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.CHR_YUKA, 21.76, 0.03, (untyped -12.21), (untyped -90.0));
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, (("msg_Ev_m07_5010_talk_07" : Dynamic)), (("main_07_01" : Dynamic)), this.CHR_RIV);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var length4:Dynamic = untyped arrayResult.length;
        var loopIndex4:Dynamic = ((0 : Dynamic));
        while (loopIndex4 < length4)
        {
            loopIndex4 = untyped loopIndex4 + 1;
            var fObj_LookAt_End:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End;
            var sceneField6:Dynamic = untyped arrayResult[(loopIndex4 - 1)];
            fObj_LookAt_End(sceneField6);
        };
        var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([12.92, 1.41, (-16.38)]) : Dynamic), (lua.Table.create([(-1.11), (-115.48), (-0.0)]) : Dynamic), 40.0, 0, cameraEase12);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([12.61, 1.42, (-16.52)]) : Dynamic), (lua.Table.create([(-1.11), (-115.48), (-0.0)]) : Dynamic), 40.0, 0, cameraEase13);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.CHR_YUKA, (lua.Table.create([16.4, 1.6, (-14.7)]) : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5010_talk_08", "main_07_01", this.CHR_YUKA);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([19.48, 1.63, (-12.25)]) : Dynamic), (lua.Table.create([(-3.0), (-90.57), 0.0]) : Dynamic), 40.0, 0, cameraEase14);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.CHR_YUKA);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.CHR_YUKA, 14);
        this.TimeWait(1.0);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_MSBC_WHOOSH02");
        var cameraEase15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(4.0, (lua.Table.create([7.98, 1.59, (-12.31)]) : Dynamic), (lua.Table.create([(-3.0), (-90.57), 0.0]) : Dynamic), 40.0, 0, cameraEase15);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5010_talk_09", "main_07_01", this.CHR_YUKA);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase16:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([14.23, 1.46, (-16.33)]) : Dynamic), (lua.Table.create([(-8.26), (-98.75), (-0.0)]) : Dynamic), 40.0, 0, cameraEase16);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.CHR_RIV, this.CHR_PLY);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.CHR_PLY, this.CHR_RIV, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m07_5010_talk_10", "main_07_01", this.CHR_RIV);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.1, true);
    }
}
