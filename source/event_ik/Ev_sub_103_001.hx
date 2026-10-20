package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CAAD9991007D1A8AD")
@:expose("CAAD9991007D1A8AD")
class Ev_sub_103_001 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-847.96), 0.01, (-822.91), (-26.54));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", (-849.52), 0.0, (-820.79), (-110.76));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub103_001", (-850.05), 0.0, (-820.26), (-132.14));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub103_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_001", "sad2");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_003", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-846.94), 0.01, (-824.97), (-26.54));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-847.92), 1.69, (-825.47)]), lua.Table.create([(-12.79), 169.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.3, lua.Table.create([(-848.0), 1.64, (-825.06)]), lua.Table.create([(-12.79), 169.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var playerMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-847.96), 0.01, (-822.91), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMovement);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-849.86), 1.61, (-821.05)]), lua.Table.create([(-12.09), 169.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_001_talk_01", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-848.14), 1.53, (-820.8)]), lua.Table.create([(-11.84), 87.4, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_001_talk_02", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-850.18), 1.03, (-821.82)]), lua.Table.create([5.9, 94.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-850.19), 1.03, (-821.96)]), lua.Table.create([5.9, 94.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub103_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "npc_sub103_003", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_1", "npc_sub103_003", "head");
        var npcPokemonSub1032Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub103_2", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_001_talk_03", "sub_103", "npc_sub103_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1032Animation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-848.0), 0.01, (-821.92), (-51.92));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_103_001_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-851.31), 1.27, (-821.66)]), lua.Table.create([1.84, (-137.83), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-850.5), 1.46, (-820.77)]), lua.Table.create([1.84, (-137.83), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(19, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_103_001_talk_04", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-846.39), 1.44, (-821.27)]), lua.Table.create([(-11.79), 86.51, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub103_003", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub103_003", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_001_talk_05", "sub_103", "npc_sub103_003");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_003", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_001_talk_06", "sub_103", "npc_sub103_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var npcPokemonSub1031Turn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub103_1", 134.24);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub103_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub103_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_103_001_talk_07", "sub_103", "npc_sub103_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1031Turn);
        var npcPokemonSub1031Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub103_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0103");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub1031Animation);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub103_1", (-849.52), 0.0, (-820.79), (-110.76)));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
    }
}
