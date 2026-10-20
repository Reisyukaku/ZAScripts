package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C09679B3BD48D9D44")
@:expose("C09679B3BD48D9D44")
class Ev_m07_0021 extends BaseMainScenario
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

    public function new()
    {
        untyped (this)[14] = "npc_pokemon_floette";
        untyped (this)[13] = "dyn_hura";
        untyped (this)[12] = "dyn_az";
        untyped (this)[11] = "dyn_deu";
        untyped (this)[10] = "dyn_pyu";
        untyped (this)[9] = "dyn_riv";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_m", "npc_main_friend_f", "npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m07_0021 = this;
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([7.85, 0.34, 6.9]), 161.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([3.56, 0.05, 0.92]), 66.57, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([2.45, -0.0, 0.54]), 47.04, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, lua.Table.create([2.45, -0.0, 0.54]), 47.04, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot13, lua.Table.create([0.0, -0.0, 0.54]), -152.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot8, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot9, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot10, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot11, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot12, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot13, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot8, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot10, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 70);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 9.44, 0.33, 5.1, -48.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, 7.66, 0.32, 6.92, 125.79);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 8.85, 0.33, 7.84, -168.01);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 10.27, 0.33, 6.65, -89.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, 6.06, 0.34, 3.14, 40.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, 10.14, 1.72, 7.79, -126.16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.63, 1.75, 5.1]), lua.Table.create([-7.36, -116.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([5.63, 1.39, 5.1]), lua.Table.create([-7.36, -116.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M07_0021");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 70);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.5, true);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0030_talk_30", "main_07_01", this.slot11, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.slot11, 32);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot11);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0030_talk_31", "main_07_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario.slot9, 32, null, 2.0);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0030_talk_32", "main_07_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0030_talk_33", "main_07_01", this.slot10, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario.slot10, 32, null, 2.0);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0030_talk_34", "main_07_01", this.slot11, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario.slot11, 32, null, 3.0);
            scenario.TimeWait(2.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.slot11, scenario.slot8, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.88, 1.14, 5.82]), lua.Table.create([21.58, 169.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot9, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0030_talk_35", "main_07_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.slot9, 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.slot9, 24);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.09, 1.03, 5.96]), lua.Table.create([14.28, -136.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0030_talk_36", "main_07_01", this.slot11, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario.slot11);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.slot11, "anger", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.slot11, 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.slot11, "anger_mc", "npc_main_friend_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot13, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_01", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0021_talk_02", "main_07_01", this.slot12, null, null, (function():Dynamic
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.slot11, "normal", "npc_main_friend_f");
            scenario.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.slot8, scenario.slot12, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.slot9, scenario.slot12, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.slot10, scenario.slot12, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.slot11, scenario.slot12, "head");
            scenario.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(scenario.slot12, 7.7, 0.34, 4.55, 0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([12.05, 2.13, 7.92]), lua.Table.create([-9.89, 65.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot12, lua.Table.create([9.44, 1.31, 7.37]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_03", "main_07_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.74, 2.18, 5.91]), lua.Table.create([9.53, 36.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.slot12, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_04", "main_07_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.08, 1.69, 4.87]), lua.Table.create([-6.12, -151.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_05", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_06", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot10, "head");
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 9.65, 0.34, 6.66, -126.46);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot11, lua.Table.create([8.81, 1.4, 6.66]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.78, 1.93, 5.39]), lua.Table.create([-10.95, 162.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0021_talk_07", "main_07_01", this.slot11, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.slot11, scenario.slot12, "head");
            scenario.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.slot10, scenario.slot12, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.86, 2.15, 5.85]), lua.Table.create([10.52, 41.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_08", "main_07_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.78, 1.93, 5.39]), lua.Table.create([-10.95, 162.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_09", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_10", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.3, 1.15, 6.26]), lua.Table.create([19.1, 47.86, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot12, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_11", "main_07_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_12", "main_07_01", this.slot12);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_0021_talk_13", "main_07_01", this.slot12, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario.slot12);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario.slot12, 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.slot12, "rejoice_small_mc", "npc_main_hotel_manager");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.11, 1.75, 4.91]), lua.Table.create([-6.41, -152.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot10, 19);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_small_mc", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_14", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "rejoice_big_mc", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot11, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_15", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_16", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot11, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_17", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_18", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot10, 172);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_19", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.69, 1.69, 4.55]), lua.Table.create([-8.06, -163.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([8.88, 1.6, 4.14]), lua.Table.create([-8.06, -163.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_20", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_21", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_22", "main_07_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.5, 1.95, 5.41]), lua.Table.create([-14.81, 131.52, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_23", "main_07_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot11, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.67, 1.78, 6.62]), lua.Table.create([-8.12, 110.21, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_small_mc", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0021_talk_24", "main_07_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_07_00");
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot14, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot8, true);
    }
}
