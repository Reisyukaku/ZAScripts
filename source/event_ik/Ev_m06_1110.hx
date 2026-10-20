package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB19C921E50A4E73B")
@:expose("CB19C921E50A4E73B")
class Ev_m06_1110 extends BaseMainScenario
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

    public function new()
    {
        this.slot12 = "dyn_sita_2";
        this.slot11 = "dyn_sita_1";
        this.slot10 = "npc_main_friend_f";
        this.slot9 = "dym_jipu";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_co_leader", "npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m06_1110 = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_co_member_m_00", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_co_member_f_00", false);
        main.event.ik.command.IkScriptCommand.S156410CEE281BFF8(this.slot11, lua.Table.create([(-326.7), 0.0, (-645.64)]), (-157.35), 56);
        main.event.ik.command.IkScriptCommand.S156410CEE281BFF8(this.slot12, lua.Table.create([(-325.69), 0.0, (-645.99)]), (-163.34), 62);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-326.99), 0, (-648.8)]), (-174.52), "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot11, 201);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.slot12, 201);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot12, this.slot8, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "surprise2", this.slot11);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "surprise2", this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-326.74), 0.01, (-650.68), 4.161);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-326.99), 0, (-648.8), (-174.52));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-325.62), 0, (-650.59), (-31.76));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-327.99), 0.0, (-645.91), 172.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot12, (-324.82), 0.0, (-646.77), (-151.24));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-328.04), 1.64, (-652.27)]), lua.Table.create([0.0, (-151.05), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-328.04), 1.24, (-652.27)]), lua.Table.create([0.0, (-151.05), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m06_1110_talk_01", "main_06_01", this.slot9, false, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario.slot9);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario.slot9, 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.slot9, "normal", "npc_main_co_leader");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-327.67), 1.32, (-651.6)]), lua.Table.create([0.0, (-151.05), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-326.96), 0.0, (-649.86), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-327.17), 1.53, (-650.78)]), lua.Table.create([0.0, (-165.52), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 74);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        this.TimeWait(1.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "sad2", "npc_main_co_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1110_talk_07", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, 118.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1110_talk_02", "main_06_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot12);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "normal", this.slot11);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot12, "normal", this.slot12);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-325.76), 0.0, (-645.65), 0.5);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-326.44), 0.01, (-650.46), 23.07);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-325.65), 0.0, (-649.73), 6.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-325.87), 1.45, (-648.38)]), lua.Table.create([(-4.83), 2.4, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1110_talk_03", "main_06_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        this.TimeWait(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_f_00");
        main.event.ik.command.IkScriptCommand.S0EA2B6C4A18DBEE5("npc_co_member_m_00");
        main.event.ik.command.IkScriptCommand.Suspend();
    }
}
