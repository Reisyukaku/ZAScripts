package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDB11424B21A532E")
@:expose("CDDB11424B21A532E")
class Ev_m06_2970 extends BaseMainScenario
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

    @:abiSlot(16)
    public var slot16:Dynamic;

    @:abiSlot(17)
    public var slot17:Dynamic;

    @:abiSlot(18)
    public var slot18:Dynamic;

    @:abiSlot(19)
    public var slot19:Dynamic;

    @:abiSlot(20)
    public var NPCID_MOB1:Dynamic;

    public function new()
    {
        this.NPCID_MOB1 = "npc_main06_0011";
        this.slot19 = "npc_main06_0006";
        this.slot18 = "npc_main06_0010";
        this.slot17 = "npc_main06_0009";
        this.slot16 = "npc_main06_0008";
        this.slot15 = "npc_main06_0007";
        this.slot14 = "npc_main06_0005";
        this.slot13 = "dyn_mob_11";
        this.slot12 = "dyn_mob_06";
        this.slot11 = "dyn_jet";
        this.slot10 = "dyn_kara";
        this.slot9 = "dyn_riv";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_co_boss", "npc_main_president", this.slot19, this.NPCID_MOB1]);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-421.41), 0.01, (-378.78), (-145.16));
        return untyped main.event.ik.base.BaseMainScenario.prototype.F3250254222F75035(this);
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, "npc_main_president");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, this.slot19);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot13, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, this.NPCID_MOB1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-418.2), 0.01, (-373.06), 54.53);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-416.0), 0.01, (-372.55), 27.73);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-413.36), 0.01, (-366.94), 133.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-414.23), 0.01, (-367.17), 132.86);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, (-411.89), 0.0, (-368.35), (-48.64));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, (-411.61), 0.0, (-366.76), (-110.14));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.95), 1.66, (-371.01)]), lua.Table.create([(-10.39), (-124.01), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_05_LOW");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "sad2", "npc_main_president");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 32);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_15", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_16", "main_06_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_17", "main_06_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 22);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, (-416.59), 0.01, (-371.54), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, (-414.92), 0.01, (-371.29), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-418.63), 2.01, (-372.51)]), lua.Table.create([(-11.68), (-122.77), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraPosition:Dynamic = lua.Table.create([(-414.92), 2.0, (-370.7)]);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos(this.slot9, cameraPosition);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot11, cameraPosition);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot12, cameraPosition);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot13, cameraPosition);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot14, cameraPosition);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot15, cameraPosition);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot16, cameraPosition);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot17, cameraPosition);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot18, cameraPosition);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "surprise_mc", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_01", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.36), 1.25, (-370.09)]), lua.Table.create([3.02, (-23.9), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_02", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_03", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 32);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-413.78), 1.54, (-368.71)]), lua.Table.create([(-6.81), (-120.27), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_04", "main_06_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 32);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-418.63), 2.01, (-372.51)]), lua.Table.create([(-11.68), (-122.77), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "sad2", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_05", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, (-414.01), 0.01, (-369.95), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-415.75), 0.02, (-371.57), 54.53);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.16), 1.61, (-370.09)]), lua.Table.create([(-1.31), (-112.36), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-415.16), 1.61, (-370.09)]), lua.Table.create([(-1.31), (-97.51), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot12, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "anger_mc", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_06", "main_06_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-414.22), 1.24, (-368.47)]), lua.Table.create([(-3.1), 2.05, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot10, 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_13", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2970_talk_18", "main_06_01", this.slot10, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "normal", "npc_main_co_boss");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.53), 1.24, (-368.6)]), lua.Table.create([(-4.4), (-127.49), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_11", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot11, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_14", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-408.89), 0.01, (-362.38), 2.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot11, (-411.88), 0.01, (-364.2), 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-414.5), 1.61, (-370.71)]), lua.Table.create([(-13.63), 40.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        this.TimeWait(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_big", "npc_main_co_boss");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_07", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-414.58), 1.61, (-370.65)]), lua.Table.create([(-13.63), 40.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_08", "main_06_01", this.slot10);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m06_2970_select_01", "msg_Ev_m06_2970_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2970_talk_10", "main_06_01", this.slot10, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario[10], 175);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_19", "main_06_01", this.slot10);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "serious", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2970_talk_12", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
