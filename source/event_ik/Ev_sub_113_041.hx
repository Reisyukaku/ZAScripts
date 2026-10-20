package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CCF0B68EBB54E47C4")
@:expose("CCF0B68EBB54E47C4")
class Ev_sub_113_041 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub113_001", "npc_pokemon_sub113_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_113_041_boxfull");
        var checkPossibleAddPpokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon();
        if (((false == flagValue)))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SUB_0113_STOP");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -572.64, 11.1, -24.33, -0.11);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub113_1", -572.93, 11.1, -22.42, -178.35);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 20);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ATHLETIC_GOAL");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_100_talk_04", "sub_113", "npc_sub113_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub113_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub113_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-574.1, 12.12, -24.8]), lua.Table.create([-16.04, -152.92, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-573.99, 12.71, -26.05]), lua.Table.create([-16.04, -152.92, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SUB_0113_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub113_1", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_041_talk_06", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "rejoice_big_mc");
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KEROMATU", lua.Table.create([-578.17, 0.13, -27.7]), -104.82, 656, 0, 0);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KEROMATU", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-579.55, 3.09, -28.48]), lua.Table.create([-6.91, -123.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub113_001", -576.19, 0.15, -26.13, -134.29);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -577.65, 0.15, -27.81, 56.64);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KEROMATU", -576.05, 1.13, -24.74, -149.14);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub113_001", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-579.55, 1.49, -28.48]), lua.Table.create([-6.91, -123.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub113_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_041_talk_01", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "normal");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KEROMATU", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "KEROMATU", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("KEROMATU", "Player", "head");
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-578.12, 1.66, -26.75]), lua.Table.create([-2.27, -121.18, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KEROMATU", 17);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_041_talk_06", "sub_113");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub113_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub113_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_041_talk_07", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-582.64, 1.71, -25.81]), lua.Table.create([-12.0, -52.3, -0.0]), 40.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -581.29, 0.15, -27.49, 73.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub113_1", -579.61, 0.15, -28.23, untyped -107.67);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub113_1");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub113_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "npc_pokemon_sub113_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub113_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_041_talk_07", "sub_113", "npc_sub113_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        var eventResult:Dynamic = 0;
        if (((false == checkPossibleAddPpokemonResult)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_113_041_talk_11", "sub_113");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
            eventResult = (1 : Dynamic);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.75);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
            if (((true == flagValue)))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub113_1", false);
                var cameraVector:Dynamic = lua.Table.create([-578.17, 0.13, -27.7]);
                main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KEROMATU", cameraVector, untyped -104.82, 656, 0, 0);
                untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            };
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -577.65, 0.15, -27.81, 56.64);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub113_001", -576.19, 0.15, -26.13, -134.29);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KEROMATU", -576.56, 0.14, -28.39, -36.18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KEROMATU", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("KEROMATU", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-576.85, 1.29, -27.22]), lua.Table.create([-38.25, -13.29, -10.23]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KEROMATU", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_113_041_talk_08", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-577.54, 2.14, -26.7]), lua.Table.create([-38.25, -13.29, -10.23]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_113_041_sys_01", "sub_113");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KEROMATU", -577.18, 0.13, -28.49, 28.81);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-576.38, 2.16, -25.17]), lua.Table.create([-23.64, 8.5, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "serious");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub113_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub113_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("KEROMATU", "npc_sub113_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub113_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_041_talk_09", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-581.36, 1.47, -27.62]), lua.Table.create([-6.96, -94.73, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub113_001", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0113");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub113_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-577.53, 1.2, -26.81]), lua.Table.create([15.45, -116.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-577.21, 1.4, -26.65]), lua.Table.create([15.45, -116.29, 0.0]), 40.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_113_041_talk_10", "sub_113", "npc_sub113_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
            setFacialTemplate("npc_sub113_001", "normal");
            eventResult = (0 : Dynamic);
        };
        untyped this.m_resultParam = eventResult;
    }
}
