package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CFF248911A09E3F2C")
@:expose("CFF248911A09E3F2C")
class Ev_m07_5530 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M12DB_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_hotel_manager", lua.Table.create([-655.88, 24.71, -864.34]), 20.33, "npc_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURAETTE", lua.Table.create([-655.01, 27.07, -864.03]), 16.86, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_hotel_manager", lua.Table.create([-652.02, 30.2, -853.38]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-658.46, 26.42, -866.88]), lua.Table.create([4.61, -144.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-657.77, 26.52, -865.92]), lua.Table.create([4.61, -144.28, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5530_talk_01", "main_07_01", "dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5530_talk_02", "main_07_01", "dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromDevNo3D(670, 1, 9, lua.Table.create([-655.01, 27.07, -864.03]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5530_talk_03", "main_07_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-656.45, 27.07, -863.33]), lua.Table.create([-2.28, -56.17, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5530_talk_04", "main_07_01", "dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("HURAETTE", "dyn_main_hotel_manager", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.26);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("HURAETTE", -80.64);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5530_talk_05", "main_07_01", "dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-659.94, 26.22, -867.31]), lua.Table.create([4.76, -143.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-660.53, 26.14, -868.12]), lua.Table.create([4.76, -143.93, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_hotel_manager", 195));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5530_talk_06", "main_07_01", "dyn_main_hotel_manager");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 3.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Wait_Time(4.5);
    }
}
