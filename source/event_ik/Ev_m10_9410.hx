package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C340E371221B08E5D")
@:expose("C340E371221B08E5D")
class Ev_m10_9410 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_MAS:Dynamic;

    public function new()
    {
        untyped (this)[9] = "npc_main_secretary";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FA6B071B428B5C373")
    public function k_GotoGate():Dynamic
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_DOOR_CUSHION");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3, true);
        main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.52, 2.42, 4.54]), lua.Table.create([-10.23, -168.51, -0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.CHR_MAS, untyped this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PLY, 2.16, 0.61, 14.24, -18.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_MAS, 3.53, 0.6, 8.77, -121.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(untyped this.CHR_PLY, -1.28, 0.61, 14.21, 0.5);
        untyped this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.3, true);
        untyped this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9410_talk_01", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9410_talk_02", "main_10_01", this.CHR_MAS);
        var choices:Dynamic = (["msg_Ev_m10_9410_select_01", "msg_Ev_m10_9410_select_02", "msg_Ev_m10_9410_select_03", "msg_Ev_m10_9410_select_04"]);
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Main10_Y_Bousou_01")))
        {
            choices.remove("msg_Ev_m10_9410_select_01");
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Main10_Y_Bousou_02")))
        {
            choices.remove("msg_Ev_m10_9410_select_02");
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Main10_Y_Bousou_03")))
        {
            choices.remove("msg_Ev_m10_9410_select_03");
        };
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 18);
        var selectedLabel:Dynamic = untyped choices[selection];
        if ("msg_Ev_m10_9410_select_01" == selectedLabel)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9410_talk_03", "main_10_01", this.CHR_MAS);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped this.m_resultParam = 10;
            this.k_GotoGate();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_SILENCE");
        }
        else if ("msg_Ev_m10_9410_select_02" == selectedLabel)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9410_talk_03", "main_10_01", this.CHR_MAS);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped this.m_resultParam = 20;
            this.k_GotoGate();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_SILENCE");
        }
        else if ("msg_Ev_m10_9410_select_03" == selectedLabel)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9410_talk_03", "main_10_01", this.CHR_MAS);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped this.m_resultParam = 30;
            this.k_GotoGate();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_SILENCE");
        }
        else if ("msg_Ev_m10_9410_select_04" == selectedLabel)
        {
        };
    }
}
