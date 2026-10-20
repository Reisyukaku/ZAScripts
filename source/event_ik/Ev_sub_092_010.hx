package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C181A16AB6C44A046")
@:expose("C181A16AB6C44A046")
class Ev_sub_092_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub092_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_All((cast(710, Int)));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub092_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub092_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub092_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub092_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub092_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_01", "sub_092", "npc_sub092_001");
        var menuLabels:Dynamic = (["msg_Ev_sub_092_010_select_01", "msg_Ev_sub_092_010_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        var menuSelectionAfterBranch5:Dynamic = null;
        if ((0 == menuSelection))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_092_010_talk_02", "sub_092", "npc_sub092_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var s968C63845E220E5EResult:Dynamic = main.event.ik.command.IkScriptCommand.S968C63845E220E5E(710, 3);
            var menuSelectionAfterBranch4:Dynamic = null;
            if ((null == s968C63845E220E5EResult))
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_03", "sub_092", "npc_sub092_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                menuSelectionAfterBranch4 = (1 : Dynamic);
            }
            else
            {
                var f0DE6FCA9Result:Dynamic = s968C63845E220E5EResult.f0DE6FCA9();
                var menuSelectionAfterBranch3:Dynamic = null;
                if ((710 == f0DE6FCA9Result))
                {
                    var isOybnForSingleSelectPokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
                    var menuSelectionAfterBranch2:Dynamic = null;
                    if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                    {
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_05", "sub_092", "npc_sub092_001");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_06", "sub_092", "npc_sub092_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        menuSelectionAfterBranch2 = (1 : Dynamic);
                    }
                    else
                    {
                        var f9E86AD53Result:Dynamic = s968C63845E220E5EResult.f9E86AD53();
                        var menuSelectionAfterBranch:Dynamic = null;
                        if ((3 == f9E86AD53Result))
                        {
                            main.event.ik.command.IkScriptCommand.GiveToNpc("sub_0092");
                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub092_001", false);
                            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("BAKETTYA", lua.Table.create([-872.16, 0.98, -221.34]), -44.64, s968C63845E220E5EResult.f0DE6FCA9(), s968C63845E220E5EResult.f9E86AD53(), s968C63845E220E5EResult.fB31DF589(), "event_script", 0, true, s968C63845E220E5EResult.fA284DF88(), s968C63845E220E5EResult.f1E57BACE(), isOybnForSingleSelectPokemonResult, false);
                            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub092_001", lua.Table.create([-874.87, 0.16, -222.87]), 73.05, "npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -875.0, 0.16, -221.5, 114.34);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub092_1", -873.31, 0.72, -222.74, -44.64);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub092_2", -873.74, 0.59, -223.24, -44.64);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub092_3", -872.81, 0.86, -222.03, -44.64);
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "BAKETTYA", "head");
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub092_001", "BAKETTYA", "head");
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-873.92, 1.11, -221.92]), lua.Table.create([-13.3, -8.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-872.51, 1.98, -219.48]), lua.Table.create([-13.3, -8.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BAKETTYA", 17);
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_092_010_talk_07", "sub_092", "dyn_npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-872.41, 2.14, -218.06]), lua.Table.create([-14.08, 13.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub092_001", 22);
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_092_010_talk_08", "sub_092", "dyn_npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_092_010_talk_09", "sub_092", "dyn_npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_sub092_001", "Player");
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub092_001", "Player", "head");
                            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub092_001", "head");
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-874.17, 1.57, -220.71]), lua.Table.create([-3.79, 30.34, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub092_001", "rejoice_big_mc");
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub092_001", 2);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub092_001", 175);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_10", "sub_092", "dyn_npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_11", "sub_092", "dyn_npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_12", "sub_092", "dyn_npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub092_001", "rejoice_big");
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub092_001", 174);
                            main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
                            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                            var sceneVector:Dynamic = lua.Table.create([-872.51, 1.98, -219.48]);
                            var sceneVector2:Dynamic = lua.Table.create([-13.3, -8.32, 0.0]);
                            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                            camera_Move_Angle(0.0, sceneVector, sceneVector2, 40.0, 0, cameraEase, null, null, null, null, null, null, null);
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BAKETTYA", 20);
                            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0092");
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                            main.event.ik.command.IkScriptCommand.Wait_Fade();
                            menuSelectionAfterBranch = menuSelection;
                        }
                        else
                        {
                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_03", "sub_092", "npc_sub092_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            menuSelectionAfterBranch = (1 : Dynamic);
                        };
                        menuSelectionAfterBranch2 = menuSelectionAfterBranch;
                    };
                    menuSelectionAfterBranch3 = menuSelectionAfterBranch2;
                }
                else
                {
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_03", "sub_092", "npc_sub092_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    menuSelectionAfterBranch3 = (1 : Dynamic);
                };
                menuSelectionAfterBranch4 = menuSelectionAfterBranch3;
            };
            menuSelectionAfterBranch5 = menuSelectionAfterBranch4;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_092_010_talk_03", "sub_092", "npc_sub092_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            menuSelectionAfterBranch5 = menuSelection;
        };
        untyped this.m_resultParam = menuSelectionAfterBranch5;
    }
}
