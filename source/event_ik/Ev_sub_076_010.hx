package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB5CE9D205C960CDC")
@:expose("CB5CE9D205C960CDC")
class Ev_sub_076_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_All((cast(353, Int)));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub076_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub076_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub076_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub076_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_01", "sub_076", "npc_sub076_001");
        var menuLabels:Dynamic = untyped (["msg_Ev_sub_076_010_select_01", "msg_Ev_sub_076_010_select_02"]);
        var menuSelection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        var menuSelectionAfterBranch3:Dynamic = null;
        if ((0 == untyped menuSelection))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_02", "sub_076", "npc_sub076_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var s968C63845E220E5EResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.S968C63845E220E5E(353);
            var menuSelectionAfterBranch2:Dynamic = null;
            if ((null == s968C63845E220E5EResult))
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_03", "sub_076", "npc_sub076_001");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                menuSelectionAfterBranch2 = (untyped 1 : Dynamic);
            }
            else
            {
                var f0DE6FCA9Result:Dynamic = untyped s968C63845E220E5EResult.f0DE6FCA9();
                var menuSelectionAfterBranch:Dynamic = null;
                if ((353 == f0DE6FCA9Result))
                {
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    var isOybnForSingleSelectPokemonResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
                    main.event.ik.command.IkScriptCommand.GiveToNpc("sub_0076");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -415.92, 0.01, -686.04, -65.91);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub076_001", -417.26, 0.11, -686.93, -20.31);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "normal");
                    main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KAGEBOUZU", lua.Table.create([-418.56, 0.1, -685.21]), 153.49, s968C63845E220E5EResult.f0DE6FCA9(), s968C63845E220E5EResult.f9E86AD53(), s968C63845E220E5EResult.fB31DF589(), "event_script", 0, true, s968C63845E220E5EResult.fA284DF88(), s968C63845E220E5EResult.f1E57BACE(), isOybnForSingleSelectPokemonResult, false);
                    main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KAGEBOUZU", "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub076_001", "KAGEBOUZU", "head");
                    var cameraEase:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-414.77, 1.64, -687.58]), lua.Table.create([-9.77, 127.01, 0.0]), 40.0, 0, cameraEase);
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_04", "sub_076", "npc_sub076_001");
                    untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 174);
                    if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                    {
                        untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_06", "sub_076", "npc_sub076_001");
                    }
                    else
                    {
                        untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_05", "sub_076", "npc_sub076_001");
                    };
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_07", "sub_076", "npc_sub076_001");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    if (lua.abi.Host.truthy(isOybnForSingleSelectPokemonResult))
                    {
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-417.64, 1.16, -686.87]), lua.Table.create([-9.77, 150.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        var cameraEase2:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-417.87, 0.93, -686.46]), lua.Table.create([-9.77, 150.94, 0.0]), 40.0, 0, cameraEase2);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KAGEBOUZU", 17);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_08", "sub_076");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    }
                    else
                    {
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-417.44, 0.97, -686.8]), lua.Table.create([-9.77, 144.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        var cameraEase3:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-417.84, 0.72, -686.28]), lua.Table.create([-9.77, 144.32, 0.0]), 40.0, 0, cameraEase3);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KAGEBOUZU", 17);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_08", "sub_076");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    };
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("KAGEBOUZU", -71.99));
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("KAGEBOUZU", -427.55, 0.1, -686.19, 2.0));
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KAGEBOUZU", false);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -416.84, 0.01, -685.6, -65.91);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub076_001", -417.39, 0.11, -686.64, -79.41);
                    var cameraEase4:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-415.21, 1.44, -686.46]), lua.Table.create([-5.38, 102.16, 0.0]), 40.0, 0, cameraEase4);
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_10", "sub_076", "npc_sub076_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub076_001", -427.55, 0.1, -686.19, 2.0);
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                    untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
                    menuSelectionAfterBranch = untyped menuSelection;
                }
                else
                {
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_03", "sub_076", "npc_sub076_001");
                    untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    menuSelectionAfterBranch = (untyped 3 : Dynamic);
                };
                menuSelectionAfterBranch2 = menuSelectionAfterBranch;
            };
            menuSelectionAfterBranch3 = menuSelectionAfterBranch2;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_010_talk_03", "sub_076", "npc_sub076_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            menuSelectionAfterBranch3 = untyped menuSelection;
        };
        untyped this.m_resultParam = menuSelectionAfterBranch3;
    }
}
