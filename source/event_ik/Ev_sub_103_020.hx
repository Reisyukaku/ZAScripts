package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CAAD30C1007CC4D68")
@:expose("CAAD30C1007CC4D68")
class Ev_sub_103_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub103_001", "npc_sub103_003", "npc_pokemon_sub103_001", "npc_pokemon_sub103_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_2", (-854.23), 0.0, (-822.81), 52.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_003", (-852.62), 0.0, (-822.41), 39.81);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-848.46), 0.01, (-820.01), (-128.83));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", (-850.03), 0.0, (-820.55), (-136.85));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_001", (-849.88), 0.01, (-819.57), (-136.84));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "npc_sub103_003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub103_003", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-849.89), 1.43, (-820.75)]), lua.Table.create([(-4.62), 71.13, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-852.08), 1.42, (-822.03)]), lua.Table.create([5.02, 63.14, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-851.33), 1.05, (-821.65)]), lua.Table.create([5.02, 63.14, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var npcSub103003Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub103_003", 21);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_103_020_talk_01", "sub_103", "npc_sub103_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub103003Animation);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_003", (-851.44), 0.01, (-822.69), 38.89);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_2", (-852.94), 0.0, (-822.07), 56.98);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-847.25), 1.64, (-818.15)]), lua.Table.create([(-13.75), 47.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_02", "sub_103", "npc_sub103_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-847.96), 0.22, (-825.16)]), lua.Table.create([7.94, 117.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var npcPokemonSub1032Turn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub103_2", 133.98);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub103_003", (-847.6), 0.01, (-824.97), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1032Turn);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub103_2", (-848.27), 0.0, (-827.51), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", (-850.03), 0.0, (-820.55), 140.65);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-847.34), 1.58, (-821.67)]), lua.Table.create([(-14.93), 132.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub103_003", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub103_2", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_03", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub103_1", 6);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_04", "sub_103");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub103_1", 71.65);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub103_001", 111.16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-849.25), 1.49, (-820.13)]), lua.Table.create([(-1.3), 132.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub103_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_05", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-848.95), 0.4, (-820.38)]), lua.Table.create([(-4.87), 81.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var npcPokemonSub1031Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub103_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1031Animation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-848.41), 0.01, (-820.07), (-66.42));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_001", (-849.86), 0.01, (-819.61), 111.36);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", (-850.07), 0.0, (-820.51), 78.24);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-848.34), 0.05, (-821.71)]), lua.Table.create([15.41, 134.49, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "npc_pokemon_sub103_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_1", "npc_sub103_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_06", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_07", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_08", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1031Animation);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ROTOM_CALL");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-849.25), 1.41, (-820.4)]), lua.Table.create([2.31, 148.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_sub103_001");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_sub103_001");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_sub103_001");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_sub103_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_sub_103_020_talk_09", "sub_103");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_10", "sub_103", "npc_sub103_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_11", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_sub103_001");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_sub103_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-847.18), 1.34, (-821.74)]), lua.Table.create([(-10.01), 133.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_12", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-849.25), 1.49, (-820.13)]), lua.Table.create([(-1.3), 132.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_020_talk_13", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub103_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub103_1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-848.38), 0.01, (-820.04), (-66.42));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", (-850.07), 0.0, (-820.51), 78.24);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_001", (-849.86), 0.01, (-819.61), 111.36);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-852.05), 0.93, (-817.3)]), lua.Table.create([2.96, (-40.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-852.05), 0.23, (-817.3)]), lua.Table.create([2.96, (-40.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var npcPokemonSub1031Movement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub103_1", (-851.43), 0.0, (-818.42), 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub103_001", (-851.33), 0.01, (-816.06), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1031Movement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub103_1", 122.74));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub103_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub103_1", 20));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub103_1", (-852.72), 0.0, (-816.91), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0103");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
    }
}
