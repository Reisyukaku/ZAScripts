package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CBB02B248342F3BD9")
@:expose("CBB02B248342F3BD9")
class Ev_m04_4009 extends BaseMainScenario
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

    @:abiSlot(13)
    public var slot13:Dynamic;

    public function new()
    {
        this.slot13 = 3;
        this.slot12 = "npc_main04_0004";
        this.slot11 = "npc_main04_0003";
        this.slot10 = "npc_main_ju_leader";
        this.slot9 = "npc_main_holo_ga_boss";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main04_0003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot11, this.slot8, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot8, this.slot11, ("head" : Dynamic));
        var slot11:Dynamic = this.slot11;
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.slot8, slot11);
        var getFlagValueResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.GetFlagValue)(("flag_Ev_m04_4009" : Dynamic));
        if (!lua.abi.Host.truthy(getFlagValueResult))
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            var slot112:Dynamic = this.slot11;
            showMessage((0 : Dynamic), ("msg_Ev_m04_4010_talk_25" : Dynamic), ("main_04_01" : Dynamic), slot112);
        }
        else
        {
        };
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4010_talk_01", "main_04_01", this.slot11);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot11, (untyped -89.09), 0.15, (untyped -390.36), (untyped -20.0));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -89.59), 0.16, (untyped -388.95), 180.0);
        var sceneVector:Dynamic = lua.Table.create([(-89.46), 1.75, (-389.32)]);
        var sceneVector2:Dynamic = lua.Table.create([0.0, (-20.58), 0.0]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector, sceneVector2, 40.0, 0, cameraEase, null, (null : Dynamic), (null : Dynamic), (null : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot11, "smile", this.slot11);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 2);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4010_talk_29", "main_04_01", this.slot11);
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m04_4010_select_01", "msg_Ev_m04_4010_select_02", "msg_Ev_m04_4010_select_03"]), 0, false, false);
        if (2 == menuSelection)
        {
            var remainingAttemptsAfterAnswer1:Dynamic = untyped this.slot13 - 1;
            this.slot13 = remainingAttemptsAfterAnswer1;
        }
        else
        {
        };
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4010_talk_26", "main_04_01", this.slot11);
        var menuSelection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m04_4010_select_04", "msg_Ev_m04_4010_select_05", "msg_Ev_m04_4010_select_06"]), 0, false, false);
        if (0 == menuSelection2)
        {
            var remainingAttemptsAfterAnswer2:Dynamic = untyped this.slot13 - 1;
            this.slot13 = remainingAttemptsAfterAnswer2;
        }
        else
        {
        };
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4010_talk_27", "main_04_01", this.slot11);
        var menuSelection3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m04_4010_select_07", "msg_Ev_m04_4010_select_08", "msg_Ev_m04_4010_select_09"]), 0, (false : Dynamic), (false : Dynamic));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var scenario:Dynamic = this;
        var timeWait:Dynamic = untyped this.F32FAD7D4DF3ACA95;
        timeWait(scenario, (0.5 : Dynamic));
        if (1 == menuSelection3)
        {
            var remainingAttemptsAfterAnswer3:Dynamic = untyped this.slot13 - 1;
            this.slot13 = remainingAttemptsAfterAnswer3;
        }
        else
        {
        };
        var remainingAttempts:Dynamic = this.slot13;
        if (remainingAttempts > 0)
        {
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 1);
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot11, "sad2", this.slot11);
            (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)(this.slot11);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 19);
            var slot113:Dynamic = this.slot11;
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4010_talk_02", "main_04_01", slot113);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot11, "normal", this.slot11);
            this.TimeWait(0.5);
            (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", (0.1 : Dynamic), (true : Dynamic));
            (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal(("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000" : Dynamic));
            untyped this.m_resultParam = 1;
        }
        else
        {
            var remainingAttemptsAfterFinalAnswer:Dynamic = this.slot13;
            if (0 == remainingAttemptsAfterFinalAnswer)
            {
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot11);
                this.TimeWait(0.5);
                (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot11, "anger_mc", this.slot11);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 1);
                (untyped main.event.ik.command.IkScriptCommand.FObj_CloseEye)(this.slot11);
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4010_talk_28", "main_04_01", this.slot11);
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                this.TimeWait(0.5);
                var sceneVector3:Dynamic = lua.Table.create([(-89.4), 1.76, (-389.47)]);
                var sceneVector4:Dynamic = lua.Table.create([0.0, (-20.58), 0.0]);
                var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.5, sceneVector3, sceneVector4, 40.0, 0, cameraEase2);
                (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot11, "rejoice_small", this.slot11);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.slot11, 18);
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m04_4010_talk_03", "main_04_01", this.slot11);
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                this.TimeWait(0.5);
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.slot8, (untyped -90.46), 0.16, (untyped -389.39), 166.94);
                var sceneVector5:Dynamic = lua.Table.create([(-92.35), 1.59, (-384.07)]);
                var sceneVector6:Dynamic = lua.Table.create([0.0, (-19.72), 0.0]);
                var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase3, null, (null : Dynamic), (null : Dynamic));
                (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.slot8, (untyped -88.58), 0.15, (untyped -394.71), 0.5);
                (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.slot11, "normal", this.slot11);
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.slot8);
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.slot11, this.slot8, "head");
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.slot11, (untyped -90.0));
                (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_FADE_OUT_5S");
                (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T1000");
                this.TimeWait(1.5);
                (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.5, true);
                untyped this.m_resultParam = 0;
                (untyped main.event.ik.command.IkScriptCommand.SB54DBC4F41BBBCDD)("Player");
                (untyped main.event.ik.command.IkScriptCommand.SB54DBC4F41BBBCDD)(this.slot11);
                var eventMapChange:Dynamic = untyped main.event.ik.command.IkScriptCommand.EventMapChange;
                eventMapChange(("t1" : Dynamic), (untyped -67.12 : Dynamic), (0.15 : Dynamic), (untyped -439.18 : Dynamic), (0 : Dynamic), (untyped -112.53 : Dynamic), (0 : Dynamic));
            }
            else
            {
            };
        };
    }
}
