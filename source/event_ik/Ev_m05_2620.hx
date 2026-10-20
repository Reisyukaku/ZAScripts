package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB931B05FEA6F8B15")
@:expose("CB931B05FEA6F8B15")
class Ev_m05_2620 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_MACHI:Dynamic;

    @:abiSlot(10)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(11)
    public var CHR_MUKU:Dynamic;

    public function new()
    {
        this.CHR_MUKU = "dyn_muku";
        this.CHR_SIRO = "dyn_siro";
        this.CHR_MACHI = "dyn_machi";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_ju_boss", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MACHI, lua.Table.create([(-40.31), 6.01, (-271.46)]), (-100.0), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([(-40.31), 6.01, (-271.46)]), (-100.0), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MUKU, lua.Table.create([(-40.31), 6.01, (-271.46)]), (-100.0), "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-39.71), 6.02, (-264.68), (-0.87));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, (-39.95), 6.0, (-263.16), 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-40.65), 6.01, (-265.11), 5.66);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, (-38.9), 6.01, (-265.3), (-20.81));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-41.97), 8.18, (-266.8)]), lua.Table.create([(-9.58), (-138.85), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-41.97), 7.5, (-266.8)]), lua.Table.create([(-9.58), (-138.85), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_01", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_02", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.95), 7.35, (-262.3)]), lua.Table.create([(-3.79), (-32.23), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "surprise2", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_03", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.48), 7.54, (-266.29)]), lua.Table.create([(-10.75), (-170.5), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_04", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_PLY, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_05", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_06", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-38.91), 7.05, (-261.68)]), lua.Table.create([3.46, 21.15, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_07", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_SIRO, "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-37.72), 8.23, (-266.14)]), lua.Table.create([(-19.94), 130.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_08", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MUKU, 32, null, 5.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_09", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_10", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-39.15), 7.57, (-264.05)]), lua.Table.create([(-15.69), 135.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_11", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_12", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[11]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 19);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-39.27), 7.53, (-264.01)]), lua.Table.create([6.18, (-13.15), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([(-39.27), 7.69, (-264.01)]), lua.Table.create([6.18, (-13.15), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "normal", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_SIRO, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_13", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.02), 7.38, (-264.49)]), lua.Table.create([(-7.66), (-177.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MUKU, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_14", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-41.07), 7.21, (-262.07)]), lua.Table.create([(-0.68), (-34.1), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_27", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[11], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[11], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_SIRO, 32, null, 4.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_15", "main_05_01", this.CHR_SIRO, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MUKU, this.CHR_SIRO, "head");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.CHR_MUKU, "ob0004_00_normal_05");
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_16", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_SIRO, (-39.05), 6.01, (-264.95), 0.5);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-39.83), 7.8, (-263.71)]), lua.Table.create([(-0.68), (-34.07), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_17", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-39.36), 8.05, (-262.51)]), lua.Table.create([(-13.59), 3.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_SIRO, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_18", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_4S");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_SIRO, (-166.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_SIRO, (-39.82), 2.77, (-283.7), 2.0);
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-39.99), 7.2, (-264.35)]), lua.Table.create([1.07, (-178.32), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_19", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[11]);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 19));
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_SIRO, false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.87), 7.42, (-261.59)]), lua.Table.create([(-7.12), (-19.96), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MUKU, "normal", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_MUKU, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MACHI, 32, null, 3.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_20", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_21", "main_05_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(scenario[9], lua.Table.create([(-40.86), 9.0, (-263.17)]));
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-41.54), 7.56, (-265.62)]), lua.Table.create([(-11.32), (-136.19), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_22", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[11], 32, null, 5.0);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "normal", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[9], "head");
            scenario.F32FAD7D4DF3ACA95(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[11], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2620_talk_23", "main_05_01", this.CHR_MUKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.75), 7.19, (-261.7)]), lua.Table.create([(-2.47), (-16.37), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MACHI, lua.Table.create([(-40.86), 9.0, (-263.17)]));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_24", "main_05_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[9], 32, null, 4.0);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.72), 7.43, (-264.24)]), lua.Table.create([(-2.47), (-5.74), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_MUKU, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_25", "main_05_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 1);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-40.56), 7.2, (-264.0)]), lua.Table.create([4.46, (-142.9), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2620_talk_26", "main_05_01", this.CHR_MUKU, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "rejoice_small", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
    }
}
