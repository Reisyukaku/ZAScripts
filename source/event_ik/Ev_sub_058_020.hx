package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CFC83D763785F03AF")
@:expose("CFC83D763785F03AF")
class Ev_sub_058_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub058_001", "npc_pokemon_sub058_001", "npc_pokemon_sub058_002", "npc_pokemon_sub058_003", "npc_pokemon_sub058_004"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_058_HoroUnlock", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_3", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_4", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-166.1), 0.11, (-826.36), (-46.9));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub058_001", (-167.11), 0.1, (-827.47), (-20.57));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_1", (-167.91), 0.1, (-824.86), 133.88);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_2", (-168.04), 0.1, (-823.57), 120.68);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_3", (-168.69), 0.1, (-825.65), 134.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_4", (-170.04), 0.09, (-825.49), 134.51);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub58_002", lua.Table.create([(-170.83), 0.11, (-829.12)]), 51.26, "npc_sub058_002");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_sub58_002", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-167.84), 3.64, (-827.87)]), lua.Table.create([(-16.27), 159.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-167.84), 1.55, (-827.87)]), lua.Table.create([(-16.27), 159.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_01", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub058_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub058_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub058_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-164.76), 1.48, (-826.48)]), lua.Table.create([(-3.49), 82.71, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub058_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_02", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_2", (-167.25), 0.1, (-821.98), (-144.69));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_4", (-171.94), 0.09, (-826.93), 53.19);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_1", (-166.49), 0.1, (-824.68), (-94.24));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_3", (-168.62), 0.1, (-827.27), (-3.03));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_1", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_2", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_3", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub058_4", true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub058_2", (-168.16), 0.22, (-823.45), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub058_4", (-170.22), 0.09, (-825.39), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub058_1", (-167.65), 0.1, (-824.72), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub058_3", (-168.71), 0.1, (-825.68), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-166.45), 1.64, (-827.73)]), lua.Table.create([(-19.0), 141.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub058_001", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-166.98), 1.19, (-827.05)]), lua.Table.create([(-19.0), 141.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_1", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_3", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_2", 16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_4", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub058_001", true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub058_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub058_001", "npc_pokemon_sub058_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_058_020_talk_03", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_sub58_002", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-165.49), 2.06, (-828.07)]), lua.Table.create([(-19.71), 134.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_04", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var moveHandle1:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub58_002", (-169.18), 0.11, (-827.64), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-168.5), 1.68, (-826.27)]), lua.Table.create([(-1.56), 24.08, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub58_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub058_001", "dyn_npc_sub58_002", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_05", "sub_058", "dyn_npc_sub58_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub58_002", "npc_sub058_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-165.88), 0.86, (-821.82)]), lua.Table.create([(-1.85), 20.46, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(7.0, lua.Table.create([(-166.43), 0.86, (-821.62)]), lua.Table.create([(-1.85), 20.46, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub058_001", "dyn_npc_sub58_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_npc_sub58_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_06", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub58_002", "npc_pokemon_sub058_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_1", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_3", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_07", "sub_058", "dyn_npc_sub58_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_2", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_08", "sub_058", "dyn_npc_sub58_002");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub58_002", "npc_sub058_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_1", 16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub58_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_10", "sub_058", "dyn_npc_sub58_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_sub58_002");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub58_002", (-153.17), 0.11, (-812.0), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub058_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub058_001", "npc_pokemon_sub058_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-165.31), 1.94, (-828.25)]), lua.Table.create([(-14.62), 135.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub058_001", "npc_pokemon_sub058_2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_11", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub058_1", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub058_2", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub058_3", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub058_4", "npc_sub058_001"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_1", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_3", 16);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_2", 16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_4", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_058_020_talk_12", "sub_058", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub058_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub058_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub058_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_13", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub058_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub058_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_020_talk_14", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0058");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub058_001", (-164.13), 0.11, (-823.42), (-151.23));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub058_001", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
