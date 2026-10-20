package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C33DCAEC01E670E8B")
@:expose("C33DCAEC01E670E8B")
class Ev_m09_1050 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var slot14:Dynamic;

    @:abiSlot(15)
    public var slot15:Dynamic;

    public function new()
    {
        untyped (this)[15] = "npc_pokemon_floette";
        untyped (this)[14] = "dyn_hura";
        untyped (this)[13] = "npc_main_hotel_manager";
        untyped (this)[12] = "dyn_deu";
        untyped (this)[11] = "dyn_pyu";
        untyped (this)[10] = "dyn_mas";
        untyped (this)[9] = "npc_main_rival_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_secretary", "npc_main_friend_m", "npc_main_friend_f", "npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait(this.slot9, "ob0004_00_normal_01");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal", this.slot8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "normal", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot15, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([-494.86, 0.01, -579.23]), -29.935, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([-494.86, 0.01, -579.23]), -29.935, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, lua.Table.create([-494.86, 0.01, -579.23]), -29.935, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot13, lua.Table.create([-494.86, 0.01, -579.23]), -29.935, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot14, lua.Table.create([-494.86, 0.01, -579.23]), -152.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot13, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot13, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot14, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -497.44, 0.01, -579.28, -16.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -498.48, 0.0, -579.35, 10.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -496.95, 0.01, -577.25, -144.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -496.37, 0.01, -578.17, -118.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -497.97, 0.0, -577.02, 178.18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot14, -496.28, 1.14, -577.57, -126.7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.13, 1.54, -577.96]), lua.Table.create([11.22, -169.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-498.13, 1.45, -577.96]), lua.Table.create([11.22, -169.27, 0.0]), 40.0, 0, cameraEase, null, null, null, null);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_02");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 18);
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = eventParameters.f73EE8FEC();
        if ("0" == eventMode)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_01", "main_09_01", this.slot10);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.86, 1.37, -578.38]), lua.Table.create([-2.56, -44.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-499.07, 1.37, -578.59]), lua.Table.create([-2.56, -44.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot9);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, lua.Table.create([-498.31, 0.5, -578.34]));
            this.TimeWait(1.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", "npc_main_rival_m");
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_1050_talk_02", "main_09_01", this.slot9, null, null, (function():Dynamic
            {
                scenario.F32FAD7D4DF3ACA95(0.5);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[8], "surprise_mc", scenario[8]);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
                return null;
            }));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-501.03, 1.31, -578.37]), lua.Table.create([-4.18, -88.77, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot12, 32, null, 3.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "surprise_mc", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_03", "main_09_01", this.slot12);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-497.04, 1.42, -578.48]);
            var cameraVector2:Dynamic = lua.Table.create([-5.2, 45.07, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            cameraMoveAngle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase2, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal", this.slot8);
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_04", "main_09_01", this.slot9);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, true);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1055_talk_01", "main_09_01", this.slot10);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-499.07, 1.37, -578.59]), lua.Table.create([-2.56, -44.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null, null);
            this.TimeWait(0.5);
            var showMessageWithDisplayingAction:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction;
            var slot9:Dynamic = this.slot9;
            var callback:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 18);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", "npc_main_rival_m");
                scenario.F32FAD7D4DF3ACA95(0.5);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[8], "surprise_mc", scenario[8]);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
                scenario.F32FAD7D4DF3ACA95(1.0);
                return null;
            };
            showMessageWithDisplayingAction(0, "msg_Ev_m09_1055_talk_02", "main_09_01", slot9, null, null, callback);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "surprise_mc", "npc_main_friend_f");
            this.TimeWait(0.5);
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.17, 1.27, -577.75]), lua.Table.create([0.42, -98.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot11, 32);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "surprise_mc", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_05", "main_09_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-497.04, 1.42, -578.48]), lua.Table.create([-5.2, 45.07, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_06", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_07", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_08", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.14, 1.43, -578.04]), lua.Table.create([11.22, -169.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-498.13, 1.45, -577.96]), lua.Table.create([11.22, -169.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_09", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-499.38, 1.86, -580.19]), lua.Table.create([-13.49, -137.55, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_10", "main_09_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_1050_talk_11", "main_09_01", this.slot11, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 18);
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "rejoice_big_mc", "npc_main_friend_m");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.94, 1.48, -578.06]), lua.Table.create([-8.14, -33.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PostEvent2DWithEnd("PLAY_SS_ROTOM_CALL");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal", this.slot8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "normal", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.slot9);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.slot9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "surprise_mc", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot12);
        var cameraVector3:Dynamic = lua.Table.create([-498.4, 1.47, -578.84]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, cameraVector3);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot8, cameraVector3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot12, cameraVector3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot11, cameraVector3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot10, cameraVector3);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_1050_talk_12", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", "npc_main_rival_m");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 74);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_13", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T5000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_EXC_BGM_06_SUS");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_14", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "smile", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_15", "main_09_01", this.slot9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_small_mc", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_16", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_17", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.1, 1.36, -578.57]), lua.Table.create([-0.0, -38.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_18", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-497.31, 1.42, -578.44]), lua.Table.create([0.0, -103.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_19", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-497.57, 1.31, -578.06]), lua.Table.create([-0.43, -139.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_20", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-499.97, 1.41, -579.13]), lua.Table.create([1.24, -98.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(12.0, lua.Table.create([-499.99, 1.41, -578.96]), lua.Table.create([1.24, -91.46, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_21", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_22", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_1050_talk_23", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.94, 1.48, -578.06]), lua.Table.create([-8.14, -33.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_1050_talk_24", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[14], "head");
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[14], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-497.8, 1.29, -577.67]), lua.Table.create([1.2, -94.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraVector4:Dynamic = lua.Table.create([-496.28, 1.3, -577.57]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot12, cameraVector4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot12, cameraVector4);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot11, cameraVector4);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot14, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_25", "main_09_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-497.35, 1.74, -577.01]), lua.Table.create([-13.78, 21.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(this.slot9);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(this.slot9);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, 34.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-496.48, 2.02, -574.78]), lua.Table.create([-13.78, 21.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot9, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot9, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", "npc_main_rival_m");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1050_talk_26", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 18);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 18);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 18);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_SUS");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_INIT");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot15, true);
    }
}
