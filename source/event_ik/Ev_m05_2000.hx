package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CA70BE65FDFEC5371")
@:expose("CA70BE65FDFEC5371")
class Ev_m05_2000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    public function new()
    {
        this.slot10 = "dyn_machi";
        this.slot9 = "dyn_siro";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_ju_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot9, (lua.Table.create([(-254.13), 0.12, (-866.75)]) : Dynamic), 167.642, "npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.slot10, (lua.Table.create([(-254.13), 0.12, (-866.75)]) : Dynamic), 167.642, "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -265.26), 0.14, (untyped -877.09), (untyped -67.59));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot10, (untyped -264.84), 0.12, (untyped -876.26), (untyped -92.11));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot9, (untyped -267.03), 0.12, (untyped -875.63), 52.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-266.68), 2.43, (-877.16)]) : Dynamic), (lua.Table.create([2.65, (-137.88), 0.0]) : Dynamic), 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot8, this.slot9, "head");
        this.TimeWait(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot9, "head");
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.5, true);
        this.TimeWait(1.0);
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([(-268.41), 1.24, (-878.51)]) : Dynamic), (lua.Table.create([2.65, (-137.88), (-0.0)]) : Dynamic), 40.0, 0, cameraEase2);
        this.TimeWait(1.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.slot9, this.slot10);
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_01", "main_05_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot10);
        this.TimeWait(0.5);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-266.27), 1.6, (-877.39)]) : Dynamic), (lua.Table.create([(-7.18), (-116.16), (-0.0)]) : Dynamic), 40.0, 0, cameraEase3, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 28);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_02", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot8, this.slot10, "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_03", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, "head");
        this.TimeWait(0.3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "serious", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, "head");
        var sceneVector9:Dynamic = lua.Table.create([(-262.47), 3.5, (-872.5)]);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_04", "main_05_01", this.slot10);
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m05_2000_select_01", "msg_Ev_m05_2000_select_02"]), ((0 : Dynamic)), ((true : Dynamic)), ((false : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var slot10:Dynamic = this.slot10;
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(slot10);
        if (0 == menuSelection)
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 18);
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_05", "main_05_01", this.slot10);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.slot10, sceneVector9);
            this.TimeWait(1.0);
            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-266.75), 3.13, (-875.62)]) : Dynamic), (lua.Table.create([(-5.78), (-126.21), (-0.0)]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase4, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            var slot102:Dynamic = this.slot10;
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(((0 : Dynamic)), (("msg_Ev_m05_2000_talk_36" : Dynamic)), (("main_05_01" : Dynamic)), slot102);
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            if (1 == menuSelection)
            {
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 19);
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_06", "main_05_01", this.slot10);
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos)(this.slot10, sceneVector9);
                this.TimeWait(1.0);
                var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-266.75), 3.13, (-875.62)]) : Dynamic), (lua.Table.create([(-5.78), (-126.21), (-0.0)]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase5, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                var slot103:Dynamic = this.slot10;
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(((0 : Dynamic)), (("msg_Ev_m05_2000_talk_37" : Dynamic)), (("main_05_01" : Dynamic)), slot103);
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            }
            else
            {
            };
        };
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-280.65), 1.93, (-880.29)]) : Dynamic), (lua.Table.create([(-2.16), (-105.63), (-0.0)]) : Dynamic), 40.0, 0, cameraEase6);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(5.0, (lua.Table.create([(-282.43), 2.0, (-880.79)]) : Dynamic), (lua.Table.create([(-2.16), (-105.63), (-0.0)]) : Dynamic), 40.0, 0, cameraEase7);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 28);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_07", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m05_2000_select_03", "msg_Ev_m05_2000_select_04"]), 0, false, false);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot10);
        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-266.76), 1.55, (-877.08)]) : Dynamic), (lua.Table.create([(-5.42), (-102.12), (-0.0)]) : Dynamic), 40.0, 0, cameraEase8);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_08", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        this.TimeWait(0.5);
        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-265.84), 1.51, (-876.46)]) : Dynamic), (lua.Table.create([(-5.42), (-102.12), 0.0]) : Dynamic), 40.0, 0, cameraEase9);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.5, (lua.Table.create([(-265.84), 1.57, (-876.46)]) : Dynamic), (lua.Table.create([(-5.42), (-102.12), 0.0]) : Dynamic), 40.0, 0, cameraEase10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "surprise_mc", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_15", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "rejoice_small", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_16", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.slot9, (untyped -116));
        var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-280.65), 1.93, (-880.29)]) : Dynamic), (lua.Table.create([(-2.16), (-105.63), (-0.0)]) : Dynamic), 40.0, 0, cameraEase11);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(3.0, (lua.Table.create([(-280.65), (-1.24), (-880.29)]) : Dynamic), (lua.Table.create([(-2.16), (-105.62), (-0.0)]) : Dynamic), 40.0, 0, cameraEase12);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_17", "main_05_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-264.53), 1.34, (-878.51)]) : Dynamic), (lua.Table.create([1.71, 152.28, 0.0]) : Dynamic), 40.0, ((0 : Dynamic)), cameraEase13);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "normal", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.slot9, this.slot8);
        var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
        var slot104:Dynamic = this.slot10;
        showMessage(((0 : Dynamic)), (("msg_Ev_m05_2000_talk_18" : Dynamic)), (("main_05_01" : Dynamic)), slot104);
        while (true)
        {
            if (1 == this.m_resultParam)
            {
                break;
            }
            else
            {
            };
            var menuSelection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m05_2000_select_05", "msg_Ev_m05_2000_select_06", "msg_Ev_m05_2000_select_07"]), 0, false, ((false : Dynamic)));
            var slot105:Dynamic = this.slot10;
            var slot8:Dynamic = this.slot8;
            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(slot105, slot8, (("head" : Dynamic)));
            if (0 == menuSelection2)
            {
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 28);
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_19", "main_05_01", this.slot10);
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 2);
                var slot9:Dynamic = this.slot9;
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_20", (("main_05_01" : Dynamic)), slot9);
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.slot10);
                this.TimeWait(0.2);
                var fObj_Set_Animation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation;
                var slot92:Dynamic = this.slot9;
                fObj_Set_Animation(slot92, ((1 : Dynamic)));
            }
            else
            {
                if (1 == menuSelection2)
                {
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 2);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)(this.slot10);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 175);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_21", "main_05_01", this.slot10);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot9, "head");
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_38", "main_05_01", this.slot10);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "anger", "npc_main_detective");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot9, 32, null, 3.0);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_22", "main_05_01", this.slot9);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 1);
                    var slot106:Dynamic = this.slot10;
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_23", "main_05_01", slot106);
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "normal", "npc_main_detective");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, (("head" : Dynamic)));
                    this.TimeWait(((0.2 : Dynamic)));
                    var fObj_Reset_Animation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
                    var slot93:Dynamic = this.slot9;
                    fObj_Reset_Animation(slot93);
                }
                else
                {
                    if (2 == menuSelection2)
                    {
                        untyped this.m_resultParam = 1;
                    }
                    else
                    {
                    };
                };
            };
        };
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 28);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_24", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 28);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_25", "main_05_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-266.21), 1.77, (-876.36)]) : Dynamic), (lua.Table.create([1.82, 131.87, 0.0]) : Dynamic), 40.0, 0, cameraEase14);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(1.0, (lua.Table.create([(-266.21), 1.93, (-876.36)]) : Dynamic), (lua.Table.create([1.82, 131.87, 0.0]) : Dynamic), 40.0, 0, cameraEase15);
        this.TimeWait(0.7);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot9, "smile", "npc_main_ju_boss");
        var fObj_Reset_AnimationResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.slot9);
        var fObj_Reset_AnimationResult2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot8, this.slot9, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot9, "head");
        this.TimeWait(0.5);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_PS_BGM_04");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_31", "main_05_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Reset_AnimationResult);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.slot9, 32, null, 3.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 491);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_32", "main_05_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Reset_AnimationResult2);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot9, "normal", "npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.slot9, 50.0);
        this.TimeWait(0.5);
        var cameraEase16:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(5, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-268.75), 1.75, (-878.2)]) : Dynamic), (lua.Table.create([(-2.73), (-133.54), (-0.0)]) : Dynamic), 40.0, 0, cameraEase16);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)(this.slot9);
        var animationAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 491);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m05_2000_talk_33", "main_05_01", this.slot9, null, null, (function():Dynamic
        {
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase17:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(5, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.8, (lua.Table.create([(-268.75), 1.75, (-878.2)]) : Dynamic), (lua.Table.create([(-9.79), (-125.85), 0.0]) : Dynamic), 40.0, 0, cameraEase17);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_FADE_OUT_0_5S");
        var animationAction2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 77);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_34", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 1);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_35", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 1);
        var cameraEase18:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-265.84), 1.57, (-876.46)]) : Dynamic), (lua.Table.create([(-5.42), (-102.12), 0.0]) : Dynamic), 40.0, 0, cameraEase18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot10, "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)(this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 19);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_26", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT_0S");
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot10, "rejoice_small", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot10, 18);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_27", "main_05_01", this.slot10);
        var cameraEase19:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-264.53), 1.34, (-878.51)]) : Dynamic), (lua.Table.create([1.71, 152.28, 0.0]) : Dynamic), 40.0, 0, cameraEase19);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot9);
        var animationAction3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 491);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_28", "main_05_01", this.slot9);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot10, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.slot10, this.slot8);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_29", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot9, 1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot8, this.slot10, "head");
        this.TimeWait(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot9, this.slot10, "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2000_talk_30", "main_05_01", this.slot10);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_ENV_POS_ON");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.1, true);
    }
}
