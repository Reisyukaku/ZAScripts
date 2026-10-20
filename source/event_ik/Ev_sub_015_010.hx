package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C97B718195F676C1B")
@:expose("C97B718195F676C1B")
class Ev_sub_015_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub015_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_All((cast(673, Int)));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub015_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub015_001");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub015_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub015_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_01", "sub_015", "npc_sub015_001");
        var menuLabels:Dynamic = (["msg_Ev_sub_015_010_select_01", "msg_Ev_sub_015_010_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        var menuSelectionAfterBranch4:Dynamic = null;
        if ((0 == menuSelection))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_14", "sub_015", "npc_sub015_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var s968C63845E220E5EResult:Dynamic = main.event.ik.command.IkScriptCommand.S968C63845E220E5E(673);
            var menuSelectionAfterBranch3:Dynamic = null;
            if ((null == s968C63845E220E5EResult))
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_02", "sub_015", "npc_sub015_001");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                menuSelectionAfterBranch3 = (1 : Dynamic);
            }
            else
            {
                var getSingleSelectPokemonSizeResult:Dynamic = main.event.ik.command.IkScriptCommand.GetSingleSelectPokemonSize();
                var f0DE6FCA9Result:Dynamic = s968C63845E220E5EResult.f0DE6FCA9();
                var menuSelectionAfterBranch2:Dynamic = null;
                if ((673 == f0DE6FCA9Result))
                {
                    var isOybnForSingleSelectPokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
                    var menuSelectionAfterBranch:Dynamic = null;
                    if (((4 == getSingleSelectPokemonSizeResult) || lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult)))
                    {
                        main.event.ik.command.IkScriptCommand.GiveToNpc("sub_0015");
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GOOGOOTO", lua.Table.create([-86.98, 0.14, -282.31]), 161.6, s968C63845E220E5EResult.f0DE6FCA9(), s968C63845E220E5EResult.f9E86AD53(), s968C63845E220E5EResult.fB31DF589(), "event_script", 0, true, s968C63845E220E5EResult.fA284DF88(), s968C63845E220E5EResult.f1E57BACE(), isOybnForSingleSelectPokemonResult, false);
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GOOGOOTO_XS1", lua.Table.create([-88.72, 0.14, -283.79]), 65.96, 673, 0, 0, "event_script", 0, true, false, 0);
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GOOGOOTO_XS2", lua.Table.create([-88.1, 0.14, -284.81]), 36.87, 673, 0, 1, "event_script", 0, true, false, 0);
                        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -85.4, 0.15, -282.87, -80.64);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub015_001", -86.51, 0.15, untyped -284.78, untyped -12.02);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "GOOGOOTO", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub015_001", "GOOGOOTO", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("GOOGOOTO_XS1", "GOOGOOTO", "head");
                        untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("GOOGOOTO_XS2", "GOOGOOTO", "head");
                        if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-83.26, 1.15, -285.14]), lua.Table.create([2.55, 119.89, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-83.83, 1.19, -284.81]), lua.Table.create([2.55, 119.89, -0.0]), 40.0, 0, cameraEase);
                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub015_001", 21);
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_015_010_talk_06", "sub_015", "npc_sub015_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-83.89, 1.3, -285.05]), lua.Table.create([-2.68, 119.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-84.25, 1.28, -284.85]), lua.Table.create([-2.68, 119.9, 0.0]), 40.0, 0, cameraEase2);
                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_04", "sub_015", "npc_sub015_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        };
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_08", "sub_015", "npc_sub015_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GOOGOOTO_XS1", false);
                        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("GOOGOOTO_XS2", false);
                        if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                        {
                            var sceneVector:Dynamic = lua.Table.create([-84.19, 0.81, -284.47]);
                            var sceneVector2:Dynamic = lua.Table.create([13.96, 124.51, -0.0]);
                            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector, sceneVector2, 40.0, 0, cameraEase3);
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        else
                        {
                            var sceneVector3:Dynamic = lua.Table.create([-84.9, 0.84, -283.93]);
                            var sceneVector4:Dynamic = lua.Table.create([9.08, 125.86, -0.0]);
                            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase4);
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        };
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GOOGOOTO", 20);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_09", "sub_015");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GOOGOOTO_XS1", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GOOGOOTO_XS2", true);
                        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-85.41, 2.28, -284.11]), lua.Table.create([-31.09, 84.06, -0.0]), 40.0, 0, cameraEase5);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GOOGOOTO", false);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("GOOGOOTO_XS1", "npc_sub015_001", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("GOOGOOTO_XS2", "npc_sub015_001", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GOOGOOTO_XS1", 25);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GOOGOOTO_XS2", 25);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_10", "sub_015");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "GOOGOOTO_XS1", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub015_001", "GOOGOOTO_XS1", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub015_001", -60.0);
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub015_001", 19);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_11", "sub_015", "npc_sub015_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("GOOGOOTO", "GOOGOOTO_XS1", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GOOGOOTO", true);
                        var fObj_Set_Visibility:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
                        fObj_Set_Visibility("Player", true);
                        if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                        {
                            var sceneVector5:Dynamic = lua.Table.create([-83.26, 1.99, -284.23]);
                            var sceneVector6:Dynamic = lua.Table.create([-13.47, 103.08, 0.0]);
                            var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase6);
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        else
                        {
                            var sceneVector7:Dynamic = lua.Table.create([-83.58, 1.78, -284.04]);
                            var sceneVector8:Dynamic = lua.Table.create([-14.32, 98.72, 0.0]);
                            var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase7);
                            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
                        };
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub015_001", 18);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_12", "sub_015", "npc_sub015_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GOOGOOTO_XS1", 17);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GOOGOOTO_XS2", 17);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GOOGOOTO", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub015_001", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0015");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                        untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
                        menuSelectionAfterBranch = menuSelection;
                    }
                    else
                    {
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_03", "sub_015", "npc_sub015_001");
                        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        menuSelectionAfterBranch = (2 : Dynamic);
                    };
                    menuSelectionAfterBranch2 = menuSelectionAfterBranch;
                }
                else
                {
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_02", "sub_015", "npc_sub015_001");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    menuSelectionAfterBranch2 = (3 : Dynamic);
                };
                menuSelectionAfterBranch3 = menuSelectionAfterBranch2;
            };
            menuSelectionAfterBranch4 = menuSelectionAfterBranch3;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_015_010_talk_02", "sub_015", "npc_sub015_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            menuSelectionAfterBranch4 = menuSelection;
        };
        untyped this.m_resultParam = menuSelectionAfterBranch4;
    }
}
