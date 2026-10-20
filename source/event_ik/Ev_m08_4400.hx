package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CBF2206415031C30E")
@:expose("CBF2206415031C30E")
class Ev_m08_4400 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    public function new()
    {
        this.CHR_GURIS = "dyn_guris";
        this.CHR_GURI = "dyn_guri";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.44), 1.13, (-0.11)]), lua.Table.create([0.0, (-27.07), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURI, lua.Table.create([0.0, 0.01, (-2.4)]), 180.0, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURIS, lua.Table.create([0.0, 0.01, (-2.4)]), 180.0, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 0.14, 0.01, (-4.67), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, (-0.26), 0.01, 2.6, (-4.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, (-1.53), 0.01, 1.59, 165.25);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 0.14, 0.01, (-4.67), 0.0));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, (-0.01), 0.01, (-2.44), 0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise2", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lua.Table.create([0.68, 4.0, 3.07]));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_4400_talk_01", "main_08_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[8], "normal", scenario[8]);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.35), 1.24, (-4.28)]), lua.Table.create([(-4.74), (-172.84), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-0.75), 1.24, (-4.23)]), lua.Table.create([(-4.74), (-172.84), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_GURI, 176.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_02", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_EXC_BGM_02");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.28), 1.59, 1.42]), lua.Table.create([(-3.98), (-177.57), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_03", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_05", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-3.98), 1.22, 4.66]), lua.Table.create([(-3.59), (-46.26), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(16.0, lua.Table.create([(-4.73), 1.22, 3.7]), lua.Table.create([(-3.59), (-57.88), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_06", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_07", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_08", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.7), 1.59, 0.48]), lua.Table.create([(-6.74), (-145.24), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([(-1.59), 1.59, 0.63]), lua.Table.create([(-6.74), (-145.24), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_09", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.75), 1.68, 1.85]), lua.Table.create([(-6.74), (-145.24), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-0.69), 1.68, 1.94]), lua.Table.create([(-6.74), (-145.24), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH03");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_10", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.63), 1.27, (-1.46)]), lua.Table.create([2.68, (-33.78), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_11", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_12", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.28), 1.59, 1.42]), lua.Table.create([(-3.98), (-177.57), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_13", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "lose", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_GURI, lua.Table.create([(-0.26), 0.01, 2.6]));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 19);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_14", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_15", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.69), 1.33, (-3.75)]), lua.Table.create([(-4.74), (-172.84), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-0.76), 1.28, (-4.32)]), lua.Table.create([(-4.74), (-172.84), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_16", "main_08_01", this.CHR_GURI);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4400_select_01", "msg_Ev_m08_4400_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_GURI, 24.0);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_GURIS, lua.Table.create([(-0.26), 1.7, 2.6]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.25, 1.54, 0.52]), lua.Table.create([(-5.63), 175.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_17", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.27, 1.1, 3.2]), lua.Table.create([8.99, 73.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 491);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 77);
        main.event.ik.command.IkScriptCommand.ShowMessage_Auto(2.0, 1, "msg_Ev_m08_4400_talk_19", "main_08_01", this.CHR_GURI, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.25, 1.54, 0.52]), lua.Table.create([(-5.63), 175.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MOVE_BOOKSHELF");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i015_shelf", "t1_i015_shelf", "open", "trigger");
        this.TimeWait(4.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MOVE_BOOKSHELF_FINISH");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 493);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_GURI, 180.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.75), 1.24, (-4.23)]), lua.Table.create([(-4.74), (-172.84), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_21", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_22", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_23", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_24", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.7), 1.59, 0.48]), lua.Table.create([(-6.74), (-145.24), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_26", "main_08_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var chrGURIMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURI, (-1.35), 0.01, 3.18, 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-1.7), 1.59, 0.48]), lua.Table.create([(-6.74), (-161.57), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_4400_talk_27", "main_08_01", this.CHR_GURIS, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chrGURIMovement);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(scenario[9], 108.0);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4400_talk_28", "main_08_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_4400_talk_29", "main_08_01", this.CHR_GURIS, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[10]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[10], 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "normal", "npc_main_nu_boss_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
