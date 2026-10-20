package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE6639715924C85A1")
@:expose("CE6639715924C85A1")
class Ev_m04_2010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_TARA:Dynamic;

    @:abiSlot(10)
    public var CHR_DEU:Dynamic;

    @:abiSlot(11)
    public var CHR_MOB1:Dynamic;

    @:abiSlot(12)
    public var CHR_MOB2:Dynamic;

    public function new()
    {
        this.CHR_MOB2 = "npc_main04_0002";
        this.CHR_MOB1 = "npc_main04_0001";
        this.CHR_DEU = "dyn_deu";
        this.CHR_TARA = "npc_main_ga_leader";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_ga_leader", "npc_main_friend_f", "npc_main04_0001", "npc_main04_0002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([(-646.53), 6.0, (-380.7)]), (-34.23), "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-651.58), 6.01, (-373.04), 66.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, (-649.92), 6.12, (-371.86), (-126.71));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB1, (-648.41), 6.12, (-372.32), (-102.62));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB2, (-648.65), 6.12, (-370.33), (-135.35));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "serious", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_TARA, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_TARA, this.CHR_PLY, "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-650.09), 7.65, (-372.38)]), lua.Table.create([0.03, (-92.98), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_MOB1, "sad", this.CHR_MOB1);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MOB1, this.CHR_TARA, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_05", "main_04_01", this.CHR_MOB1);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-653.27), 7.37, (-372.62)]), lua.Table.create([(-8.96), (-94.05), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_TARA, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_01", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "rejoice_small", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_02", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_TARA, "normal", "npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_03", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_TARA, this.CHR_MOB1, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_04", "main_04_01", this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_TARA);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_TARA, (-650.62), 6.12, (-369.23), 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MOB2, (-649.69), 6.12, (-368.4), 0.5);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_MOB1, (-649.83), 6.12, (-369.65), 0.5);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_PLY, "head");
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_DEU, (-650.26), 6.0, (-374.67), 2.0);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-651.42), 7.44, (-371.82)]), lua.Table.create([(-5.23), (-8.81), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 147.47);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_DEU, "head");
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_06", "main_04_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_DEU, lua.Table.create([(-643.18), 16.27, (-380.26)]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_DEU, 132.28);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lua.Table.create([(-643.18), 16.27, (-380.26)]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, 105.17);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-652.5), 7.36, (-372.42)]), lua.Table.create([5.99, (-55.88), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-652.5), 7.41, (-372.42)]), lua.Table.create([28.17, (-55.88), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_07", "main_04_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_08", "main_04_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_DEU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, (-650.26), 6.0, (-374.67), (-31.71));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-651.58), 6.01, (-373.04), 147.47);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-651.42), 7.44, (-371.82)]), lua.Table.create([(-5.23), (-8.81), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_2010_talk_10", "main_04_01", this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
