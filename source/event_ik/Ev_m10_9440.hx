package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C33FD191221A1E830")
@:expose("C33FD191221A1E830")
class Ev_m10_9440 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_MAS:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    @:abiSlot(11)
    public var CHR_PLY:Dynamic;

    public function new()
    {
        untyped (this)[11] = "dyn_guris";
        untyped (this)[10] = "dyn_guri";
        untyped (this)[9] = "npc_main_secretary";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_secretary", "npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m10_9440 = this;
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait(this.CHR_GURI, "ob0004_00_normal_08");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURIS, lua.Table.create([0.0, 0.01, -2.4]), 180.0, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PLY, lua.Table.create([0.0, 0.01, -2.4]), 180.0, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, 1.68, 0.61, 8.14, 57.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, 3.08, 0.6, 8.98, -126.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, 0.37, 0.32, 4.19, 26.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 1.05, 0.31, 4.1, 16.53);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.45, 2.05, 5.51]), lua.Table.create([-5.05, -164.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 31);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9430_talk_01", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_01", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, 2.0, 0.61, 6.52, 0.5);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURIS, 1.13, 0.61, 6.13, 0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_small_mc", "npc_main_nu_boss_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "rejoice_small_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.15, 2.26, 10.07]), lua.Table.create([-8.46, 21.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "rejoice_big_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9440_talk_02", "main_10_01", this.CHR_PLY, null, null, (function():Dynamic
        {
            scenario.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(scenario.CHR_MAS, 176.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_GURI, scenario.CHR_PLY, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MAS, 102.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_GURI, "head");
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_GURI, "head");
        this.TimeWait(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_GURI, -50.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_03", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_04", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_05", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_06", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_GURI, -126.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_07", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_08", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_GURIS, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 172);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_09", "main_10_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_PLY, 172);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "rejoice_small_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9440_talk_10", "main_10_01", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
    }
}
