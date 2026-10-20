package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDB11924B21A5BAD")
@:expose("CDDB11924B21A5BAD")
class Ev_m06_2975 extends BaseMainScenario
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

    @:abiSlot(21)
    public var NPCID_MOB2:Dynamic;

    public function new()
    {
        this.NPCID_MOB2 = "npc_middle01_a_f_03";
        this.NPCID_MOB1 = "npc_middle_a_f_01";
        this.slot19 = "npc_hunk01_m_01";
        this.slot18 = "npc_main06_0010";
        this.slot17 = "npc_main06_0009";
        this.slot16 = "npc_main06_0008";
        this.slot15 = "npc_main06_0007";
        this.slot14 = "npc_main06_0005";
        this.slot13 = "npc_main06_0011";
        this.slot12 = "npc_main06_0006";
        this.slot11 = "dyn_jet";
        this.slot10 = "dyn_kara";
        this.slot9 = "dyn_riv";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_co_boss", "npc_main_president", this.slot19, this.NPCID_MOB1, this.NPCID_MOB2]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([(-420.42), 0.01, (-377.06)]), 180.0, "npc_main_president");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-415.32), 0.02, (-369.03), 32.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-414.34), 0.01, (-369.63), 23.52);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-415.53), 0.01, (-370.91), 16.86);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-416.72), 0.01, (-371.45), 29.36);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, (-413.84), 0.01, (-367.89), (-144.54));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, (-413.08), 0.01, (-366.37), (-138.64));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot14, (-411.85), 0.01, (-367.87), (-124.14));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot12, "head");
        var cameraPosition:Dynamic = lua.Table.create([(-415.32), 1.6, (-369.03)]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot15, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot16, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot17, cameraPosition);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot18, cameraPosition);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-417.16), 1.35, (-369.13)]), lua.Table.create([(-5.91), (-98.12), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 22);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_01", "main_06_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "anger_mc", this.slot12);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_02", "main_06_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, (-409.37), 0.01, (-362.14), 0.5);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot13, (-410.01), 0.01, (-362.46), 0.5);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot14, (-407.95), 0.01, (-362.39), 0.5);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot16, 45.0);
        this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot18, 45.0);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot15);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot15, (-410.24), 0.01, (-367.94), 0.5);
        this.TimeWait(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot17);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot17, (-410.24), 0.01, (-367.94), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.49), 1.46, (-367.62)]), lua.Table.create([(-7.53), (-23.66), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-415.6), 1.46, (-367.67)]), lua.Table.create([(-7.53), (-23.66), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 14);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_03", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.04), 1.45, (-369.14)]), lua.Table.create([(-5.91), (-54.91), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_big", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_04", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T1000");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot13, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot15, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot16, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot17, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot18, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot12, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot13, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot14, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot9, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-414.83), 0.02, (-370.51), (-62.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-414.28), 0.01, (-369.71), (-60.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-415.96), 0.01, (-368.49), 127.36);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-416.76), 0.01, (-369.18), 124.36);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-411.08), 4.15, (-376.83)]), lua.Table.create([(-20.17), 149.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([(-412.08), 3.43, (-375.15)]), lua.Table.create([(-20.17), 149.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T0");
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-414.61), 1.38, (-372.63)]), lua.Table.create([(-7.25), 167.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_05", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_06", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.06), 1.45, (-369.76)]), lua.Table.create([(-5.11), (-96.05), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 20);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_07", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot11, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot11, "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_05_SUS");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "serious", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-417.67), 1.38, (-369.46)]), lua.Table.create([(-6.84), (-94.42), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_08", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_09", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.52), 1.41, (-370.05)]), lua.Table.create([(-7.21), 178.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_10", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 33);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_11", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-413.09), 2.11, (-372.76)]), lua.Table.create([(-14.99), 134.2, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(12.0, lua.Table.create([(-411.9), 2.11, (-370.83)]), lua.Table.create([(-14.99), 109.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_12", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_13", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot11);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-415.21), 1.42, (-370.1)]), lua.Table.create([(-4.97), (-113.29), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot10, lua.Table.create([(-414.97), 0.01, (-369.31)]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_small", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_14", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_small", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-416.11), 1.42, (-370.76)]), lua.Table.create([(-4.97), (-113.29), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_15", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T2000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot10, (-410.77), 0.01, (-364.75), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot10, "head");
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-416.37), 1.41, (-370.05)]), lua.Table.create([(-7.21), 178.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-416.52), 1.41, (-370.05)]), lua.Table.create([(-7.21), 178.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot10, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot8, "head");
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T1000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_16", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2975_talk_17", "main_06_01", this.slot11, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[11]);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[11]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[11], 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[11], "normal", "npc_main_president");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot11);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-414.77), 1.42, (-372.05)]), lua.Table.create([(-7.61), 162.84, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_18", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2975_talk_19", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot11, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot9, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 174);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-413.1), 0.0, (-364.41), 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot11, (-414.35), 0.01, (-365.71), 0.5);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
