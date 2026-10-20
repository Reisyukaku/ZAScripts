package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCAE089B65DBEBE13")
@:expose("CCAE089B65DBEBE13")
class Ev_m03_0020 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var POKE_HURA:Dynamic;

    @:abiSlot(10)
    public var CHR_RIV:Dynamic;

    @:abiSlot(11)
    public var CHR_PYU:Dynamic;

    @:abiSlot(12)
    public var CHR_AZ:Dynamic;

    public function new()
    {
        this.CHR_AZ = "npc_main_hotel_manager";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_RIV = "dyn_riv";
        this.POKE_HURA = "npc_pokemon_floette";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_m", "npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "open", "trigger");
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup03", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup04", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teapot", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([(-0.15), 0.01, 1.88]), (-29.935), "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([(-0.84), 0.01, 2.55]), 148.065, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_PLY, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_RIV, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_PYU, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_RIV, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_PYU, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 1.04, 0.0, (-6.52), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_HURA, (-2.61), 1.03, (-3.8), 30.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 7.38, 0.34, 7.11, 125.79);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, 8.85, 0.28, 7.73, (-168.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_AZ, (-2.88), (-0.0), (-7.27), 76.29);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_DO_CL");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_i001", "t1_i001_elevatordoor", "close", "trigger");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_FORCE_OFF");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, 0.97, 0.0, (-2.07), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.86, 1.19, 0.1]), lua.Table.create([(-0.0), (-0.61), (-0.57)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 1.4, 0, (-0.34), (-11.77));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, 1.46, 0, 1.1, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-0.91), 1.5, 0.93]), lua.Table.create([(-8.78), (-110.58), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-0.84), 1.5, 0.73]), lua.Table.create([(-8.78), (-110.58), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_PLY, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_PYU, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_01", "main_03_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 6.59, 0.33, 2.92, 31.51);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, 7.7, 0.33, 4.36, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([6.08, 1.88, 3.09]), lua.Table.create([(-13.61), (-144.95), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_02", "main_03_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "rejoice_small", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_03", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_04", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_06", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_14", "main_03_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_RIV, this.CHR_AZ, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 7.36, 0.31, 4.72, 5.3);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_RIV, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.54, 1.38, 7.74]), lua.Table.create([(-1.63), 46.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([8.54, 1.66, 7.74]), lua.Table.create([(-1.63), 46.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 1);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_AZ);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_AZ, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_15", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.67), 2.24, (-6.18)]), lua.Table.create([(-2.08), 46.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_16", "main_03_01", this.CHR_AZ);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.64), 1.17, (-1.93)]), lua.Table.create([0.63, 20.31, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-1.82), 1.17, (-1.86)]), lua.Table.create([0.63, 20.31, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_HURA, 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0020_talk_17", "main_03_01", this.POKE_HURA);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_03_01");
        this.TimeWait(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup03", false);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teacup04", false);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_teapot", false);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
    }
}
