package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7DA57373D2DA322E")
@:expose("C7DA57373D2DA322E")
class Ev_m01_0230 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.08, 2.76, -4.45]), lua.Table.create([-23.96, 33.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_floette", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_hotel_manager", false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURAETTE", lua.Table.create([-4.44, 1.23, -7.41]), 16.0, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("HURAETTE", "npc_main_hotel_manager", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_hotel_manager", 70));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_hotel_manager", -5.04, -0.01, -7.04, 88.49));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-1.58, 2.76, -4.12]), lua.Table.create([-23.96, 33.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(6, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 3.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-3.79, 1.54, -6.66]), lua.Table.create([-8.15, 57.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0230_talk_01", "main_01_01", "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 3.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T500");
    }
}
