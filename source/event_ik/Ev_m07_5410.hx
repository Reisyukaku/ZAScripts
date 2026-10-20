package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF61BE6119B656805")
@:expose("CF61BE6119B656805")
class Ev_m07_5410 extends BaseMainScenario
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
    public var slot20:Dynamic;

    @:abiSlot(21)
    public var slot21:Dynamic;

    @:abiSlot(22)
    public var NPCID_ZIGA_CORE:Dynamic;

    @:abiSlot(23)
    public var slot23:Dynamic;

    @:abiSlot(24)
    public var slot24:Dynamic;

    @:abiSlot(25)
    public var slot25:Dynamic;

    @:abiSlot(26)
    public var slot26:Dynamic;

    public function new()
    {
        this.slot26 = "npc_main_f";
        this.slot25 = "npc_pokemon_zygarde";
        this.slot24 = "dyn_core";
        untyped this.slot23 = (["cell_0", "cell_1", "cell_2", "cell_3", "cell_4", "cell_5", "cell_6", "cell_7"]);
        this.NPCID_ZIGA_CORE = "npc_zigarude_cell";
        this.slot21 = "npc_zigarude_core";
        this.slot20 = "dyn_ziga_50";
        this.slot19 = "dyn_ziga_10";
        this.slot18 = "dyn_f";
        this.slot17 = "dyn_jipu";
        this.slot16 = "dyn_kara";
        this.slot15 = "dyn_muku";
        this.slot14 = "dyn_siro";
        this.slot13 = "npc_main_ga_leader";
        this.slot12 = "dyn_kana";
        this.slot11 = "dyn_hal";
        this.slot10 = "dyn_yuka";
        this.slot9 = "dyn_riv";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_pa_boss", "npc_main_pa_leader", "npc_main_ga_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader", "npc_main_f", this.slot21, this.NPCID_ZIGA_CORE]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m07_5410_talk_02", "main_07_01");
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(((["msg_Ev_m07_5410_select_01", "msg_Ev_m07_5410_select_02"]) : Dynamic), ((0 : Dynamic)), ((true : Dynamic)), ((false : Dynamic)));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == menuSelection)
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_5S_LOW");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
            main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot25, false);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([15.75, 0.03, -4.91]), 180.0, "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([15.75, 0.03, -4.91]), 180.0, "npc_main_pa_leader");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot18, lua.Table.create([15.75, 0.03, -4.91]), 180.0, "npc_main_f");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, lua.Table.create([15.75, 0.03, -4.91]), 180.0, "npc_main_ga_boss");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot16, lua.Table.create([15.75, 0.03, -4.91]), 180.0, "npc_main_co_boss");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot17, lua.Table.create([15.75, 0.03, -4.91]), 22.0, "npc_main_co_leader");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot15, lua.Table.create([15.75, 0.03, -4.91]), 22.0, "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot19, lua.Table.create([15.75, 0.03, -4.91]), -134.94, 718, 1, 0);
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot20, lua.Table.create([15.75, 0.03, -4.91]), -134.94, 718, 0, ((0 : Dynamic)));
            var sceneVector:Dynamic = lua.abi.Host.emptyTable();
            untyped sceneVector[1] = 15.72;
            untyped sceneVector[2] = 0.03;
            untyped sceneVector[3] = ((untyped -12.07 : Dynamic));
            var slot21:Dynamic = this.slot21;
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot24, sceneVector, ((untyped -134.94 : Dynamic)), slot21);
            var length:Dynamic = untyped this.slot23.length;
            var loopIndex:Dynamic = ((0 : Dynamic));
            while (loopIndex < length)
            {
                loopIndex = untyped loopIndex + 1;
                var create_Npc_Dynamic:Dynamic = untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic;
                var sceneField:Dynamic = untyped this.slot23[(loopIndex - 1)];
                var sceneVector2:Dynamic = lua.abi.Host.emptyTable();
                untyped sceneVector2[1] = 15.72;
                untyped sceneVector2[2] = 0.03;
                untyped sceneVector2[3] = ((untyped -12.07 : Dynamic));
                var nPCID_ZIGA_CORE:Dynamic = this.NPCID_ZIGA_CORE;
                create_Npc_Dynamic(sceneField, sceneVector2, ((untyped -134.94 : Dynamic)), nPCID_ZIGA_CORE);
            };
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot20, ((false : Dynamic)));
            var length2:Dynamic = untyped this.slot23.length;
            var loopIndex2:Dynamic = ((4 : Dynamic));
            while (loopIndex2 < length2)
            {
                loopIndex2 = untyped loopIndex2 + 1;
                var fObj_Set_Visibility:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
                var sceneField2:Dynamic = untyped this.slot23[(loopIndex2 - 1)];
                fObj_Set_Visibility(sceneField2, ((false : Dynamic)));
            };
            var length3:Dynamic = untyped this.slot23.length;
            var loopIndex3:Dynamic = ((0 : Dynamic));
            while (loopIndex3 < length3)
            {
                loopIndex3 = untyped loopIndex3 + 1;
                var fObj_Set_CollisionAndGravity:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity;
                var sceneField3:Dynamic = untyped this.slot23[(loopIndex3 - 1)];
                fObj_Set_CollisionAndGravity(sceneField3, ((false : Dynamic)));
            };
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot24, false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 15.72, 0.03, -13.39, -9.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 22.03, 0.03, -10.96, -95.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 22.85, 0.02, -10.31, -101.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot18, 20.78, 0.03, -12.05, -90.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot17, 2.06, 0.02, -2.03, 122.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot19, 15.67, 0.03, -10.6, -166.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot20, 15.67, 0.03, -10.6, -166.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, 1.25, 0.02, -21.4, 86.53);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot16, 2.4, 0.02, -4.62, 109.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot15, 2.15, 0.03, -22.87, 22.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot16, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot24, 1.25, 0.03, -22.59, 50.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[0], 0.75, 0.03, -22.71, 50.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[1], 0.11, 0.03, -23.49, 50.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[2], 0.98, 0.03, -23.23, 50.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[3], 0.25, 0.03, -22.89, 50.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot19, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot19, this.slot8, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot18);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[4], 10.22, 0.03, -7.89, 90.89);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[5], 10.63, 0.03, -7.56, 107.39);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[6], 7.83, 0.03, -5.71, 107.39);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[7], 9.37, 0.03, -7.14, 107.39);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.4, 1.55, -12.08]), lua.Table.create([1.87, -90.13, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([10.4, 0.55, -12.08]), lua.Table.create([1.87, -90.13, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot19, 17);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5410_talk_01", "main_07_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.02, 1.06, -23.7]), lua.Table.create([-0.47, -129.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_718_KIRAKIRA_MOVEFOOT_NORMAL");
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot24, 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[0], 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[1], 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[2], 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[3], 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot15, lua.Table.create([0.96, 0.03, -22.79]));
            this.TimeWait(1.0);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-0.02, 0.48, -23.7]), lua.Table.create([-0.47, -129.32, 0.0]), 40.0, 0, cameraEase, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M07_5410");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot15, -36.94);
            this.TimeWait(0.5);
            var sceneVector3:Dynamic = lua.abi.Host.emptyTable();
            untyped sceneVector3[1] = ((0.96 : Dynamic));
            untyped sceneVector3[2] = ((0.03 : Dynamic));
            untyped sceneVector3[3] = ((untyped -22.79 : Dynamic));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot12, sceneVector3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var length4:Dynamic = untyped this.slot23.length;
            var loopIndex4:Dynamic = ((4 : Dynamic));
            while (loopIndex4 < length4)
            {
                loopIndex4 = untyped loopIndex4 + 1;
                var fObj_Set_Visibility2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
                var sceneField4:Dynamic = untyped this.slot23[(loopIndex4 - 1)];
                fObj_Set_Visibility2(sceneField4, ((true : Dynamic)));
            };
            var length5:Dynamic = untyped this.slot23.length;
            var loopIndex5:Dynamic = ((4 : Dynamic));
            while (loopIndex5 < length5)
            {
                loopIndex5 = untyped loopIndex5 + 1;
                var fObj_Move_To_PosXYZ:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ;
                var sceneField5:Dynamic = untyped this.slot23[(loopIndex5 - 1)];
                fObj_Move_To_PosXYZ(sceneField5, ((15.67 : Dynamic)), ((0.03 : Dynamic)), ((untyped -10.6 : Dynamic)), ((2.0 : Dynamic)));
            };
            this.TimeWait(0.1);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([11.71, 0.19, -8.32]), lua.Table.create([4.53, 117.39, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot16, this.slot23[6], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot17, this.slot23[4], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot24, 21.66, 0.03, -11.63, -78.61);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[0], 20.72, 0.03, -12.99, -53.61);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[1], 24.84, 0.03, -8.98, -102.11);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[2], 21.81, 0.03, -9.76, -103.11);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot23[3], 22.21, 0.03, -15.65, 10.44);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot23[0], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot23[2], "head");
            this.TimeWait(2.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot24, 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[0], 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[1], 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[2], 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot23[3], 15.67, 0.03, -10.6, 2.0);
            this.TimeWait(0.1);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([17.61, 0.81, -9.08]), lua.Table.create([1.65, -64.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([17.38, 0.81, -9.56]), lua.Table.create([1.65, -64.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([19.57, 1.61, -11.39]), lua.Table.create([0.41, -64.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5410_talk_04", "main_07_01", this.slot18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5410_talk_05", "main_07_01", this.slot18);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_4", 12.88, 0.03, -9.21, 116.48);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_5", 13.17, 0.03, -9.09, 121.11);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_6", 10.35, 0.03, -7.28, 121.96);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_7", 11.97, 0.03, -8.57, 118.78);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("cell_6", 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("cell_7", 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.17, 0.39, -10.51]), lua.Table.create([-11.51, 168.48, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_KIRASERU_WALK_1");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("cell_4", 195);
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_KIRASERU_WALK_2");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("cell_5", 195);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_core", 17.76, 0.03, -10.96, -80.24);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_0", 18.04, 0.03, -11.72, -64.68);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_1", 21.92, 0.03, -9.5, -100.02);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_2", 18.87, 0.1, -9.83, -97.79);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_3", 18.87, 0.1, -9.83, -97.79);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_core", 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("cell_1", 15.67, 0.03, -10.6, 2.0);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("cell_3", 15.67, 0.03, -10.6, 2.0);
            this.TimeWait(2.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.68, 0.45, -12.22]), lua.Table.create([-12.92, -128.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_KIRASERU_WALK_3");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("cell_0", 195);
            this.TimeWait(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_KIRASERU_WALK_4");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("cell_2", 195);
            this.TimeWait(2.0);
            main.event.ik.command.IkScriptCommand.CreateEffect("field/event/z_formchange/z_formchange_body01", (("ziga_eff" : Dynamic)));
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("ziga_eff" : Dynamic)));
            }));
            main.event.ik.command.IkScriptCommand.SetEffectWorldPosition((("ziga_eff" : Dynamic)), 15.67, 0.03, -10.6);
            main.event.ik.command.IkScriptCommand.SetEffectWorldRotation((("ziga_eff" : Dynamic)), 0, -166.2, 0);
            main.event.ik.command.IkScriptCommand.CreateEffect("field/event/z_formchange/z_formchange_body02", (("ziga_eff2" : Dynamic)));
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("ziga_eff2" : Dynamic)));
            }));
            main.event.ik.command.IkScriptCommand.SetEffectWorldPosition((("ziga_eff2" : Dynamic)), 15.67, 0.03, -10.6);
            main.event.ik.command.IkScriptCommand.SetEffectWorldRotation((("ziga_eff2" : Dynamic)), 0, -166.2, 0);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FORMCHANGE_0718_LONG");
            main.event.ik.command.IkScriptCommand.PlayEffect((("ziga_eff" : Dynamic)));
            main.event.ik.command.IkScriptCommand.PlayEffect((("ziga_eff2" : Dynamic)));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_core", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("cell_0", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("cell_2", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("cell_4", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("cell_5", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_3", 17.95, 0.03, -9.42, -103.53);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_1", 19.04, 0.03, -10.01, -99.98);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("cell_7", 14.53, 0.03, -9.98, 118.75);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.81, 1.3, -13.63]), lua.Table.create([-16.06, -163.2, 0.0]), 43.37, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([13.61, 1.53, -13.88]), (lua.Table.create([-2.07, -145.52, -0.0]) : Dynamic), ((40.0 : Dynamic)), 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("cell_3", 195);
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("cell_1", 195);
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("cell_7", 195);
            this.TimeWait(((3.0 : Dynamic)));
            var length6:Dynamic = untyped this.slot23.length;
            var loopIndex6:Dynamic = ((0 : Dynamic));
            while (loopIndex6 < length6)
            {
                loopIndex6 = untyped loopIndex6 + 1;
                var fObj_Set_Visibility3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
                var sceneField6:Dynamic = untyped this.slot23[(loopIndex6 - 1)];
                fObj_Set_Visibility3(sceneField6, ((false : Dynamic)));
            };
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot24, false);
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot20, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot19, false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot20, true);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot20, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot20, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot18, this.slot20, "head");
            this.TimeWait(2.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot18, this.slot20, "head");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T0");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5410_talk_06", "main_07_01", this.slot18);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", (("line01" : Dynamic)));
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot20, 17);
            this.TimeWait(0.3);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("line01" : Dynamic)));
            }));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence((("line01" : Dynamic)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.2, 1.03, -13.97]), lua.Table.create([9.3, -140.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 203);
            this.TimeWait(0.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, lua.Table.create([13.8, 0.78, -14.81]), lua.Table.create([9.3, -140.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))), null, ((null : Dynamic)), ((null : Dynamic)));
            this.TimeWait(0.4);
            main.event.ik.command.IkScriptCommand.Camera_Shake(1.5, 0.3, 14, 0);
            main.event.ik.command.IkScriptCommand.Camera_Shake(1.5, 0.3, 14, 1);
            main.event.ik.command.IkScriptCommand.Camera_Shake(1.5, 0.3, 14, 2);
            var sceneCallback:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FadeEffect((("line01" : Dynamic)));
                return null;
            };
            main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, (("msg_Ev_m07_5410_talk_07" : Dynamic)), (("main_07_01" : Dynamic)), ((null : Dynamic)), ((true : Dynamic)), ((true : Dynamic)), sceneCallback);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_BOSS_02_M07_READY");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            fadeOutType(((7 : Dynamic)));
        }
        else
        {
            if (1 == menuSelection)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot26, 175);
                var slot18:Dynamic = this.slot18;
                main.event.ik.command.IkScriptCommand.ShowMessage(((0 : Dynamic)), (("msg_Ev_m07_5410_talk_03" : Dynamic)), (("main_07_01" : Dynamic)), slot18);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                wait_FObj_Action();
            }
            else
            {
            };
        };
        untyped this.m_resultParam = menuSelection;
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot25, true);
    }
}
