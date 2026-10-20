package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C64196873C481EB36")
@:expose("C64196873C481EB36")
class Ev_m01_0120 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var CHR_RIV:Dynamic;

    public function new()
    {
        untyped (this)[10] = "npc_main01_0003";
        untyped (this)[9] = "npc_main_rival_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([this.slot9, this.CHR_RIV]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.CHR_RIV, "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", this.slot9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -705.46, 0.01, -867.02, -39.77);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -705.86, 0.0, -867.76, -12.18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -706.76, -0.0, -865.93, 131.42);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-701.44, 3.02, -867.1]), lua.Table.create([-19.82, 91.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-701.44, 2.27, -867.1]), lua.Table.create([-19.82, 91.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT_M01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T500");
        if ("1" == (untyped this.m_eventScriptParam.f73EE8FEC()))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "sad2", this.CHR_RIV);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0119_talk_01", "main_01_01", this.CHR_RIV);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "anger", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0120_talk_01", "main_01_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-705.67, 1.47, -866.2]), lua.Table.create([-7.54, 7.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m01_0120_talk_02", "main_01_01", this.slot9, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "sad2", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[9]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[9], 19);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-705.87, 1.45, -866.15]), lua.Table.create([0.0, 101.71, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_rival_m");
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "anger_mc", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0120_talk_03", "main_01_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, -716.0, 0.0, -859.61, 2.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-702.27, 1.27, -867.58]), lua.Table.create([-5.08, 104.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-701.73, 1.27, -867.72]), lua.Table.create([-5.08, 104.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(2.0);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-706.35, 1.31, -866.12]), lua.Table.create([0.0, -28.94, 0.0]), 40.0, 0, cameraEase, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_RIV, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.CHR_PLY, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, -80.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.slot9, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "smile", "npc_main_rival_m");
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = eventParameters.f73EE8FEC();
        if ("0" == eventMode)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0120_talk_04", "main_01_01", this.slot9);
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m01_0120_select_01", "msg_Ev_m01_0120_select_02"]), 0, true, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 18);
            var wordSetNameMons:Dynamic = main.event.ik.command.IkScriptCommand.WordSet_Name_Mons;
            var initSelectPokemon:Dynamic = this.Get_InitSelectPokemon(0);
            wordSetNameMons(2, initSelectPokemon, null, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0120_talk_05", "main_01_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            if ("1" == eventMode)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0120_talk_10", "main_01_01", this.slot9);
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 32);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "smile", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0120_talk_06", "main_01_01", this.slot9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0120_talk_07", "main_01_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, -701.62, 0, -877.18, 2.0);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 174.5);
        this.TimeWait(1.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
