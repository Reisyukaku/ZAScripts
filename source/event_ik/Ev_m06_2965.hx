package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDDB49524B21D6438")
@:expose("CDDB49524B21D6438")
class Ev_m06_2965 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_PA_M:Dynamic;

    @:abiSlot(10)
    public var CHR_PA_F:Dynamic;

    @:abiSlot(11)
    public var CHR_KID_A:Dynamic;

    @:abiSlot(12)
    public var CHR_KID_B:Dynamic;

    @:abiSlot(13)
    public var CHR_KID_C:Dynamic;

    @:abiSlot(14)
    public var CHR_KARA:Dynamic;

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
    public var FLD_NPC_PA_M:Dynamic;

    @:abiSlot(21)
    public var FLD_NPC_PA_F:Dynamic;

    public function new()
    {
        this.FLD_NPC_PA_F = "npc_main06_0004";
        this.FLD_NPC_PA_M = "npc_main06_0003";
        this.slot19 = "npc_pa_member_f_01";
        this.slot18 = "npc_pa_member_m_03";
        this.slot17 = "npc_child02_a_f_00";
        this.slot16 = "npc_child01_a_m_03";
        this.slot15 = "npc_child_a_m_01";
        this.CHR_KARA = "dyn_kara";
        this.CHR_KID_C = "dyn_kid_c";
        this.CHR_KID_B = "dyn_kid_b";
        this.CHR_KID_A = "dyn_kid_a";
        this.CHR_PA_F = "dyn_pa_f";
        this.CHR_PA_M = "dyn_pa_m";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = [slot15, slot16, slot17, slot18, slot19, "npc_main_co_boss"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_M, lua.Table.create([(-467.29), 0.23, (-398.34)]), (-5.87), this.slot18);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PA_F, lua.Table.create([(-467.29), 0.23, (-398.34)]), (-5.87), this.slot19);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KARA, lua.Table.create([(-467.29), 0.23, (-398.34)]), (-5.87), "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KID_A, lua.Table.create([(-467.6), 0.22, (-399.38)]), (-160.0), this.slot15);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KID_B, lua.Table.create([(-466.78), 0.22, (-399.89)]), (-160.0), this.slot16);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_KID_C, lua.Table.create([(-468.83), 0.22, (-399.65)]), (-108.25), this.slot17);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_M, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.FLD_NPC_PA_F, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-466.67), 0.23, (-395.55), (-158.01));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_M, (-467.64), 0.23, (-397.02), 49.92);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PA_F, (-466.7), 0.23, (-397.68), (-10.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, (-461.24), 0.23, (-400.3), (-53.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KID_A, (-470.73), 0.22, (-395.09), 125.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KID_B, (-471.15), 0.22, (-394.37), 119.25);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KID_C, (-472.36), 0.22, (-394.81), 112.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_A, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_B, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_C, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PA_M, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PA_F, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-463.52), 1.86, (-394.71)]), lua.Table.create([(-9.87), 64.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_F, 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_01", "main_06_01", this.CHR_PA_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_02", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PA_F, this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_03", "main_06_01", this.CHR_PA_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PA_M, this.CHR_PA_F);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_04", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, (-461.24), 0.23, (-400.3), (-53.01));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KARA, (-465.58), 0.23, (-397.42), 0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_05_SUS");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-468.75), 1.79, (-394.45)]), lua.Table.create([(-6.99), (-54.7), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-468.75), 1.55, (-394.45)]), lua.Table.create([(-7.12), (-46.64), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PA_M, 91.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PA_F, 76.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_05", "main_06_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-466.48), 1.65, (-396.57)]), lua.Table.create([(-7.12), (-46.64), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_PA_F, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_06", "main_06_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_PA_M, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_07", "main_06_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-464.55), 1.48, (-396.3)]), lua.Table.create([(-1.06), 55.75, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_F, 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_08", "main_06_01", this.CHR_PA_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_09", "main_06_01", this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_M, 1);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PA_F, 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PA_M, (-474.37), 0.23, (-396.05), 2.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PA_F, (-474.37), 0.23, (-396.05), 2.0);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-474.3), 1.71, (-394.37)]), lua.Table.create([(-7.06), (-63.17), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([(-473.78), 1.71, (-393.33)]), lua.Table.create([(-7.06), (-63.17), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_PA_M);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_KID_A, (-174.5));
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_KID_B, 174.75);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_KID_C, (-170.0));
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_PA_M, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_PA_F, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_KID_A, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_KID_A, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_KARA, 32, null, 4.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_15", "main_06_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_A, this.CHR_KARA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_KID_A, this.CHR_KARA);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_B, this.CHR_KARA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_KID_B, this.CHR_KARA);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KID_C, this.CHR_KARA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_KID_C, this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_16", "main_06_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_KID_A);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KID_C, (-476.04), 0.22, (-393.66), 2.0);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_KID_B);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KID_B, (-474.68), 0.22, (-394.61), 2.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_KID_C);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KID_A, (-474.59), 0.22, (-394.69), 2.0);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-466.51), 1.68, (-396.84)]), lua.Table.create([(-7.0), (-47.41), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-466.44), 1.68, (-396.77)]), lua.Table.create([(-7.0), (-47.41), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_KID_A, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_KID_B, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_KID_C, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_10", "main_06_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_KARA, this.CHR_PLY, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-468.01), 1.73, (-395.2)]), lua.Table.create([(-9.18), (-59.69), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_KARA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_11", "main_06_01", this.CHR_KARA);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_KARA, "rejoice_big_mc", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_KARA, 32, null, 4.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2965_talk_12", "main_06_01", this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M06_2965_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-469.54), 1.45, (-397.13)]), lua.Table.create([(-1.83), (-104.09), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_0_5S_SUS");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m06_2965_talk_13", "main_06_01", null, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(scenario[8], lua.Table.create([(-452.56), 1.5, (-392.32)]));
            scenario.F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(scenario[14], lua.Table.create([(-452.56), 1.5, (-392.32)]));
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos(scenario[14], lua.Table.create([(-452.56), 1.5, (-392.32)]));
            scenario.F32FAD7D4DF3ACA95(0.5);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-468.01), 1.73, (-395.2)]), lua.Table.create([(-9.18), (-59.69), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_2965_talk_14", "main_06_01", this.CHR_KARA, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[14], scenario[8], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_KARA);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_KARA, (-457.86), 0.23, (-401.8), 2.0);
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
