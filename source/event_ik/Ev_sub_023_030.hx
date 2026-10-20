package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE8B4D97E0803C388")
@:expose("CE8B4D97E0803C388")
class Ev_sub_023_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub023_001", "npc_pokemon_sub023_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub023_1", false);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub023_001", -286.0, 0.15, -523.4, -72.07);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -287.32, 0.15, -523.12, 105.23);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub023_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-287.89, 1.53, -521.85]), lua.Table.create([-3.23, -37.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_01", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub023_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_02", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub023_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub023_001", 134.59, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-287.09, 1.69, -522.45]), lua.Table.create([-6.9, -36.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-286.65, 1.69, -522.13]), lua.Table.create([-6.9, -36.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_03", "sub_023", "npc_sub023_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub023_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub023_001", "Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-287.89, 1.53, -521.85]), lua.Table.create([-3.23, -37.9, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(29, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_04", "sub_023", "npc_sub023_001");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_023_010_select_03", "msg_Ev_sub_023_010_select_06"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection))) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub023_001", -286.01, 0.15, -523.41, 27.81);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("BIIDORU", lua.Table.create([-285.43, 0.07, -522.42]), -145.36, 13, 0, 0, "event_script", 0, true, false, 255, true, false);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "BIIDORU", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "BIIDORU", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("BIIDORU", "npc_sub023_001", "head");
            cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_023_Give_OYABUN", true);
            main.event.ik.command.IkScriptCommand.S70BC6EF711CA96D2();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-286.4, 1.04, -523.1]), lua.Table.create([-26.22, -124.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-287.1, 1.46, -523.58]), lua.Table.create([-26.22, -124.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_05", "sub_023", "npc_sub023_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BIIDORU", 17);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var cameraEase:Dynamic = (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-288.56, 1.74, -520.48]), lua.Table.create([-13.04, -38.44, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_06", "sub_023", "npc_sub023_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub023_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub023_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("BIIDORU", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub023_001", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_07", "sub_023", "npc_sub023_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var playQuestAchievementUI:Dynamic = main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI;
            playQuestAchievementUI("sub_0023");
        } else {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub023_001", 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_023_010_talk_08", "sub_023", "npc_sub023_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var playQuestAchievementUI2:Dynamic = main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI;
            playQuestAchievementUI2("sub_0023");
        };
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
