package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7F9A8FBF50953E1B")
@:expose("C7F9A8FBF50953E1B")
class Ev_m03_3010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_MACHI:Dynamic;

    @:abiSlot(10)
    public var CHR_AZ:Dynamic;

    @:abiSlot(11)
    public var CHR_RIV:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    public function new()
    {
        untyped (this)[12] = "dyn_abu";
        untyped (this)[11] = "dyn_riv";
        untyped (this)[10] = "dyn_az";
        untyped (this)[9] = "dyn_machi";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_hotel_manager", "npc_main_rival_m", this.slot12]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MACHI, lua.Table.create([-814.7, 6.01, -535.15]), -162.43, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_AZ, lua.Table.create([-812.63, 20.44, -542.27]), 180.0, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([-818.44, 6.11, -539.59]), 180.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot12, lua.Table.create([-812.63, 20.44, -542.27]), -166.0, 359, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "normal", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "normal", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -814.97, 6.01, -536.24, 13.91);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -804.87, 20.44, -544.7, -67.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, -814.7, 6.01, -535.15, -166.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_AZ, -815.58, 6.01, -534.19, 151.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -817.43, 6.0, -537.08, 39.12);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-810.7, 20.47, -541.44, 124.0);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_ABUSORUNAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -814.97, 6.01, -536.24, -2.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, -818.52, 5.92, -546.14, -0.68);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-817.6, 8.12, -537.64]), lua.Table.create([4.52, -130.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-817.6, 6.97, -537.64]), lua.Table.create([4.52, -130.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MACHI, this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1(this.CHR_RIV, false);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MACHI, 32, null, 4.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_03", "main_03_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(scenario[8], lua.Table.create([-814.7, 7.6, -535.15]));
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-816.1, 7.47, -536.65]), lua.Table.create([-6.52, -124.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var pendingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_04", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_05", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, -818.37, 6.12, -538.84, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-812.56, 8.32, -533.61]), lua.Table.create([-12.49, 47.88, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_30", "main_03_01", this.CHR_RIV, null, null, (function():Dynamic
        {
            pendingAction = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[9]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[11]);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[11], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[11], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[10], "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[9], scenario[11]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, 47.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_06", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-817.34, 7.47, -537.83]), lua.Table.create([-3.12, 44.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "surprise2", "npc_main_rival_m");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_07", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-816.83, 7.81, -537.51]), lua.Table.create([-7.54, -137.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-816.83, 7.81, -537.51]), lua.Table.create([-1.55, -143.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_AZ, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_08", "main_03_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 18);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[10]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[11], scenario[10]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MACHI, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-814.95, 7.62, -536.03]), lua.Table.create([-5.27, -164.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-814.95, 7.46, -536.03]), lua.Table.create([-5.27, -164.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_09", "main_03_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MACHI, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "rejoice_small", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_10", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 19);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "sad2", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_11", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MACHI, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "serious", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_12", "main_03_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-813.44, 7.36, -534.66]), lua.Table.create([-5.77, 54.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, -816.56, 6.01, -536.86, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_13", "main_03_01", this.CHR_RIV, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "serious", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[11], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-815.78, 7.11, -537.29]), lua.Table.create([7.99, -160.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-815.78, 7.11, -537.29]), lua.Table.create([11.2, -160.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_14", "main_03_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 18);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[10], "head");
            return null;
        }));
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_3010_select_01", "msg_Ev_m03_3010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-814.54, 7.47, -535.37]), lua.Table.create([-8.09, 40.12, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_machi", -814.89, 6.01, -534.6, 73.62);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_15", "main_03_01", this.CHR_RIV, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[11], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -810.38, 5.99, -533.88, -112.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("dyn_abu", 9);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_RIV, this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_AZ, 102.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_MACHI, this.slot12);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-820.13, 7.05, -537.28]), lua.Table.create([-1.69, -109.17, 0.0]), 40.0, 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-819.55, 7.04, -537.08]), lua.Table.create([-1.69, -109.17, 0.0]), 40.0, 0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MACHI, "normal", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_16", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_AZ, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_25", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_26", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -810.38, 5.99, -533.88, -112.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, -812.46, 5.99, -535.08, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-814.88, 7.97, -535.34]), lua.Table.create([10.63, 164.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.SetMonsterBallTag(3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_AZ, "rejoice_small", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_27", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-816.11, 7.79, -535.95]), lua.Table.create([-21.83, -91.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_PLY, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-816.11, 7.64, -535.95]), lua.Table.create([-21.83, -91.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 201);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_BALL_LIGHT");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, false);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5, true);
        this.TimeWait(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m03_3010_talk_40", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-814.42, 7.19, -534.88]), lua.Table.create([-8.81, 34.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-814.42, 7.48, -534.88]), lua.Table.create([-8.81, 34.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "rejoice_small", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY));
        main.event.ik.command.IkScriptCommand.ReSetMonsterBallTag(3);
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 18);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "rejoice_small", "npc_main_rival_m");
        var chrRIVAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_RIV, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_22", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, -814.52, 6.01, -534.48, -165.66);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-813.93, 6.86, -537.78]), lua.Table.create([5.31, 157.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_3010_talk_23", "main_03_01", this.CHR_MACHI, null, null, (function():Dynamic
        {
            pendingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 2);
            scenario.F32FAD7D4DF3ACA95(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "rejoice_big", "npc_main_detective");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
            pendingAction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 15);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(chrRIVAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-811.36, 7.37, -532.31]), lua.Table.create([-2.64, 54.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-810.28, 7.43, -531.54]), lua.Table.create([-2.64, 54.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3010_talk_24", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_03_05");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_ON");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -810.7, 20.47, -541.44, 124.0);
    }
}
