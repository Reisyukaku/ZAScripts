package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB5D8AF205C9E7FF7")
@:expose("CB5D8AF205C9E7FF7")
class Ev_sub_076_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub076_001", "npc_pokemon_sub076_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-728.88), 5.23, (-734.21), (-4.66));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub076_001", (-730.06), 5.21, (-733.18), 10.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub076_1", (-730.21), 5.21, (-730.89), 29.14);
        var npcMiddleAF02Id:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_middle_a_f_02"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcMiddleAF02Id, lua.Table.create([(-728.17), 5.36, (-728.77)]), (-145.67), "npc_middle_a_f_02");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(npcMiddleAF02Id, false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub076_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub076_001", "npc_pokemon_sub076_1", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-729.02), 6.48, (-728.16)]), lua.Table.create([(-7.43), 11.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-729.02), 6.03, (-728.16)]), lua.Table.create([(-7.43), 11.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_01", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var npcPokemonSub0761Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub076_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_04", "sub_076");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcPokemonSub0761Animation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(npcMiddleAF02Id, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-728.48), 5.23, (-732.38), 5.49);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub076_001", (-729.26), 5.21, (-731.26), 22.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub076_1", (-729.87), 5.21, (-730.49), 29.14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_middle_a_f_02", (-727.88), 5.36, (-727.25), (-163.67));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-729.24), 6.92, (-726.62)]), lua.Table.create([(-15.94), (-15.99), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-729.49), 6.92, (-727.44)]), lua.Table.create([(-15.94), (-15.99), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMiddleAF02Id, "npc_sub076_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub076_1", npcMiddleAF02Id, "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_middle_a_f_02", (-728.5), 5.36, (-729.41), 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub076_001", npcMiddleAF02Id, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcMiddleAF02Id, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_05", "sub_076", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_06", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-729.09), 6.87, (-730.15)]), lua.Table.create([(-1.99), (-139.47), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_07", "sub_076", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-726.77), 7.26, (-729.43)]), lua.Table.create([(-25.34), 71.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub076_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_10", "sub_076");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub076_001", "npc_pokemon_sub076_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_11", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMiddleAF02Id, "npc_pokemon_sub076_1", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "sad", "npc_middle_a_f_02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-729.24), 6.81, (-730.05)]), lua.Table.create([(-0.36), (-130.38), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub076_001");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 175);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_12", "sub_076", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-729.13), 7.38, (-727.09)]), lua.Table.create([(-22.21), (-5.8), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.5, lua.Table.create([(-729.19), 7.64, (-726.47)]), lua.Table.create([(-22.21), (-5.8), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "surprise");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_13", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0_EV_M09_1140");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub076_1");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-731.44), 6.76, (-729.42)]), lua.Table.create([(-7.66), (-106.31), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "normal", "npc_middle_a_f_02");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-729.81), 5.38, (-729.29), 44.46);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub076_001", (-727.92), 5.38, (-728.01), (-131.62));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_middle_a_f_02", (-728.33), 5.36, (-727.4), (-153.45));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub076_1", (-729.06), 5.38, (-727.18), (-173.94));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub076_001", "Player", "neck");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub076_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcMiddleAF02Id, lua.Table.create([(-730.59), 5.38, (-728.4)]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "sad");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "sad");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-731.77), 7.22, (-729.4)]), lua.Table.create([(-12.54), (-105.74), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-731.77), 6.86, (-729.4)]), lua.Table.create([(-12.54), (-105.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0_EV_M09_1140");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_16", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_17", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-729.24), 6.09, (-728.96)]), lua.Table.create([(-14.83), (-174.08), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "sad");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub076_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_18", "sub_076");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-731.68), 6.86, (-729.37)]), lua.Table.create([(-12.84), (-105.74), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub076_001", lua.Table.create([(-728.68), 5.38, (-729.75)]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_19", "sub_076", "npc_sub076_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub076_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_20", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub076_1", (-729.06), 5.38, (-727.18), 88.56);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-730.98), 5.5, (-728.31)]), lua.Table.create([11.92, (-103.27), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub076_001", "npc_pokemon_sub076_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub076_1", "npc_sub076_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMiddleAF02Id, "npc_pokemon_sub076_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_22", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "smile_bitter");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub076_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub076_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_076_020_talk_23", "sub_076", "npc_sub076_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub076_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0076");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
