package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3D20CC1226F1A23F")
@:expose("C3D20CC1226F1A23F")
class Ev_m10_9500 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var POKE_IBE:Dynamic;

    public function new()
    {
        untyped (this)[9] = "dyn_ibe";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon((untyped this.POKE_IBE), lua.Table.create([-545.63, 23.34, -337.07]), 13.5, 717, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(untyped this.POKE_IBE, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PLY, -546.53, 19.31, -353.83, -156.45);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.POKE_IBE, -543.91, 33.23, -363.82, 39.01);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.CHR_PLY, 27);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.98, 20.31, -350.19]), lua.Table.create([2.78, 42.79, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-546.42, 20.31, -348.86]), lua.Table.create([2.78, -0.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int))), 1);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(untyped this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.59, 26.55, -359.09]), lua.Table.create([-44.44, 144.63, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.POKE_IBE, 40);
        untyped this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos((untyped this.CHR_PLY), lua.Table.create([-543.91, 33.23, -363.82]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.POKE_IBE, -537.55, 36.02, -353.91, 32.66);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(untyped this.POKE_IBE, -546.29, 25.58, -342.85, 2.0);
        untyped this.TimeWait(0.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-547.46, 26.38, -340.99]), lua.Table.create([30.33, -44.14, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.2, lua.Table.create([-547.46, 26.38, -340.99]), lua.Table.create([27.37, -34.2, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(untyped this.CHR_PLY, -543.0, 20.06, -323.7, -168.63);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.CHR_PLY, 91);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(untyped this.CHR_PLY, untyped this.POKE_IBE, "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-543.36, 20.42, -321.2]), lua.Table.create([8.84, -10.1, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-544.02, 20.42, -321.33]), lua.Table.create([8.84, -7.12, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(untyped this.POKE_IBE, -547.84, 20.34, -339.45, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PL_RESET_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
    }
}
