package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C9C3D8C6FE2A4E650")
@:expose("C9C3D8C6FE2A4E650")
class Ev_sub_018_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub018_001", "npc_pokemon_sub018_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub018_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub018_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub018_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub018_001");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub018_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub018_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_01", "sub_018", "npc_sub018_001");
        var menuLabels:Dynamic = (["msg_Ev_sub_018_010_select_01", "msg_Ev_sub_018_010_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var menuSelectionAfterBranch3:Dynamic = null;
        if ((0 == menuSelection))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub018_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_13", "sub_018", "npc_sub018_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var startSelectNpcTradePokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.StartSelectNpcTradePokemon(79, 0);
            var menuSelectionAfterBranch2:Dynamic = null;
            if ((null == startSelectNpcTradePokemonResult))
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_02", "sub_018", "npc_sub018_001");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                menuSelectionAfterBranch2 = (1 : Dynamic);
            }
            else
            {
                var isOybnForSingleSelectPokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
                var f0DE6FCA9Result:Dynamic = startSelectNpcTradePokemonResult.f0DE6FCA9();
                var menuSelectionAfterBranch:Dynamic = null;
                if ((79 == f0DE6FCA9Result))
                {
                    var f9E86AD53Result:Dynamic = startSelectNpcTradePokemonResult.f9E86AD53();
                    if ((0 == f9E86AD53Result))
                    {
                        main.event.ik.command.IkScriptCommand.TradeFromNpc("sub_0018", "sub_addpoke_gyadon", "npc_sub018_001", "trade_a_nickname_03");
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -87.97, 0.16, -750.91, 51.15);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub018_001", -86.68, 0.14, -749.17, 135.44);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub018_1", -86.65, 0.14, -751.97, -8.02);
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("NORMAL_YADON_NPC", lua.Table.create([-85.26, 0.16, -749.86]), -74.08, startSelectNpcTradePokemonResult.f0DE6FCA9(), startSelectNpcTradePokemonResult.f9E86AD53(), startSelectNpcTradePokemonResult.fB31DF589(), "event_script", 0, true, startSelectNpcTradePokemonResult.fA284DF88(), startSelectNpcTradePokemonResult.f1E57BACE(), isOybnForSingleSelectPokemonResult, false);
                        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub018_001", "NORMAL_YADON_NPC", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("NORMAL_YADON_NPC", "npc_sub018_001", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub018_001", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub018_1", "npc_sub018_001", "head");
                        main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
                        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-89.94, 1.59, -750.78]), lua.Table.create([-11.84, -99.04, -0.0]), 40.0, 0, cameraEase);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub018_001", 18);
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub018_001", 18);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_03", "sub_018", "npc_sub018_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                        {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub018_001", 21);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_04", "sub_018", "npc_sub018_001");
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_05", "sub_018", "npc_sub018_001");
                            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        }
                        else
                        {
                        };
                        if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                        {
                            var sceneVector:Dynamic = lua.Table.create([-12.5, -96.03, 0.0]);
                            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-87.57, 1.03, -750.02]), sceneVector, 40.0, 0, cameraEase2);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub018_001", false);
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        else
                        {
                            var sceneVector2:Dynamic = lua.Table.create([-18.61, -91.29, 0.0]);
                            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-87.36, 1.07, -749.91]), sceneVector2, 40.0, 0, cameraEase3);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub018_001", false);
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        };
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NORMAL_YADON_NPC", 18);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_06", "sub_018");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_07", "sub_018", "npc_sub018_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub018_001", true);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-89.94, 1.59, -750.78]), lua.Table.create([-11.84, -99.04, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub018_001", "Player");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub018_001", "Player", "head");
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub018_001", "rejoice_big_mc");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_08", "sub_018", "npc_sub018_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub018_001", "normal");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-87.7, 1.46, -749.7]), lua.Table.create([2.27, -113.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("NORMAL_YADON_NPC", false);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub018_001", 28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_09", "sub_018", "npc_sub018_001");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_10", "sub_018", "npc_sub018_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub018_001", 19);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub018_001", "rejoice_small_mc");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -87.79, 0.16, -751.2, 26.27);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub018_1", -87.06, 0.14, -752.23, -14.28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_11", "sub_018", "npc_sub018_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-87.03, 1.91, -749.14]), lua.Table.create([-21.81, 9.77, -0.0]), 40.0, 0, cameraEase4);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_12", "sub_018", "npc_sub018_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub018_1", 20);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_small_mc");
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0018");
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -89.56, 0.01, -749.54, 122.48);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub018_001", untyped -87.51, 0.15, untyped -750.0, untyped -76.62);
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    }
                    else
                    {
                    };
                    menuSelectionAfterBranch = menuSelection;
                }
                else
                {
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_002_talk_01", "sub_018", "npc_sub018_001");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    menuSelectionAfterBranch = (2 : Dynamic);
                };
                menuSelectionAfterBranch2 = menuSelectionAfterBranch;
            };
            menuSelectionAfterBranch3 = menuSelectionAfterBranch2;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_018_010_talk_02", "sub_018", "npc_sub018_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            menuSelectionAfterBranch3 = menuSelection;
        };
        untyped this.m_resultParam = menuSelectionAfterBranch3;
    }
}
