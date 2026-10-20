package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEBE8E1CC6B885BA5")
@:expose("CEBE8E1CC6B885BA5")
class Ev_sub_116_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub116_001", "npc_pokemon_sub116_1", "npc_pokemon_sub116_2", "npc_pokemon_sub116_3", "npc_pokemon_sub116_4"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var result:Dynamic = 0;
        main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_All(cast(713, Int));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub116_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub116_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_01", "sub_116", "npc_sub116_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        var pokemon:Dynamic = main.event.ik.command.IkScriptCommand.SF78A8CD440C5E9F0(713);
        if (pokemon == null)
        {
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_04", "sub_116", "npc_sub116_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            var selectedSize = main.event.ik.command.IkScriptCommand.GetSingleSelectPokemonSize();
            if (pokemon.f0DE6FCA9() == 713)
            {
                if (pokemon.f9E86AD53() == 1)
                {
                    result = 2;
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_14", "sub_116", "npc_sub116_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                    var isOybn = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
                    if (selectedSize == 4 || isOybn)
                    {
                        for (participant in this.Participants)
                        {
                            main.event.ik.command.IkScriptCommand.RemoveTagCommon(participant, "ContactNpcPokemonTurn");
                        }
                        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
                        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_1");
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_2");
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_3");
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub116_4");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        var effectKey = "line01";
                        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
                        this.Await(function():Dynamic
                        {
                            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
                        });
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KUREBEESU", lua.Table.create([-291.1, 1.34, -942.54]), 63.75, pokemon.f0DE6FCA9(), pokemon.f9E86AD53(), pokemon.fB31DF589(), "event_script", 0, true, pokemon.fA284DF88(), pokemon.f1E57BACE(), isOybn, false);
                        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -288.27, 1.34, -941.42, -107.99);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub116_001", -288.54, 1.32, -943.09, -75.68);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_1", -290.0, 1.34, -940.08, 172.37);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_2", -290.84, 1.33, -940.06, 162.54);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_3", -291.56, 1.33, -940.38, 140.81);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_4", -292.14, 1.34, -940.92, 118.36);
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KUREBEESU", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub116_001", "KUREBEESU", "head");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-287.79, 4.16, -938.28]), lua.Table.create([-29.17, 41.37, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-287.1, 4.16, -938.89]), lua.Table.create([-29.17, 41.37, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("KUREBEESU", "npc_sub116_001", "head");
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 19);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_06", "sub_116", "npc_sub116_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 21);
                            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_L");
                            main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-286.45, 4.71, -938.15]), lua.Table.create([-29.17, 41.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_116_010_talk_08", "sub_116", "npc_sub116_001", true, true);
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 19);
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_06", "sub_116", "npc_sub116_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 20);
                            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_116_010_talk_07", "sub_116", "npc_sub116_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        }
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 2);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-289.32, 2.52, -942.48]), lua.Table.create([11.78, -48.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub116_001", "npc_pokemon_sub116_3", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub116_001", 33, null, 4.5);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub116_001", "rejoice_small");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_09", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-287.27, 3.01, -941.56]), lua.Table.create([-22.83, 101.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("KUREBEESU", "npc_pokemon_sub116_2", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_1", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_2", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_3", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_4", 20);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_10", "sub_116");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -288.68, 1.34, -940.43, -128.35);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub116_001", -288.43, 1.34, -941.82, -128.35);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub116_001", false);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub116_001", "normal");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 1);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("KUREBEESU");
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_1", false);
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_2", false);
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_3", false);
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_4", false);
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_1", -290.94, 2.88, -942.81, 28.91);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_2", -290.76, 2.88, -941.82, 53.55);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_3", -290.19, 2.88, -942.41, 19.53);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_4", -291.51, 2.88, -942.05, 75.54);
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_1", -290.94, 2.62, -942.81, 28.91);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_2", -290.76, 2.62, -941.82, 53.55);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_3", -290.19, 2.62, -942.41, 19.53);
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_4", -291.51, 2.62, -942.05, 75.54);
                        }
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-289.18, 3.61, -939.96]), lua.Table.create([-27.8, 34.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-288.85, 3.92, -939.48]), lua.Table.create([-27.8, 34.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_11", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH08_WEAK");
                        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-288.85, 3.92, -939.48]), lua.Table.create([-27.8, 34.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-288.46, 4.28, -938.92]), lua.Table.create([-27.8, 34.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_116_010_talk_12", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub116_001", true);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-289.66, 2.73, -941.93]), lua.Table.create([-2.75, -85.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KUREBEESU", false);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_13", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub116_001", -286.17, 1.32, -943.03, -87.23);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KUREBEESU", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Ang("npc_pokemon_sub116_1", 102.0);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Ang("npc_pokemon_sub116_3", 77.0);
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-286.49, 4.78, -942.23]), lua.Table.create([-31.97, 88.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub116_001", false);
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-287.41, 4.22, -942.26]), lua.Table.create([-31.97, 88.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub116_001", false);
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_1", lua.Table.create([-287.41, 4.22, -942.26]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_2", lua.Table.create([-287.41, 4.22, -942.26]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.05);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_3", lua.Table.create([-287.41, 4.22, -942.26]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_4", lua.Table.create([-287.41, 4.22, -942.26]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("KUREBEESU", lua.Table.create([-287.41, 4.22, -942.265]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PHOTO_SHUTTER");
                        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.1);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.2);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-288.55, 1.94, -938.44]), lua.Table.create([6.61, 29.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-288.95, 1.82, -939.14]), lua.Table.create([8.56, 29.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_3", lua.Table.create([-288.95, 1.82, -939.14]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.05);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_1", lua.Table.create([-288.95, 1.82, -939.14]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_4", lua.Table.create([-288.95, 1.82, -939.14]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_2", lua.Table.create([-288.95, 1.82, -939.14]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("KUREBEESU", lua.Table.create([-288.95, 1.82, -939.14]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PHOTO_SHUTTER");
                        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.1);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.2);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Ang("npc_pokemon_sub116_4", 110.0);
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-286.89, 5.38, -942.94]), lua.Table.create([-41.01, 98.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-287.86, 4.98, -942.64]), lua.Table.create([-45.31, 96.72, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                            main.event.ik.command.IkScriptCommand.Wait_Camera();
                        }
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_4", lua.Table.create([-287.86, 4.98, -942.64]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.05);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_2", lua.Table.create([-287.86, 4.98, -942.64]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_3", lua.Table.create([-287.86, 4.98, -942.64]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_pokemon_sub116_1", lua.Table.create([-287.86, 4.98, -942.64]));
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("KUREBEESU", lua.Table.create([-287.86, 4.98, -942.64]));
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PHOTO_SHUTTER");
                        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.1);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.2);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -289.98, 1.34, -942.77, 172.92);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub116_001", -289.85, 1.32, -943.59, -87.23);
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KUREBEESU", -289.85, 1.34, -939.75, -159.7);
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KUREBEESU", -289.65, 1.34, -940.21, -159.7);
                        }
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_1", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_2", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_3", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_sub116_4", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_1", -289.83, 1.34, -944.64, -5.68);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_2", -290.67, 1.34, -944.85, 35.3);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_3", -291.53, 1.34, -943.8, 60.44);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_4", -291.49, 1.34, -942.86, 116.14);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub116_001", true);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-292.57, 3.0, -941.21]), lua.Table.create([-15.37, -53.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1000");
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 21);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_15", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub116_001", "head");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-290.7, 2.71, -943.12]), lua.Table.create([2.84, -49.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub116_1", false);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub116_001", 27, null, 2.0);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_16", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 20);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub116_001", "rejoice_big_mc");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_17", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub116_1", true);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub116_001", "normal");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-292.57, 3.0, -941.21]), lua.Table.create([-15.37, -53.14, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub116_001", "Player", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub116_001", "Player");
                        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 2);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub116_001", 33, null, 4.5);
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub116_001", "rejoice_big_mc");
                        if (isOybn)
                        {
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_19", "sub_116", "npc_sub116_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        }
                        else
                        {
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_18", "sub_116", "npc_sub116_001");
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        }
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_1", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_2", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_3", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub116_4", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KUREBEESU", 20);
                        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0116");
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
                        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub116_001", 1);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub116_001", -289.68, 1.34, -943.15, -117.31);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_1", -290.55, 1.34, -944.92, 29.23);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_2", -291.81, 1.34, -944.93, 49.36);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_3", -292.26, 1.34, -943.9, 86.91);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub116_4", -291.67, 1.34, -942.83, 99.59);
                        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    }
                    else
                    {
                        result = 2;
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_05", "sub_116", "npc_sub116_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    }
                }
            }
            else
            {
                result = 3;
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_116_010_talk_04", "sub_116", "npc_sub116_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            this.m_resultParam = result;
        }
    }
}
