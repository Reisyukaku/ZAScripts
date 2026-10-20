package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAB2CF76499A244A0")
@:expose("CAB2CF76499A244A0")
class Ev_m08_0110 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_JET:Dynamic;

    @:abiSlot(11)
    public var CHR_MAS:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    public function new()
    {
        this.slot12 = "npc_main_t1_i003_001";
        this.CHR_MAS = "dyn_mas";
        this.CHR_JET = "dyn_jet";
        this.CHR_RIV = "dyn_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_president", "npc_main_secretary", this.slot12]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot12, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([0.68, 0.01, -1.48]), 0.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_JET, lua.Table.create([-0.5, 0.0, -2.6]), 97.5, "npc_main_president");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MAS, lua.Table.create([0.6, 0.0, -2.43]), -98.0, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait(this.CHR_MAS, "ob0004_00_normal_08");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_PLY, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_RIV, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -2.52, 0.0, -10.72, -14.54);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 0.68, 0.01, -1.48, 0.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JET, -0.5, 0.014, -2.6, 97.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, 0.6, 0.0, -2.43, -98.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.56, 5.93, -13.1]), lua.Table.create([-9.23, 171.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([1.56, 2.59, -13.1]), lua.Table.create([-9.23, 171.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 32);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.74, 1.85, -3.49]), lua.Table.create([-15.21, 123.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -0.82, 0.0, -6.65, -14.54);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 0.68, 0.01, -7.35, 0.85);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_01", "main_08_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 18);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_PLY, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_RIV, true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -0.77, 0.0, -4.26, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, 0.74, 0.01, -4.64, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-2.83, 1.33, -5.37]), lua.Table.create([-6.08, -126.51, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_JET);
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_JET, 175.5);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MAS, 173.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_JET);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JET, "rejoice_small", "npc_main_president");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_JET, 172);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_02", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_03", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.43, 1.3, -3.54]), lua.Table.create([-1.08, 175.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_04", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var fObj_Reset_AnimationResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_JET);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, 0.62, 0.0, -2.04, 173.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.66, 1.4, -3.32]), lua.Table.create([-6.23, -50.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_05", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.84, 1.4, -1.4]), lua.Table.create([-6.98, -14.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Reset_AnimationResult);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_JET, 172);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_06", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JET, "serious", "npc_main_president");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.57, 1.86, -2.31]), lua.Table.create([-20.85, 93.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_MAS, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_JET, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 18);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_RIV, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_RIV, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.01, 1.32, -3.65]), lua.Table.create([-3.88, 155.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_07", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.57, 1.48, -3.4]), lua.Table.create([-7.5, -52.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_08", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 32);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.04, 1.96, -7.03]), lua.Table.create([-14.83, -179.52, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(12.0, lua.Table.create([0.03, 2.14, -7.71]), lua.Table.create([-14.83, -179.52, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_09", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_10", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_ON");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T500");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        var loadOnePicture:Dynamic = untyped main.event.ik.command.IkScriptCommand.LoadOnePicture;
        loadOnePicture((("onepicture_ev_m08_0110_01" : Dynamic)));
        while (true)
        {
            if (false != main.event.ik.command.IkScriptCommand.IsCompleteLoadingPicture())
            {
                break;
            }
            else
            {
            };
            var scenario2:Dynamic = this;
            var suspend:Dynamic = untyped this.F12F63EE47FFCB183;
            suspend(scenario2);
        };
        main.event.ik.command.IkScriptCommand.ShowOnePicture();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_11", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_12", "main_08_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var loadOnePicture2:Dynamic = untyped main.event.ik.command.IkScriptCommand.LoadOnePicture;
        loadOnePicture2((("onepicture_ev_m08_0110_02" : Dynamic)));
        while (true)
        {
            if (false != main.event.ik.command.IkScriptCommand.IsCompleteLoadingPicture())
            {
                break;
            }
            else
            {
            };
            var scenario3:Dynamic = this;
            var suspend2:Dynamic = untyped this.F12F63EE47FFCB183;
            suspend2(scenario3);
        };
        var startOnePictureCrossFade:Dynamic = untyped main.event.ik.command.IkScriptCommand.StartOnePictureCrossFade;
        startOnePictureCrossFade((("onepicture_ev_m08_0110_02" : Dynamic)));
        while (true)
        {
            if (false != main.event.ik.command.IkScriptCommand.IsCompleteOnePictureCrossFade())
            {
                break;
            }
            else
            {
            };
            var scenario4:Dynamic = this;
            var suspend3:Dynamic = untyped this.F12F63EE47FFCB183;
            suspend3(scenario4);
        };
        main.event.ik.command.IkScriptCommand.ShowOnePicture();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_13", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_14", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_15", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var loadOnePicture3:Dynamic = untyped main.event.ik.command.IkScriptCommand.LoadOnePicture;
        loadOnePicture3((("onepicture_ev_m08_0110_03" : Dynamic)));
        while (true)
        {
            if (false != main.event.ik.command.IkScriptCommand.IsCompleteLoadingPicture())
            {
                break;
            }
            else
            {
            };
            var scenario5:Dynamic = this;
            var suspend4:Dynamic = untyped this.F12F63EE47FFCB183;
            suspend4(scenario5);
        };
        var startOnePictureCrossFade2:Dynamic = untyped main.event.ik.command.IkScriptCommand.StartOnePictureCrossFade;
        startOnePictureCrossFade2((("onepicture_ev_m08_0110_03" : Dynamic)));
        while (true)
        {
            if (false != main.event.ik.command.IkScriptCommand.IsCompleteOnePictureCrossFade())
            {
                break;
            }
            else
            {
            };
            var scenario6:Dynamic = this;
            var suspend5:Dynamic = untyped this.F12F63EE47FFCB183;
            suspend5(scenario6);
        };
        main.event.ik.command.IkScriptCommand.ShowOnePicture();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_16", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_17", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_JET);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 2);
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-3.3, 1.29, -5.23]), lua.Table.create([-7.05, -118.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ExitOnePicture();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T500");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_OFF");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M08_0110_ROTOM_CALL");
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_M12DB_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.81, 1.34, -1.24]), lua.Table.create([-5.7, -13.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MAS, 130.0);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_18", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.28, 1.14, -3.46]), lua.Table.create([4.99, -128.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JET, "rejoice_small", "npc_main_president");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 174);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_RESET_T0");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_19", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MAS, -148.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JET, "normal", "npc_main_president");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_20", "main_08_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 0.16, 0.01, -4.52, 1.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -0.61, 0.0, -4.29, 1.41);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MAS, 0.88, 0.0, 2.87, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 1);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_JET, 115.5);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.01, 1.39, -1.29]), lua.Table.create([-7.56, 12.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([0.11, 1.39, -1.32]), lua.Table.create([-7.56, 12.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MAS, false);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_0110_talk_21", "main_08_01", this.CHR_JET, null, null, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_JET);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_JET, 172.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_0110_talk_22", "main_08_01", this.CHR_JET, null, null, (function():Dynamic
        {
            var timeWait:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait(scenario, 0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            var timeWait2:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait2(scenario, 0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_0110_talk_23", "main_08_01", this.CHR_RIV, null, null, (function():Dynamic
        {
            var timeWait3:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait3(scenario, 1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
            var timeWait4:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait4(scenario, 0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            return null;
        }));
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_0110_select_01", "msg_Ev_m08_0110_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.06, 1.32, -5.83]), lua.Table.create([-5.76, 175.12, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-0.03, 1.3, -6.11]), lua.Table.create([-5.76, 175.12, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_JET, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_24", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_25", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_50", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, -170.0);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, -170.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.63, 1.34, -3.64]), lua.Table.create([-5.76, -167.11, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JET, "sad", "npc_main_president");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_26", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.19, 1.05, -6.27]), lua.Table.create([-0.04, -170.61, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, -35.23);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 21.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JET, this.CHR_RIV, "neck");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-0.13, 1.05, -5.9]), lua.Table.create([-0.04, -170.61, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_0110_talk_27", "main_08_01", this.CHR_JET, null, null, (function():Dynamic
        {
            var timeWait5:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait5(scenario, 1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[9], "leg");
            var timeWait6:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait6(scenario, 1.5);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.75, 1.34, -1.68]), lua.Table.create([-5.36, -44.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_JET, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_28", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.47, 1.38, -3.45]), lua.Table.create([-6.36, -177.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_JET, 28);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_JET);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-3.8, 1.37, -0.13]), lua.Table.create([-7.14, -44.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-4.22, 1.44, 0.29]), lua.Table.create([-7.14, -44.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_29", "main_08_01", this.CHR_JET);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.5, 1.44, -3.78]), lua.Table.create([-7.14, -44.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_JET, "normal", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "confident", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_30", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, -88.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_MAS, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, 0.88, 0.0, 2.89, 180.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_31", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MAS, 0.76, 0.0, -3.28, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.61, 2.04, -5.99]), lua.Table.create([-10.58, -152.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-1.61, 2.04, -5.99]), lua.Table.create([-11.88, -142.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, 4.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MAS, 0.76, 0.0, -3.28, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_0110_talk_34", "main_08_01", this.CHR_MAS, null, null, (function():Dynamic
        {
            var timeWait7:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait7(scenario, 1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[11], "head");
            var timeWait8:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait8(scenario, 0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[11], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_35", "main_08_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_36", "main_08_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.28, 1.69, -1.32]), lua.Table.create([-12.77, -31.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_37", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_JET, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.16, 1.41, -5.52]), lua.Table.create([-6.59, 170.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m08_0110_talk_38", "main_08_01", this.CHR_RIV, null, null, (function():Dynamic
        {
            var timeWait9:Dynamic = scenario.F32FAD7D4DF3ACA95;
            timeWait9(scenario, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.21, 1.49, -2.92]), lua.Table.create([-8.91, -29.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_0110_talk_39", "main_08_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot12, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, 2.05, -0.0, -3.71, -100.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
