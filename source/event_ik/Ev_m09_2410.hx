package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C70D622B7B43AB880")
@:expose("C70D622B7B43AB880")
class Ev_m09_2410 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    @:abiSlot(11)
    public var POKE_ZIGA:Dynamic;

    @:abiSlot(12)
    public var POKE_TORI:Array<String>;

    public function new()
    {
        untyped this.POKE_TORI = (["0", "1", "2", "3", "4", "5"]);
        this.POKE_ZIGA = "dyn_ziga";
        this.CHR_GURIS = "dyn_guris";
        this.CHR_GURI = "dyn_guri";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_EVENT");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURI, lua.Table.create([-337.78, 15.41, -405.28]), 0.0, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURIS, lua.Table.create([-337.78, 15.41, -405.28]), 0.0, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_ZIGA, lua.Table.create([-337.78, 15.41, -405.28]), -166.0, 718, 1, 0);
        for (index in 0...this.POKE_TORI.length)
        {
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_TORI[index], lua.Table.create([-337.78, 15.41, -405.28]), -21.5, 127, 1, 0);
        }
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        for (index in 0...this.POKE_TORI.length)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_TORI[index], false);
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.POKE_TORI[index], false);
        }
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -337.78, 15.41, -405.28, 26.68);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -337.23, 15.41, -403.58, -149.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -336.55, 15.41, -404.01, -140.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, -342.36, 15.41, -407.3, 59.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_TORI[0], -335.94, 19.45, -410.87, -15.97);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_TORI[1], -331.26, 20.16, -411.05, -34.11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_TORI[2], -332.41, 23.53, -412.78, -21.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_TORI[3], -339.79, 19.54, -415.54, 12.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_TORI[4], -337.86, 25.81, -423.76, -1.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_TORI[5], -326.97, 22.32, -412.05, -41.11);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-341.68, 19.0, -397.3]), lua.Table.create([-10.2, -33.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-341.68, 17.9, -397.3]), lua.Table.create([-10.2, -33.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-337.98, 16.79, -404.22]), lua.Table.create([-3.63, -11.78, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 330);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 340);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 328);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 177);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "rejoice_big_mc", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_big_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_09", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "surprise2", this.CHR_PLY);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-338.54, 16.89, -404.69]), lua.Table.create([-5.85, -119.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_10", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURIS, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_11", "main_09_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PostEventGlobal("PLAY_SS_COMMON_RECOVERY");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        cppbindings.C56DE81E7.fFB3A9D11();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 176);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 176);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "rejoice_big_mc", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PLY, "normal", this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-339.67, 16.74, -405.62]), lua.Table.create([-2.84, -112.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURIS, "head");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_small_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 172, null, 1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_12", "main_09_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "normal", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-338.03, 17.03, -403.91]), lua.Table.create([-5.14, -110.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 172, null, 1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_13", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-337.61, 16.91, -401.78]), lua.Table.create([-8.24, -8.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_02", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m09_2410_select_01", "msg_Ev_m09_2410_select_02"], 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-338.11, 17.09, -404.1]), lua.Table.create([-8.72, -108.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_GURI, lua.Table.create([-337.49, 16.61, -404.18]));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_GURI, "head");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "sad2", "npc_main_nu_boss_f");
        this.TimeWait(0.8);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_03", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_04", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_small_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_22", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "rejoice_big_mc", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2410_talk_05", "main_09_01", this.CHR_GURI, null, null, function():Void
        {
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "rejoice_small_mc", "npc_main_nu_boss_f");
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        });
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-339.67, 16.72, -405.58]), lua.Table.create([-4.62, -112.26, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_06", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowContextMenuWithTag([main.event.ik.command.IkScriptCommand.CreateRivalText("msg_Ev_m09_2410_select_03", null, 1), main.event.ik.command.IkScriptCommand.CreatePlaneText("msg_Ev_m09_2410_select_04")], 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-338.03, 17.03, -403.91]), lua.Table.create([-5.14, -110.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_07", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromDevNo2D(718, 1, 8);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m09_2410_talk_14", "main_09_01", null, null, null, function():Void
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.POKE_ZIGA, "head");
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.POKE_ZIGA, "head");
        });
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -337.23, 15.41, -403.58, -125.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -336.55, 15.41, -404.01, -121.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.POKE_ZIGA);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-341.05, 15.84, -406.01]), lua.Table.create([5.43, -105.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-342.75, 15.67, -406.49]), lua.Table.create([5.43, -105.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_ZIGA, -340.82, 15.41, -406.51, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-336.31, 17.26, -402.19]), lua.Table.create([-16.98, 33.2, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T500");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_15", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 200);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-338.03, 17.03, -403.91]), lua.Table.create([-5.14, -110.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        for (index in 0...this.POKE_TORI.length)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_TORI[index], true);
            main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.POKE_TORI[index]);
        }
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_2410_talk_16", "main_09_01", this.CHR_GURI, null, null, function():Void
        {
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "sad2", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_GURI, "head");
        });
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_TORI[0], true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "surprise_mc", "npc_main_nu_boss_f");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "serious", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.POKE_TORI[0], "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_GURIS, this.POKE_TORI[0]);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-335.75, 18.05, -405.66]), lua.Table.create([-36.68, 154.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-335.75, 18.05, -405.66]), lua.Table.create([-36.68, 154.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_TORI[0], "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.POKE_TORI[0]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.POKE_TORI[0], "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_ZIGA, this.POKE_TORI[0], "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.POKE_ZIGA, this.POKE_TORI[0]);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-338.3, 16.31, -400.95]), lua.Table.create([20.3, -20.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-338.62, 15.97, -400.09]), lua.Table.create([20.3, -20.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_17", "main_09_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_GURI, this.POKE_TORI[0]);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_18", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "normal", "npc_main_nu_boss_f");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-337.41, 16.71, -406.81]), lua.Table.create([-2.62, -176.16, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_GURIS, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURIS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 30);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T500");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_19", "main_09_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_GURI, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 30);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2410_talk_20", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 20.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -337.46, 15.41, -404.68, 55.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -337.05, 15.4, -403.7, -153.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -336.55, 15.4, -404.01, -109.22);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-338.08, 19.14, -405.82]), lua.Table.create([-53.27, -145.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-338.56, 20.27, -406.5]), lua.Table.create([-53.27, -145.34, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, -340.82, 15.41, -406.51, 70.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.POKE_ZIGA);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURIS);
        this.TimeWait(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_GURI);
        this.TimeWait(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-340.65, 15.59, -397.64]), lua.Table.create([12.99, -31.52, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "serious", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURI, "serious", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_GURIS, "serious", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURI, -340.42, 15.46, -397.2, 2.0);
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURIS, -339.96, 15.45, -396.37, 2.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, -8.85);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FL_WHOOSH03");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_2410_talk_08", "main_09_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        for (index in 0...this.POKE_TORI.length)
        {
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_TORI[index], -339.96, 15.45, -396.37, 2.0);
            this.TimeWait(0.2);
        }
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-336.62, 17.24, -402.42]), lua.Table.create([-16.95, 33.31, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var zigaAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.POKE_ZIGA, 17);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m09_2410_talk_21", "main_09_01", null, null, null, function():Void
        {
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.POKE_ZIGA);
        });
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(zigaAnimation);
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.POKE_ZIGA);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.POKE_ZIGA, -126.5);
        this.TimeWait(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_BATTLE");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
    }
}
