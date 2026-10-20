package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C09679E3BD48DA25D")
@:expose("C09679E3BD48DA25D")
class Ev_m07_0022 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_PYU:Dynamic;

    @:abiSlot(11)
    public var CHR_DEU:Dynamic;

    @:abiSlot(12)
    public var POKE_HITODE:Dynamic;

    public function new()
    {
        untyped (this)[12] = "dyn_hitode";
        untyped (this)[11] = "npc_main_friend_f";
        untyped (this)[10] = "npc_main_friend_m";
        untyped (this)[9] = "npc_main_rival_m";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_friend_m", "npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon((untyped this.POKE_HITODE), lua.Table.create([-539.7, 0.27, -802.06]), 118.59, 120, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PLY, -539.83, 0.28, -807.57, 18.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_RIV, -536.72, 0.27, -800.94, -160.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PYU, -537.01, 0.27, -804.18, -14.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_DEU, -539.21, 0.27, -801.67, 118.59);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(untyped this.CHR_PLY, -538.82, 0.28, -804.57, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-540.02, 3.9, -809.05]), lua.Table.create([-18.96, -161.51, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-540.02, 2.93, -809.05]), lua.Table.create([-18.96, -161.51, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.CHR_RIV, untyped this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(untyped this.CHR_RIV, untyped this.CHR_PLY);
        untyped this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.CHR_PYU, untyped this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(untyped this.CHR_PYU, untyped this.CHR_PLY);
        untyped this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.CHR_DEU, untyped this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(untyped this.CHR_DEU, untyped this.CHR_PLY);
        untyped this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.POKE_HITODE, untyped this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(untyped this.POKE_HITODE, untyped this.CHR_PLY);
        untyped this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0022_talk_05", "main_07_01", untyped this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.39, 1.88, -802.67]), lua.Table.create([-12.61, -164.93, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.CHR_DEU, "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0022_talk_01", "main_07_01", untyped this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.CHR_DEU, untyped this.POKE_HITODE, "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.79, 0.59, -803.5]), lua.Table.create([13.4, -169.61, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-539.91, 0.32, -804.15]), lua.Table.create([13.39, -169.61, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0022_talk_02", "main_07_01", untyped this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.POKE_HITODE, 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.91, 0.32, -804.15]), lua.Table.create([13.39, -169.61, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-539.91, 0.32, -804.15]), lua.Table.create([18.28, -169.61, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.CHR_DEU, untyped this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0022_talk_06", "main_07_01", untyped this.CHR_DEU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
