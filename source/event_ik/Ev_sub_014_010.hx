package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C72C4D65803A2534C")
@:expose("C72C4D65803A2534C")
class Ev_sub_014_010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub014_001", "npc_pokemon_sub014_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub014_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub014_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub014_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub014_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub014_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub014_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_01", "sub_014", "npc_sub014_001");
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(((["msg_Ev_sub_014_010_select_01", "msg_Ev_sub_014_010_select_02"]) : Dynamic), ((0 : Dynamic)), ((true : Dynamic)), ((false : Dynamic)));
        var menuSelectionAfterBranch3:Dynamic = null;
        if (0 == menuSelection)
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub014_001", 32, null, 3.75);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, (("msg_Ev_sub_014_010_talk_17" : Dynamic)), (("sub_014" : Dynamic)), (("npc_sub014_001" : Dynamic)));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var startSelectNpcTradePokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.StartSelectNpcTradePokemon(63);
            var isOybnForSingleSelectPokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
            var menuSelectionAfterBranch2:Dynamic = null;
            if (null == startSelectNpcTradePokemonResult)
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_02", "sub_014", "npc_sub014_001");
                var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow();
                menuSelectionAfterBranch2 = ((1 : Dynamic));
            }
            else
            {
                var f0DE6FCA9Result:Dynamic = startSelectNpcTradePokemonResult.f0DE6FCA9();
                var menuSelectionAfterBranch:Dynamic = null;
                if (63 == f0DE6FCA9Result)
                {
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_OYABUN_AURA_OFF");
                    main.event.ik.command.IkScriptCommand.TradeFromNpc("sub_0014", "sub_tradepoke_riolu", "npc_sub014_001", "trade_a_nickname_02");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub014_001", "Player");
                    main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KEESHI", lua.Table.create([-598.56, 0.26, -276.71]), 162.22, startSelectNpcTradePokemonResult.f0DE6FCA9(), startSelectNpcTradePokemonResult.f9E86AD53(), startSelectNpcTradePokemonResult.fB31DF589(), "event_script", 0, true, startSelectNpcTradePokemonResult.fA284DF88(), startSelectNpcTradePokemonResult.f1E57BACE(), isOybnForSingleSelectPokemonResult, false);
                    main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -599.81, 0.26, -278.19, 80.11);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub014_001", -597.95, 0.24, -277.95, -73.31);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KEESHI", "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub014_001", "KEESHI", "head");
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("KEESHI", "npc_sub014_001", "head");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "normal");
                    main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/poke_app/poke_app_01", (("poke_app_01" : Dynamic)), "KEESHI", "event_script");
                    this.Await((function():Dynamic
                    {
                        return main.event.ik.command.IkScriptCommand.IsSetUpEffect((("poke_app_01" : Dynamic)));
                    }));
                    main.event.ik.command.IkScriptCommand.SetLocaterEffect((("poke_app_01" : Dynamic)), "eff_face01");
                    var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-599.82, 1.73, -281.18]), (lua.Table.create([-9.97, -165.41, -0.0]) : Dynamic), 40.0, 0, cameraEase, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub014_001", 20);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_03", "sub_014", "npc_sub014_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub014_001", 32, null, 3.75);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "rejoice_small_mc");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_05", "sub_014", "npc_sub014_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KEESHI", 35);
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.S51E5BD1C2BEB6DE8("KEESHI");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub014_001", 21);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "surprise");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_07", "sub_014", "npc_sub014_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub014_001", 175);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "sad");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_08", "sub_014", "npc_sub014_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.S64149648456544DF("KEESHI");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KEESHI", 16);
                    main.event.ik.command.IkScriptCommand.Wait_Time(2.6);
                    main.event.ik.command.IkScriptCommand.PlayEffect((("poke_app_01" : Dynamic)));
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_HYON");
                    main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.2);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KEESHI", false);
                    main.event.ik.command.IkScriptCommand.Fade_In("White", 0.2);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FadeEffect((("poke_app_01" : Dynamic)));
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub014_001", 21);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "surprise");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_10", "sub_014", "npc_sub014_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub014_001", "head");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub014_001", "Player", "head");
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "normal");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_12", "sub_014", "npc_sub014_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub014_001");
                    var fObj_Set_Turn_To_Pos:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos;
                    var sceneVector2:Dynamic = lua.abi.Host.emptyTable();
                    untyped sceneVector2[1] = -602.43;
                    untyped sceneVector2[2] = ((0.24 : Dynamic));
                    untyped sceneVector2[3] = ((-281.48 : Dynamic));
                    fObj_Set_Turn_To_Pos((("npc_sub014_001" : Dynamic)), sceneVector2);
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "sad");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_11", "sub_014", "npc_sub014_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub014_001", "normal");
                    main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub014_001", -602.43, 0.24, -281.48, 2.0);
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub014_001", "head");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                    main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0014");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_OYABUN_AURA_ON");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
                    menuSelectionAfterBranch = menuSelection;
                }
                else
                {
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_014_010_talk_02", "sub_014", "npc_sub014_001");
                    var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                    hideMessageWindow2();
                    menuSelectionAfterBranch = ((2 : Dynamic));
                };
                menuSelectionAfterBranch2 = menuSelectionAfterBranch;
            };
            menuSelectionAfterBranch3 = menuSelectionAfterBranch2;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, (("msg_Ev_sub_014_010_talk_02" : Dynamic)), "sub_014", "npc_sub014_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            menuSelectionAfterBranch3 = menuSelection;
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped this.m_resultParam = menuSelectionAfterBranch3;
    }
}
