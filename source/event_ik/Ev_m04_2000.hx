package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE660111592496C18")
@:expose("CE660111592496C18")
class Ev_m04_2000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_MOB1:Dynamic;

    @:abiSlot(9)
    public var CHR_MOB2:Dynamic;

    @:abiSlot(10)
    public var CHR_TARA:Dynamic;

    @:abiSlot(11)
    public var CHR_PLY:Dynamic;

    public function new()
    {
        this.CHR_PLY = "npc_main04_0002";
        this.CHR_TARA = "npc_main04_0001";
        this.CHR_MOB2 = "npc_main_ga_leader";
        this.CHR_MOB1 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ga_leader", "npc_main04_0001", "npc_main04_0002"]);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)((untyped this.CHR_TARA), 1);
        return untyped (untyped (untyped main.event.ik.base.BaseMainScenario.prototype).F3250254222F75035)(this);
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB1, (-652.32), 6.01, (-373.43), 74.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB2, (-649.92), 6.12, (-371.86), 66.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, (-648.41), 6.12, (-372.32), (-63.44));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-648.48), 6.12, (-370.33), (-144.47));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-652.85), 7.29, (-372.57)]), lua.Table.create([(-6.71), (-89.79), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-653.43), 7.3, (-372.57)]), lua.Table.create([(-6.71), (-89.79), 0.0]), 40.0, 0, cameraEase, null, null, null);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MOB2, this.CHR_MOB1);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_TARA, this.CHR_MOB1);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_MOB1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MOB1, this.CHR_MOB2, "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MOB1, untyped -651.51, 6.01, untyped -372.97, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03_LOW");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m04_2000");
        if (!lua.abi.Host.truthy(flagValue))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MOB2, 32, null, 0.9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_01", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_02", "main_04_01", "npc_main_ga_leader");
            (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_2000_select_01", "msg_Ev_m04_2000_select_02"]), 0, false, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MOB2, 32, null, 0.9);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_03", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_04", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-651.58), 7.13, (-372.19)]), lua.Table.create([0.03, (-94.05), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_05", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_06", "main_04_01", "npc_main_ga_leader");
            (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_2000_select_03", "msg_Ev_m04_2000_select_04"]), 0, false, false));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-653.33), 7.24, (-372.62)]), lua.Table.create([0.03, (-94.05), 0.0]), 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MOB2, 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_07", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            var fObjResetAnimation:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation;
            var cHRMOB2:Dynamic = this.CHR_MOB2;
            fObjResetAnimation(cHRMOB2);
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MOB2, 32, null, 0.9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_08", "main_04_01", "npc_main_ga_leader");
        var menuLabels:Dynamic = (["msg_Ev_m04_2000_select_05", "msg_Ev_m04_2000_select_06"]);
        var selection3:Dynamic = (main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false));
        var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (1 == selection3)
        {
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MOB2, 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_09", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MOB2, 66.29);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_TARA, (-63.44));
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, (-144.47));
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            waitFObjAction();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-651.2), 7.01, (-372.5)]), lua.Table.create([6.0, (-105.32), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MOB2, 19);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_MOB2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2000_talk_10", "main_04_01", "npc_main_ga_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MOB2, "normal", "npc_main_ga_leader");
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MOB2, this.CHR_TARA, "head");
            var callback:Dynamic = function():Dynamic
            {
                scenario.F32FAD7D4DF3ACA95(0.5);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 2);
                scenario.F32FAD7D4DF3ACA95(0.5);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 174);
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_2000_talk_11", "main_04_01", "npc_main_ga_leader", null, null, callback);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MOB2);
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(7);
        };
        untyped this.m_resultParam = selection3;
    }
}
