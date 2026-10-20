package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B681F73C843312B")
@:expose("C6B681F73C843312B")
class Ev_m01_0040 extends BaseMainScenario
{
    public function new()
    {
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.EnableDirectionalMain(0.75, -0.8);
        main.event.ik.command.IkScriptCommand.EnableShadowTransform(0.75, -0.8);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("YANTYAMU", lua.Table.create([-779.11, 0.0, -883.02]), -151.32, 674, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-785.44, 0.14, -891.1]), 11.2, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_TIKO", lua.Table.create([-787.05, 0.14, -887.63]), 150.41, 152, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_WANI", lua.Table.create([-786.16, 0.15, -888.64]), 155.42, 158, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_POKA", lua.Table.create([-786.04, 0.15, -887.89]), 155.56, 498, 0, 0);
        main.event.ik.command.IkScriptCommand.AddTagCommon("YANTYAMU", "Ob0003_00_bag_yanchamu");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_ol_f_01", lua.Table.create([-811.03, 0.16, -870.75]), 38.73, "npc_ol_f_01");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_tourist_f_01", lua.Table.create([-809.81, 0.16, -868.83]), -138.27, "npc_tourist_f_01");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EV_PERORIIMU", lua.Table.create([-808.91, 0.16, -869.02]), -138.2, 685, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_middle01_a_f_03", lua.Table.create([-800.41, 0.16, -860.55]), 134.7, "npc_middle01_a_f_03");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_tall_f_03", lua.Table.create([-799.13, 0.15, -861.88]), -47.84, "npc_tall_f_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EV_BANIPUTTI", lua.Table.create([-800.83, 0.92, -861.15]), -53.52, 582, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_tourist_f_01", 32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -784.45, 0.16, -891.26, 12.02);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-783.67, 7.29, -863.29]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_rival_m", lua.Table.create([-783.67, 7.29, -863.29]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_POKA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_TIKO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_WANI", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-785.06, 1.24, -891.92]), lua.Table.create([12.59, -173.84, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-785.13, 1.09, -892.59]), lua.Table.create([12.59, -173.84, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("YANTYAMU", false);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0040_talk_01", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_POKA", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_TIKO", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_WANI", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -784.45, 0.16, -891.26, 41.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -785.44, 0.14, -891.1, 50.98);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-784.05, 1.49, -892.88]), lua.Table.create([-6.54, 153.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        var rivalTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 114.98);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-785.66, 1.59, -891.01]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -64.91);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0040_talk_02", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0040_talk_03", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-785.68, 1.36, -891.52]), lua.Table.create([-34.49, -111.37, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-785.6, 1.36, -891.73]), lua.Table.create([-34.49, -111.37, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_adult_a_f_01", lua.Table.create([-760.0, 0.0, -854.0]), -170.0, "npc_adult_a_f_01");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_adult_a_m_03", lua.Table.create([-769.86, 0.0, -862.11]), 168.44, "npc_adult_a_m_03");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("YANTYAMU", true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0040_talk_04", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -785.44, 0.14, -891.1, 87.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -784.45, 0.16, -891.26, -89.74);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_TIKO", -786.52, 0.14, -888.42, -152.73);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_WANI", -785.77, 0.15, -888.77, 155.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_POKA", -786.01, 0.15, -887.86, -172.94);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-787.1, 1.84, -893.2]), lua.Table.create([-15.48, -144.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.5, lua.Table.create([-786.65, 1.84, -893.52]), lua.Table.create([-15.48, -144.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -165.38);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -119.24));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_rival_m");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T5000");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 27));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-787.61, 1.84, -892.84]));
        var chikoritaAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_TIKO", 26);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var totodileAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_WANI", 26);
        var tepigAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_POKA", 26);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        var rivalReset = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-779.68, 1.84, -893.68]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalReset);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(chikoritaAnimation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(totodileAnimation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(tepigAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_POKA", 62.06);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_WANI", 50.42);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_TIKO", 75.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 36.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 41.39);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-780.16, 0.75, -884.5]), lua.Table.create([-14.24, -145.31, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_POKA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_TIKO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_WANI", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("YANTYAMU", -767.62, 0.0, -866.42, 2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T3000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-785.74, 1.95, -892.29]), lua.Table.create([-14.24, -145.31, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_POKA", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_TIKO", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_WANI", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -784.45, 0.16, -891.26, 41.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -785.44, 0.14, -891.1, 50.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_TIKO", -787.05, 0.14, -887.63, 80.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_WANI", -786.16, 0.15, -888.64, 71.92);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_POKA", -786.04, 0.15, -887.89, 76.56);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-784.05, 1.49, -892.88]), lua.Table.create([-6.54, 153.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var rivalReturnTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 114.98);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_WANI", 155.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_TIKO", 150.41);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_POKA", 155.57);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -64.91);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalReturnTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0040_talk_05", "main_01_01", "dyn_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m01_0040_select_01", "msg_Ev_m01_0040_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_WANI", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_TIKO", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_POKA", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0040_talk_06", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var rivalExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0040_talk_07", "main_01_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_01_01");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalExplanation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("YANTYAMU", -761.95, 0.0, -859.31, -145.75);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-786.42, 1.6, -893.17]), lua.Table.create([-4.72, -144.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.5, lua.Table.create([-786.42, 2.15, -893.17]), lua.Table.create([-4.72, -144.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -771.92, 0.0, -872.19, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_POKA", -772.92, -0.0, -873.84, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_WANI", -773.5, -0.0, -874.0, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.23);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_TIKO", -772.76, -0.01, -874.28, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.097);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -771.34, 0.01, -873.17, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T2000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T2000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T1000");
    }
}
