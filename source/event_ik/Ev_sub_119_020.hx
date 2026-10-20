package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA2F88DB4B8DD5707")
@:expose("CA2F88DB4B8DD5707")
class Ev_sub_119_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_detective", "npc_pokemon_moko_2", "npc_A03_z02_04_0010"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-292.85), 1.51, (-252.56)]), lua.Table.create([(-7.78), (-108.47), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-294.75), 1.51, (-251.07)]), lua.Table.create([(-7.78), (-108.47), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_A03_z02_04_0010", "rejoice_small");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_A03_z02_04_0010", 174);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-295.71), 0.04, (-253.77), 72.44);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-294.36), 0.04, (-254.35), 12.44);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-293.52), 0.02, (-252.73), 29.73);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-298.6), 1.4, (-253.56)]), lua.Table.create([(-6.79), (-101.14), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_01", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_moko_2", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_pokemon_moko_2");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_A03_z02_04_0010", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-294.31), 0.58, (-253.79)]), lua.Table.create([(-14.95), (-142.17), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-294.07), 0.5, (-253.48)]), lua.Table.create([(-14.95), (-142.17), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 17);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 28);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-295.97), 1.48, (-252.62)]), lua.Table.create([(-5.57), (-29.93), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([(-295.0), 1.48, (-253.45)]), lua.Table.create([(-5.57), (-29.93), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_119_020_talk_02", "sub_119");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_119_020_talk_03", "sub_119");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_119_020_select_01", "msg_Ev_sub_119_020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 98);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        var turnHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_detective", "Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_04", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-294.42), 0.27, (-253.02)]), lua.Table.create([(-3.74), (-108.15), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_05", "sub_119");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-293.41), 0.02, (-252.58), (-144.1));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-293.68), 0.42, (-250.12)]), lua.Table.create([3.68, 8.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_06", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_07", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_detective", (-292.32), 0.03, (-252.44), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-302.01), 0.15, (-250.37), 42.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-301.07), 0.15, (-249.16), (-137.66));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-301.78), 0.13, (-248.84), (-161.61));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-307.38), 4.2, (-249.7)]), lua.Table.create([(-10.99), (-90.08), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-307.38), 1.9, (-249.7)]), lua.Table.create([(-10.99), (-90.08), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_08", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_detective", "npc_pokemon_moko_2"));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_09", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-301.11), 1.47, (-250.21)]), lua.Table.create([(-35.21), 168.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_moko_2", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_moko_2", 11);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_10", "sub_119");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_pokemon_moko_2");
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_119_020_talk_11", "sub_119", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_moko_2", 26.33);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_moko_2", (-287.72), 0.13, (-229.6), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-303.86), 1.45, (-250.6)]), lua.Table.create([(-4.07), (-108.96), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_119_020_talk_12", "sub_119", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_detective", (-292.76), 0.14, (-236.87), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
