package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C109BFF5ECF65FF42")
@:expose("C109BFF5ECF65FF42")
class Ev_sub_001_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub03_0003", "npc_pokemon_sub003_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_03_01");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        var resultMessage:Dynamic = "";
        switch (this.m_eventScriptParam.f73EE8FEC())
        {
            case "0":
                resultMessage = "msg_Ev_m03_0120_talk_30";
            case "1":
                resultMessage = "msg_Ev_m03_0120_talk_31";
            case "2":
                resultMessage = "msg_Ev_m03_0120_talk_32";
        }
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -539.58, 0.15, -64.0, -178.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub03_0003", -539.66, 0.14, -65.26, -0.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub03_0003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub03_0003", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-538.64, 1.55, -63.14]), lua.Table.create([-5.32, 37.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_13", "sub_001", "npc_sub03_0003");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_004_select_01", "msg_Ev_sub_004_select_02"], 0, true, false);
        if (selection == 0)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.3, 1.6, -64.35]), lua.Table.create([0.0, 20.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_15", "sub_001", "npc_sub03_0003", true, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var pokemon:Dynamic = main.event.ik.command.IkScriptCommand.StartSelectNpcTradePokemon(25, 0);
            if (pokemon == null)
            {
                selection = 1;
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 175);
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_14", "sub_001", "npc_sub03_0003");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "normal");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            }
            else
            {
                var isOybn = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
                if (pokemon.f0DE6FCA9() == 25)
                {
                    if (pokemon.f9E86AD53() == 0)
                    {
                        main.event.ik.command.IkScriptCommand.TradeFromNpc("sub_0001", "npc_pokemon_sub003_1", "npc_sub03_0003", "trade_a_nickname_01");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.4, 1.16, -61.67]), lua.Table.create([0.0, -3.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("PIKATYUU", lua.Table.create([-538.7, 0.14, -65.33]), -43.41, pokemon.f0DE6FCA9(), pokemon.f9E86AD53(), pokemon.fB31DF589(), "event_script", 0, true, pokemon.fA284DF88(), pokemon.f1E57BACE(), pokemon.f4FDDAF84(), false);
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_npc_pokemon_sub003_1", lua.Table.create([-541.85, 0.15, -63.26]), -102.93, 214, 0, 0);
                        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_pokemon_sub003_1", -541.85, 0.15, -63.26, -102.93);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -546.38, 0.15, -63.9, 161.66);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("PIKATYUU", "npc_sub03_0003", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub03_0003", "PIKATYUU", "head");
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-540.83, 2.94, -63.18]), lua.Table.create([-30.85, -34.41, 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-540.83, 2.55, -63.18]), lua.Table.create([-30.85, -34.41, 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_16", "sub_001", "npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-539.06, 1.41, -64.91]), lua.Table.create([18.16, 57.16, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        var turnAction = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub03_0003", 89.5);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("PIKATYUU");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_17", "sub_001", "npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnAction);
                        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 74);
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EVOLUTION");
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-540.11, 0.73, -63.49]), lua.Table.create([0.0, -36.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub03_0003", false);
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-539.54, 0.64, -64.25]), lua.Table.create([0.0, -36.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-539.61, 0.74, -64.38]), lua.Table.create([-11.68, -44.09, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub03_0003", false);
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-539.4, 0.65, -64.6]), lua.Table.create([-11.68, -44.09, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        }
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter("PIKATYUU");
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("RAITYUU", lua.Table.create([-538.7, 0.14, -65.33]), -43.41, 26, pokemon.f9E86AD53(), pokemon.fB31DF589(), "event_script", 0, true, pokemon.fA284DF88(), pokemon.f1E57BACE(), pokemon.f4FDDAF84(), false);
                        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                        pokemon.fC71544E7(26, pokemon.f9E86AD53());
                        cppbindings.C56DE81E7.f80DA854C("sub_0001", pokemon);
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-540.46, 0.84, -63.34]), lua.Table.create([0.3, -41.67, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-540.87, 0.84, -62.89]), lua.Table.create([0.3, -41.67, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-539.65, 0.59, -64.26]), lua.Table.create([0.3, -41.66, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-539.97, 0.59, -63.9]), lua.Table.create([0.3, -41.66, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        }
                        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("RAITYUU", 17);
                        ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_EVOLUTION");
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_EVOLUTION");
                        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_18", "sub_001", "npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub03_0003", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -541.43, 0.15, -63.31, 133.26);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_pokemon_sub003_1", -539.91, 0.14, -62.91, 136.11);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub03_0003", -539.95, 0.14, -64.94, 30.98);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("RAITYUU", -538.87, 0.14, -64.34, -90.88);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "RAITYUU", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_pokemon_sub003_1", "RAITYUU", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("RAITYUU", "npc_sub03_0003", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub03_0003", "RAITYUU", "head");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-542.17, 1.94, -61.02]), lua.Table.create([-16.44, -34.45, 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("RAITYUU", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-540.66, 1.63, -63.82]), lua.Table.create([-3.83, -32.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_19", "sub_001", "npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "surprise");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub03_0003", "Player", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub03_0003", "head");
                        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-542.17, 1.94, -61.02]), lua.Table.create([-16.44, -34.45, 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "normal");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub03_0003", "Player");
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_23", "sub_001", "npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-540.36, 1.56, -64.08]), lua.Table.create([2.38, -24.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A04_z02_05_0002", false);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "rejoice_small_mc");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_20", "sub_001", "npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_21", "sub_001", "npc_sub03_0003");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-538.67, 0.39, -63.84]), lua.Table.create([11.37, 114.09, -0.0]), 45.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_pokemon_sub003_1", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_pokemon_sub003_1");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub003_1", 20);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_pokemon_sub003_1", "Player", "head");
                        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_004_talk_22", "sub_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0001");
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, resultMessage, "main_03_01");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "normal");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_pokemon_sub003_1", false);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    }
                }
                else
                {
                    selection = 2;
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_12", "sub_001", "npc_sub03_0003");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
            }
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub03_0003", 175);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "sad");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_004_talk_14", "sub_001", "npc_sub03_0003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub03_0003", "normal");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        this.m_resultParam = selection;
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
