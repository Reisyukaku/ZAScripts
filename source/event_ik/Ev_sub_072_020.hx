package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C9A09BF13FE2F7563")
@:expose("C9A09BF13FE2F7563")
class Ev_sub_072_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub072_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_072_020");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub072_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub072_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub072_1", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if ((false == getFlagValueResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -271.43, 0.35, -224.97, 11.31);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub072_001", -270.96, 0.35, -222.94, -142.79);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub072_1", -271.87, 0.35, -222.73, 168.22);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-272.62, 1.99, -226.28]), lua.Table.create([-14.52, -153.89, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_01", "sub_072", "npc_sub072_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_02", "sub_072", "npc_sub072_001");
        var menuLabels:Dynamic = (["msg_Ev_sub_072_020_select_01", "msg_Ev_sub_072_020_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var menuSelectionAfterBranch4:Dynamic = null;
        if ((0 == menuSelection))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var startSelectNpcTradePokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.StartSelectNpcTradePokemon(26, 0);
            var menuSelectionAfterBranch3:Dynamic = null;
            if ((null == startSelectNpcTradePokemonResult))
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_05", "sub_072", "npc_sub072_001");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                menuSelectionAfterBranch3 = (1 : Dynamic);
            }
            else
            {
                var f0DE6FCA9Result:Dynamic = startSelectNpcTradePokemonResult.f0DE6FCA9();
                var menuSelectionAfterBranch2:Dynamic = null;
                if ((26 == f0DE6FCA9Result))
                {
                    var f9E86AD53Result:Dynamic = startSelectNpcTradePokemonResult.f9E86AD53();
                    var menuSelectionAfterBranch:Dynamic = null;
                    if ((1 == f9E86AD53Result))
                    {
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 174);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_02", "sub_072", "npc_sub072_001");
                        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        menuSelectionAfterBranch = (1 : Dynamic);
                    }
                    else
                    {
                        menuSelectionAfterBranch = menuSelection;
                    };
                    menuSelectionAfterBranch2 = menuSelectionAfterBranch;
                }
                else
                {
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    main.event.ik.command.IkScriptCommand.TradeFromNpc("sub_0072", "npc_pokemon_sub072_001", "npc_sub072_001", "trade_a_nickname_04");
                    main.event.ik.command.IkScriptCommand.Create_NpcPokemon("RAITYUU", lua.Table.create([-272.91, 0.33, -222.53]), 161.44, startSelectNpcTradePokemonResult.f0DE6FCA9(), startSelectNpcTradePokemonResult.f9E86AD53(), startSelectNpcTradePokemonResult.fB31DF589(), "event_script", 0, true, startSelectNpcTradePokemonResult.fA284DF88(), startSelectNpcTradePokemonResult.f1E57BACE(), startSelectNpcTradePokemonResult.f4FDDAF84(), false);
                    main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -271.44, 0.35, -224.93, 11.31);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub072_1", -273.13, 0.46, -223.7, 123.12);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub072_1", "Player", "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("RAITYUU", "Player", "head");
                    main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-271.69, 0.9, -225.27]), lua.Table.create([-0.73, 145.36, 10.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-271.88, 0.9, -225.0]), lua.Table.create([-0.73, 145.36, 10.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.Fade_In("White", 0.25);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub072_1", 20);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_04", "sub_072", "npc_sub072_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_06", "sub_072", "npc_sub072_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("RAITYUU", 20);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_07", "sub_072");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -271.72, 0.35, -224.88, 24.82);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub072_1", -272.86, 0.56, -224.71, 29.99);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub072_001", -271.07, 0.34, -223.36, -152.86);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("RAITYUU", -271.83, 0.34, -222.61, 169.71);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub072_001", "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub072_1", "Player", "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub072_001", "Player", "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("RAITYUU", "npc_sub072_001", "head");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-276.0, 2.55, -225.87]), lua.Table.create([-4.04, -114.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-276.0, 1.39, -225.87]), lua.Table.create([-4.04, -114.28, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                    main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_08", "sub_072", "npc_sub072_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("RAITYUU", 17);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0072");
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                    var fObj_Set_Pos_AngResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("npc_pokemon_sub072_1", -271.76, 0.51, -222.31, -142.01);
                    wait_FObj_Action(fObj_Set_Pos_AngResult, null, null, null, null, null, null, null, null, null, null, null, null);
                    menuSelectionAfterBranch2 = menuSelection;
                };
                menuSelectionAfterBranch3 = menuSelectionAfterBranch2;
            };
            menuSelectionAfterBranch4 = menuSelectionAfterBranch3;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_020_talk_03", "sub_072", "npc_sub072_001");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            menuSelectionAfterBranch4 = (1 : Dynamic);
        };
        untyped this.m_resultParam = menuSelectionAfterBranch4;
    }
}
