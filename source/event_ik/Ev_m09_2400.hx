package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C70D9A8B7B43DD209")
@:expose("C70D9A8B7B43DD209")
class Ev_m09_2400 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_GURI:Dynamic;

    @:abiSlot(10)
    public var CHR_GURIS:Dynamic;

    @:abiSlot(11)
    public var ENE_POKE_1:Dynamic;

    @:abiSlot(12)
    public var ENE_POKE_2:Dynamic;

    @:abiSlot(13)
    public var ENE_POKE_3:Dynamic;

    public function new()
    {
        untyped (this)[13] = "ene_poke_3";
        untyped (this)[12] = "ene_poke_2";
        untyped (this)[11] = "ene_poke_1";
        untyped (this)[10] = "dyn_guris";
        untyped (this)[9] = "dyn_guri";
        untyped (this)[8] = "Player";
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
        var scenario:Ev_m09_2400 = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_EVENT");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURI, lua.Table.create([-340.01, 15.4, -389.55]), -158.5, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURIS, lua.Table.create([-338.65, 15.4, -390.41]), -117.0, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.ENE_POKE_1, lua.Table.create([-346.75, 19.77, -397.1]), 14.68, 376, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.ENE_POKE_2, lua.Table.create([-346.75, 19.77, -397.1]), -2.82, 142, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.ENE_POKE_3, lua.Table.create([-346.75, 19.77, -397.1]), -59.32, 65, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURI, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURIS, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.ENE_POKE_1, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.ENE_POKE_2, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.ENE_POKE_3, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.ENE_POKE_1, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.ENE_POKE_2, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.ENE_POKE_3, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -348.46, 17.72, -387.25, 150.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -349.91, 17.71, -387.35, 120.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -349.2, 17.72, -386.49, 134.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.ENE_POKE_1, -346.52, 19.77, -397.04, -1.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.ENE_POKE_2, -342.22, 19.77, -399.42, -20.32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.ENE_POKE_3, -349.03, 19.77, -399.09, 5.68);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -347.75, 17.72, -388.17, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-352.59, 19.52, -389.22]), lua.Table.create([-7.67, -66.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-352.02, 19.52, -387.89]), lua.Table.create([-7.67, -66.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(2.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-348.01, 19.12, -389.53]), lua.Table.create([-8.08, -161.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lua.Table.create([-346.52, 22.77, -397.04]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.ENE_POKE_1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.ENE_POKE_2, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.ENE_POKE_3, true);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.ENE_POKE_1);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.ENE_POKE_2);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag(this.ENE_POKE_3);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-347.5, 21.26, -390.14]), lua.Table.create([-5.67, -7.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.ENE_POKE_1, 40);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_2400_talk_01", "main_09_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m09_2400_talk_02", "main_09_01", null, true, true, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.ENE_POKE_2, 40);
            scenario.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.ENE_POKE_3, 40);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-349.25, 18.73, -386.74]), lua.Table.create([5.03, -26.37, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-348.93, 18.73, -386.57]), lua.Table.create([5.03, -26.37, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURI, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURIS, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2400_talk_05", "main_09_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 40.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_GURIS, "head");
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-347.64, 19.14, -389.95]), lua.Table.create([-5.01, 160.42, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2400_talk_06", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2400_talk_03", "main_09_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-349.69, 19.31, -388.38]), lua.Table.create([-6.16, 178.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2400_talk_04", "main_09_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-350.01, 19.55, -383.41]), lua.Table.create([-0.31, -15.01, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-350.32, 19.56, -382.26]), lua.Table.create([-0.31, -15.01, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.ENE_POKE_1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.ENE_POKE_1, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_GURI, this.ENE_POKE_1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.ENE_POKE_1, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_GURIS, this.ENE_POKE_1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.ENE_POKE_1, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.S522136910C73A819(this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 491);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURI, 491);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 491);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_BATTLE");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
