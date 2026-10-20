package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA2F507B4B8DA3D7E")
@:expose("CA2F507B4B8DA3D7E")
class Ev_sub_119_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_pokemon_moko_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-102.95), 27.83, (-293.64), 163.52);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-100.95), 27.87, (-299.51), 9.66);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-100.05), 27.85, (-298.32), (-22.92));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DHIANSII", lua.Table.create([(-114.31), 29.75, (-300.3)]), 71.65, 719, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MERESII1", lua.Table.create([(-115.13), 29.75, (-299.66)]), 71.78, 703, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MERESII2", lua.Table.create([(-114.62), 29.75, (-301.25)]), 73.41, 703, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("DHIANSII", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MERESII1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MERESII2", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 27);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-101.57), 27.83, (-297.29), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-96.34), 33.68, (-290.79)]), lua.Table.create([(-18.16), 32.73, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-96.34), 31.53, (-290.79)]), lua.Table.create([(-18.16), 32.73, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-100.04), 27.89, (-297.19)]), lua.Table.create([16.53, 13.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_030_talk_01", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_moko_2", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_119_030_talk_02", "sub_119", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 28);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-100.1), 29.02, (-297.85)]), lua.Table.create([(-0.07), 44.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-99.87), 29.02, (-298.07)]), lua.Table.create([(-0.07), 44.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_030_talk_03", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-100.05), 27.85, (-298.32), (-98.75));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-101.24), 28.01, (-297.79)]), lua.Table.create([1.15, (-65.45), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-101.01), 28.02, (-297.89)]), lua.Table.create([1.15, (-65.45), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_119_030_talk_05", "sub_119");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MERESII1", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MERESII2", true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("MERESII2", (-114.62), 27.86, (-301.25), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("MERESII1", (-115.13), 27.86, (-299.66), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_moko_2", (-104.87), 27.82, (-299.32), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-99.89), 29.48, (-298.96)]), lua.Table.create([(-12.01), 77.83, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-101.18), 27.83, (-298.11), (-111.17));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "DHIANSII", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-101.41), 27.85, (-298.89), (-86.52));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_moko_2", (-104.87), 27.82, (-299.32), 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_detective", "DHIANSII");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-113.22), 28.35, (-301.4)]), lua.Table.create([(-10.2), 127.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-113.43), 28.35, (-301.77)]), lua.Table.create([(-10.2), 127.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MERESII1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MERESII2", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-101.64), 29.09, (-300.92)]), lua.Table.create([1.15, (-164.19), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_030_talk_06", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("DHIANSII", true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("DHIANSII", (-114.31), 27.87, (-300.3), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-112.57), 29.0, (-301.07)]), lua.Table.create([(-2.05), 110.87, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-112.49), 28.0, (-300.68)]), lua.Table.create([7.74, 98.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DHIANSII", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-105.04), 27.83, (-300.14), (-93.17));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-104.73), 27.83, (-301.14), (-95.86));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-106.82), 27.82, (-300.88), (-96.33));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-104.49), 29.36, (-302.23)]), lua.Table.create([(-12.23), 112.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-102.87), 29.44, (-302.36)]), lua.Table.create([(-12.23), 112.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_030_talk_07", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_030_talk_08", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-108.82), 27.89, (-302.51)]), lua.Table.create([9.35, (-119.22), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([(-108.52), 27.95, (-302.34)]), lua.Table.create([9.35, (-119.22), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_119_030_talk_09", "sub_119", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_030_talk_10", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_030_talk_04", "sub_119");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T1000");
    }
}
