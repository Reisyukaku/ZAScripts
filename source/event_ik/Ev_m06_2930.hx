package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDA39C24B20EFCEA")
@:expose("CDDA39C24B20EFCEA")
class Ev_m06_2930 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    public function new()
    {
        this.slot9 = "npc_main06_0002";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-135.15), (-3.38), (-365.99)]), lua.Table.create([(-2.14), (-175.94), (-0.0)]), 40.0, 0, cameraEase, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-134.58), (-4.69), (-364.34), (-31.06));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-135.6), (-4.7), (-363.14), 163.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 172, null, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2930_talk_01", "main_06_01", this.slot9);
        var menuLabels:Dynamic = (["msg_Ev_m06_2930_select_01", "msg_Ev_m06_2930_select_02"]);
        var selection:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (1 == selection)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var slot9:Dynamic = this.slot9;
            var callback:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[9]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 19);
                scenario.F32FAD7D4DF3ACA95(1.0);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", scenario[9]);
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2930_talk_02", "main_06_01", slot9, null, null, callback);
            var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow2();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot8, 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var slot92:Dynamic = this.slot9;
            var callback2:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[9]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 18);
                scenario.F32FAD7D4DF3ACA95(1.0);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", scenario[9]);
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2930_talk_03", "main_06_01", slot92, null, null, callback2);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, (-35.24));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            this.TimeWait(0.5);
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal("PLAY_SS_METAL_DOOR_OP");
        };
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped this.m_resultParam = selection;
    }
}
