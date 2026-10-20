package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDAA8824B214F99C")
@:expose("CDDAA8824B214F99C")
class Ev_m06_2950 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_KID_A:Dynamic;

    @:abiSlot(10)
    public var CHR_KID_B:Dynamic;

    @:abiSlot(11)
    public var CHR_KID_C:Dynamic;

    @:abiSlot(12)
    public var CHR_PA_M:Dynamic;

    @:abiSlot(13)
    public var CHR_PA_F:Dynamic;

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
    public var FLD_NPC_PA_M:Dynamic;

    @:abiSlot(20)
    public var FLD_NPC_PA_F:Dynamic;

    public function new()
    {
        this.FLD_NPC_PA_F = "npc_main06_0004";
        this.FLD_NPC_PA_M = "npc_main06_0003";
        this.slot18 = "npc_pa_member_f_01";
        this.slot17 = "npc_pa_member_m_03";
        this.slot16 = "npc_child02_a_f_00";
        this.slot15 = "npc_child01_a_m_03";
        this.slot14 = "npc_child_a_m_01";
        this.CHR_PA_F = "dyn_pa_f";
        this.CHR_PA_M = "dyn_pa_m";
        this.CHR_KID_C = "dyn_kid_c";
        this.CHR_KID_B = "dyn_kid_b";
        this.CHR_KID_A = "dyn_kid_a";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = [slot14, slot15, slot16, slot17, slot18];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m06_2950 = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KID_A, lua.Table.create([(-467.6), 0.22, (-399.38)]), (-160.0), this.slot14);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KID_B, lua.Table.create([(-466.78), 0.22, (-399.89)]), (-160.0), this.slot15);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KID_C, lua.Table.create([(-468.83), 0.22, (-399.65)]), (-108.25), this.slot16);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_M, lua.Table.create([(-467.29), 0.23, (-398.34)]), (-5.87), this.slot17);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_F, lua.Table.create([(-467.29), 0.23, (-398.34)]), (-5.87), this.slot18);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_KID_B, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KID_A, "sad2", this.slot14);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KID_B, "sad2", this.slot15);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KID_C, "sad2", this.slot16);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_A, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_B, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_C, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PA_M, this.CHR_KID_A, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PA_F, this.CHR_KID_A, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_M, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_F, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_F, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-464.19), 0.23, (-398.96), (-107.95));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KID_A, (-467.6), 0.22, (-399.38), (-160.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KID_B, (-466.78), 0.22, (-399.89), (-108.25));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KID_C, (-468.83), 0.22, (-399.65), 140.25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_M, (-468.41), 0.23, (-400.41), 35.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_F, (-468.07), 0.23, (-401.37), 21.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 33);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-463.69), 1.68, (-399.61)]), lua.Table.create([(-6.38), 85.95, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_01", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_08", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_09", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PA_M, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PA_F, this.CHR_PLY, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-462.46), 1.49, (-399.46)]), lua.Table.create([(-2.33), 83.84, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_KID_A, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_A, this.CHR_PLY, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_KID_B, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_B, this.CHR_PLY, "head");
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_KID_C, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_C, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_10", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KID_A, (-465.62), 0.22, (-399.17), 2.0);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KID_B, (-464.99), 0.22, (-399.7), 2.0);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KID_C, (-466.4), 0.22, (-399.47), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-463.93), 1.34, (-399.44)]), lua.Table.create([(-8.18), 87.8, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_KID_A, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_02", "main_06_01", this.CHR_KID_A);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_KID_B, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_11", "main_06_01", this.CHR_KID_B);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KID_C, "anger_mc", this.slot16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_KID_C, 172, null, 2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_12", "main_06_01", this.CHR_KID_C);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-462.46), 1.49, (-399.46)]), lua.Table.create([(-2.33), 91.16, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2950_talk_03", "main_06_01", this.CHR_PA_M, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.CHR_PA_M, 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario.CHR_PA_M, scenario.CHR_PLY);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2950_talk_04", "main_06_01", this.CHR_PA_F, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.CHR_PA_F, 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario.CHR_PA_F, scenario.CHR_PLY);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_PA_F);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_F, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2950_talk_05", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_M, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_F, true);
    }
}
