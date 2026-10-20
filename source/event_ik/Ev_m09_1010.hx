package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C33EAA6C01E733E4F")
@:expose("C33EAA6C01E733E4F")
class Ev_m09_1010 extends BaseMainScenario
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
        untyped (this)[13] = "dyn_mas";
        untyped (this)[12] = "dyn_deu";
        untyped (this)[11] = "dyn_pyu";
        untyped (this)[10] = "dyn_az";
        untyped (this)[9] = "dyn_riv";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_f", "npc_main_friend_m", "npc_main_secretary"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        var firstMessage:Dynamic = "";
        var secondMessage:Dynamic = "";
        var eventMode:Dynamic = untyped this.m_eventScriptParam.f73EE8FEC();
        if ("0" == eventMode)
        {
            firstMessage = "msg_Ev_m09_1010_talk_01";
            secondMessage = "msg_Ev_m09_1010_talk_02";
        }
        else if ("1" == eventMode)
        {
            firstMessage = "msg_Ev_m09_1005_talk_01";
            secondMessage = "msg_Ev_m09_1005_talk_02";
        };
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot15, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([-500.0, 0.0, -590.0]), 0.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot12, lua.Table.create([-500.0, 0.0, -590.0]), 0.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([-500.0, 0.0, -590.0]), 0.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot13, lua.Table.create([-500.0, 0.0, -590.0]), 0.0, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot14, lua.Table.create([-500.0, 0.0, -590.0]), 0.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot14, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "rejoice_small_mc", "npc_main_friend_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "unique3", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot13, "rejoice_big_mc", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -494.86, 0.01, -579.23, -83.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -500.35, 0.0, -579.35, 98.73);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -499.6, 0.01, -573.75, 162.91);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -495.96, 0.01, -573.13, -165.09);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot13, -497.85, 0.0, -575.04, 178.18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot14, -497.22, 1.14, -574.5, -169.88);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-496.97, 3.0, -581.65]), lua.Table.create([-14.38, 159.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-496.97, 1.76, -581.65]), lua.Table.create([-14.38, 159.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("VS_TRAINER_FINISH");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, -497.43, 0.01, -579.23, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, -498.48, 0.0, -579.35, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot13, -497.94, 0.0, -577.57, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot12, -496.72, 0.01, -576.7, -165.09);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot11, -499.25, 0.01, -576.91, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot14, -497.57, 1.14, -576.03, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, firstMessage, "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, -499.49, 0.01, -577.54, 137.24);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-497.6, 1.3, -579.54]), lua.Table.create([0.0, 111.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -497.43, 0.01, -579.28, -75.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, -496.15, 0.01, -577.69, -131.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot14, -495.63, 1.14, -576.57, -133.7);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 30);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, secondMessage, "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.46, 1.35, -579.49]), lua.Table.create([-1.07, -107.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 30);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot14, -495.86, 1.18, -576.49, -148.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.07, 1.25, -581.09]), lua.Table.create([-1.06, -177.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.slot9, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_1010_talk_03", "main_09_01", this.slot13, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[13], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[9], scenario[13]);
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[13], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[13]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot13, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1010_talk_04", "main_09_01", this.slot13);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_SUS_3S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T5000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot15, true);
    }
}
