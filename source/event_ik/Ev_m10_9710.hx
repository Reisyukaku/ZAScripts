package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C4D971C1230065EEC")
@:expose("C4D971C1230065EEC")
class Ev_m10_9710 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    public function new()
    {
        untyped (this)[9] = "npc_main_f";
        untyped (this)[8] = "Player";
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
        var scenario:Ev_m10_9710 = this;
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.slot8, this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9710_talk_01", "main_10_01", this.slot9);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m10_9710_select_01", "msg_Ev_m10_9710_select_02"], 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -661.99, 0.01, -874.84, -146.64);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot9, 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_LOW");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-658.2, 2.52, -873.47]), lua.Table.create([-3.7, 60.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-658.2, 1.23, -873.47]), lua.Table.create([-3.7, 60.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
            this.TimeWait(1.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-664.1, 1.91, -878.67]), lua.Table.create([-3.7, 60.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-664.1, 1.77, -878.67]), lua.Table.create([-3.7, 60.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))), null, null, null);
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9710_talk_03", "main_10_01", slot9, null, null, function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario.slot9);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario.slot9, 19);
                return null;
            });
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 2);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "confident", "npc_main_f");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9710_talk_04", "main_10_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else if (1 == selection)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9710_talk_02", "main_10_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        };
        untyped this.m_resultParam = selection;
    }
}
