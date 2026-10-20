package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB00BF790F35DC04F")
@:expose("CB00BF790F35DC04F")
class Ev_sub_024_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub024_001", "npc_pokemon_sub024_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub024_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub024_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub024_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub024_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_01", "sub_024", "npc_sub024_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_All((cast(129, Int)));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        var sF78A8CD440C5E9F0Result:Dynamic = main.event.ik.command.IkScriptCommand.SF78A8CD440C5E9F0(129, 0);
        var eventResult9:Dynamic = null;
        if ((null == sF78A8CD440C5E9F0Result))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_02", "sub_024", "npc_sub024_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            eventResult9 = (1 : Dynamic);
        }
        else
        {
            var getSingleSelectPokemonSizeResult:Dynamic = main.event.ik.command.IkScriptCommand.GetSingleSelectPokemonSize();
            var isOybnForSingleSelectPokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
            var f0DE6FCA9Result:Dynamic = sF78A8CD440C5E9F0Result.f0DE6FCA9();
            var eventResult7:Dynamic = null;
            if ((129 == f0DE6FCA9Result))
            {
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -572.08, 0.01, -702.28, 119.77);
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub024_001", -569.35, 0.01, -704.15, -53.91);
                main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KOIKINGU_PLAYER", lua.Table.create([-570.93, 0.0, -702.67]), -159.33, sF78A8CD440C5E9F0Result.f0DE6FCA9(), sF78A8CD440C5E9F0Result.f9E86AD53(), sF78A8CD440C5E9F0Result.fB31DF589(), "event_script", 0, true, sF78A8CD440C5E9F0Result.fA284DF88(), sF78A8CD440C5E9F0Result.f1E57BACE(), isOybnForSingleSelectPokemonResult, false);
                main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KOIKINGU_PLAYER", "head");
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub024_001", "KOIKINGU_PLAYER", "head");
                var sceneVector:Dynamic = lua.Table.create([-570.37, 0.99, -704.27]);
                var sceneVector2:Dynamic = lua.Table.create([-18.52, 159.06, -0.0]);
                var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector, sceneVector2, 40.0, 0, cameraEase);
                untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                var eventResult5:Dynamic = null;
                if ((((4 == getSingleSelectPokemonSizeResult) || (3 == getSingleSelectPokemonSizeResult)) && (false == isOybnForSingleSelectPokemonResult)))
                {
                    main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KOIKINGU_PLAYER", 18);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-569.27, 1.8, -705.76]), lua.Table.create([-18.52, 159.06, -0.0]), 40.0, 0, cameraEase2);
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_05", "sub_024", "npc_sub024_001");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_06", "sub_024", "npc_sub024_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub024_001", untyped -568.02, 0.0, untyped -703.37, untyped -48.87);
                    untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    eventResult5 = (1 : Dynamic);
                }
                else
                {
                    var eventResult3:Dynamic = null;
                    if ((false == isOybnForSingleSelectPokemonResult))
                    {
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KOIKINGU_PLAYER", 18);
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-569.27, 1.8, -705.76]), lua.Table.create([-18.52, 159.06, -0.0]), 40.0, 0, cameraEase3);
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_03", "sub_024", "npc_sub024_001");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_04", "sub_024", "npc_sub024_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub024_001", untyped -568.02, 0.0, untyped -703.37, untyped -48.87);
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        eventResult3 = (1 : Dynamic);
                    }
                    else
                    {
                        if ((true == isOybnForSingleSelectPokemonResult))
                        {
                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-569.27, 1.8, -705.76]), lua.Table.create([-18.52, 159.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub024_001", 21);
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_024_010_talk_05", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_07", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub024_001", "head");
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_08", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_024_010_talk_09", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_024_010_talk_10", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_11", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-570.79, 1.77, -703.21]), lua.Table.create([-18.64, -112.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub024_001", -566.56, 0.0, -703.08, -49.2);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -567.63, 0.01, -699.84, -154.08);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KOIKINGU_PLAYER", -567.96, 0.0, -701.42, -130.41);
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KOIKINGU_PLAYER", "head");
                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_12", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-570.79, 2.66, -703.21]), lua.Table.create([-18.64, -112.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KOIKINGU_PLAYER", 16);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub024_1", 18);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-570.79, 1.77, -703.21]), lua.Table.create([-18.64, -112.09, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(16, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_13", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub024_001", "head");
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub024_001", "Player", "head");
                            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub024_001", "Player");
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_14", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_15", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -569.83, 0.01, -702.38, 121.14);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub024_001", -567.94, 0.01, -703.23, -50.66);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KOIKINGU_PLAYER", false);
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub024_001", "head");
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub024_001", "Player", "head");
                            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-570.49, 1.35, -700.4]), lua.Table.create([-9.51, -32.76, -0.0]), 40.0, 0, cameraEase4);
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_16", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_024_010_talk_17", "sub_024", "npc_sub024_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0024");
                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
                            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
                        }
                        else
                        {
                        };
                        eventResult3 = (0 : Dynamic);
                    };
                    eventResult5 = eventResult3;
                };
                eventResult7 = eventResult5;
            }
            else
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_024_010_talk_02", "sub_024", "npc_sub024_001");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                eventResult7 = (4 : Dynamic);
            };
            eventResult9 = eventResult7;
        };
        untyped this.m_resultParam = eventResult9;
    }
}
