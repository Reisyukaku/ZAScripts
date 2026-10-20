package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF90E7927E36B690B")
@:expose("CF90E7927E36B690B")
class Ev_sub_002_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub002_001", "npc_pokemon_sub002_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-675.22), 0.15, (-121.67), 13.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub002_001", (-675.63), 0.15, (-120.21), (-174.59));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub002_1", (-674.71), 0.15, (-119.92), (-143.7));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub002_1");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub002_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub002_1", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub002_001", "serious");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HORUBII", lua.Table.create([(-677.01), 0.12, (-126.56)]), 175.66, 659, 0, 0, "event_script", 0, true, false, null, true);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HORUBII", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-677.37), 2.53, (-125.68)]), lua.Table.create([(-15.24), (-146.5), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-678.15), 2.53, (-125.16)]), lua.Table.create([(-15.24), (-146.5), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_LOW");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_sub_002_002_10", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-676.18), 1.3, (-121.44)]), lua.Table.create([(-22.3), (-136.89), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "npc_pokemon_sub002_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub002_1");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub002_1", 27);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_20", "sub_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HORUBII", (-675.97), 0.12, (-112.73), 175.66);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.28), 1.2, (-121.25)]), lua.Table.create([22.14, (-170.06), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-675.67), 1.2, (-121.18)]), lua.Table.create([22.14, (-170.06), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_25", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HORUBII", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HORUBII", (-675.87), 0.12, (-115.03), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-676.7), 0.2, (-116.23)]), lua.Table.create([2.85, (-140.6), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-676.7), 0.69, (-116.23)]), lua.Table.create([2.85, (-140.6), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-676.7), 0.69, (-116.23)]), lua.Table.create([2.85, (-140.59), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HORUBII", 40);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH08");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-677.62), 0.49, (-117.6)]), lua.Table.create([2.85, (-140.59), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_30", "sub_002", "HORUBII", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-676.43), 0.15, (-120.63), 8.29);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub002_001", (-675.63), 0.15, (-120.21), (-3.78));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub002_1", (-674.71), 0.15, (-119.92), (-19.58));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "HORUBII", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub002_001", "HORUBII", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub002_1", "HORUBII", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub002_1", 1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-676.05), 0.67, (-113.4)]), lua.Table.create([(-1.17), (-21.12), (-6.93)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-676.87), 0.67, (-113.71)]), lua.Table.create([(-1.17), (-21.12), (-6.93)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.66), 1.44, (-118.51)]), lua.Table.create([2.38, (-1.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-675.66), 1.58, (-119.05)]), lua.Table.create([2.38, (-1.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_40", "sub_002", "npc_sub002_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.66), 1.58, (-119.05)]), lua.Table.create([2.38, (-1.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-675.65), 1.62, (-119.41)]), lua.Table.create([2.38, (-1.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_41", "sub_002", "npc_sub002_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.65), 1.62, (-119.41)]), lua.Table.create([2.38, (-1.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([(-675.65), 1.64, (-119.66)]), lua.Table.create([2.38, (-1.49), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_L");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_42", "sub_002", "npc_sub002_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-677.64), 2.13, (-122.42)]), lua.Table.create([(-17.15), (-153.38), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.15, lua.Table.create([(-677.32), 1.88, (-121.8)]), lua.Table.create([(-17.15), (-153.38), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub002_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_50", "sub_002", "npc_sub002_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-675.69), 0.67, (-119.84)]), lua.Table.create([0.0, 177.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-675.8), 0.67, (-116.54)]), lua.Table.create([0.0, 177.68, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HORUBII", 37);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-675.8), 0.67, (-116.54)]), lua.Table.create([0.46, 177.68, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "Ev_sub_002_002_60", "sub_002", "HORUBII", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD_STRONG");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
