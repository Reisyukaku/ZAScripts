package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF1491DD82BE85E2B")
@:expose("CF1491DD82BE85E2B")
class Ev_sub_112_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub112_001", "npc_pokemon_sub112_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_112_030_boxfull");
        var checkPossibleAddPpokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -369.08, 0.22, -407.37, -92.23);
        var fObj_Set_Pos_Ang:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
        fObj_Set_Pos_Ang("npc_sub112_001", untyped -370.46, 0.22, untyped -407.72, 75.77);
        var eventResult3:Dynamic = null;
        if ((false == getFlagValueResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub112_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub112_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_pokemon_sub112_1", 35);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.06, 1.56, -408.05]), lua.Table.create([-1.09, 109.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub112_001", "surprise_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_01", "sub_112", "npc_sub112_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub112_001", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_02", "sub_112", "npc_sub112_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub112_001", "npc_pokemon_sub112_1");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub112_001", "npc_pokemon_sub112_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub112_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -369.41, 0.22, -408.21, -129.12);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub112_1", -370.3, 0.22, -409.01, 48.4);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.77, 0.95, -409.15]), lua.Table.create([9.49, -167.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-369.74, 0.98, -408.98]), lua.Table.create([9.49, -167.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 200);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 248));
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_030_sys_01", "sub_112");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_RECOVERY");
            main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-370.3, 0.25, -409.01]));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.21, 1.39, -408.51]), lua.Table.create([-21.08, 88.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-368.38, 1.24, -408.76]), lua.Table.create([-21.08, 88.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("White", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub112_1", 16);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub112_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub112_1", 17);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_112_030_talk_03", "sub_112", null, true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-370.14, 0.39, -410.48]), lua.Table.create([13.03, -176.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub112_001", "rejoice_big_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_04", "sub_112", "npc_sub112_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub112_1", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_112_030_talk_05", "sub_112", null, true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub112_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub112_1", "Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub112_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub112_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub112_001", "rejoice_small_mc");
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.24, 1.31, -409.88]), lua.Table.create([3.65, 162.01, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub112_001", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_06", "sub_112", "npc_sub112_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var eventResult:Dynamic = null;
            if ((true == checkPossibleAddPpokemonResult))
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.22, 1.01, -408.69]), lua.Table.create([-25.49, 75.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub112_1", 20);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_08", "sub_112");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_030_sys_02", "sub_112");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-370.15, 0.37, -410.99]), lua.Table.create([10.36, -174.77, 0.0]), 40.0, 0, cameraEase2);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_09", "sub_112", "npc_sub112_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub112_1", 17);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub112_1", "head");
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_big");
                main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
                main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0112");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
                eventResult = (0 : Dynamic);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_030_talk_10", "sub_112");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped this.m_resultParam = 1;
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
                eventResult = (1 : Dynamic);
            };
            eventResult3 = eventResult;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -369.41, 0.22, -408.21, -129.12);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub112_1", -370.3, 0.22, -409.01, 48.4);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub112_1");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub112_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub112_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub112_001", "npc_pokemon_sub112_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub112_1", "Player", "head");
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-367.41, 2.52, -408.14]), lua.Table.create([-28.78, 85.42, -0.0]), 40.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_06", "sub_112", "npc_sub112_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var eventResult2:Dynamic = null;
            if ((true == checkPossibleAddPpokemonResult))
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.22, 1.01, -408.69]), lua.Table.create([-25.49, 75.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub112_1", 20);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_08", "sub_112");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_030_sys_02", "sub_112");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-370.15, 0.37, -410.99]), lua.Table.create([10.36, -174.77, 0.0]), 40.0, 0, cameraEase4);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_030_talk_09", "sub_112", "npc_sub112_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub112_1", 17);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub112_1", "head");
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_big");
                main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
                main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0112");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
                eventResult2 = (0 : Dynamic);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_112_030_talk_10", "sub_112");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped this.m_resultParam = 1;
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
                eventResult2 = (1 : Dynamic);
            };
            eventResult3 = eventResult2;
        };
        untyped this.m_resultParam = eventResult3;
    }
}
