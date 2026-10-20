package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C97F090908BA1CF32")
@:expose("C97F090908BA1CF32")
class Ev_sub_097_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub097_001", "npc_pokemon_sub097_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("EV_SUBNPC", lua.Table.create([(-49.99), 0.01, (-647.87)]), 23.21, "npc_ju_member_m_02");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-48.05), 0.01, (-645.27), (-102.54));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub097_1", (-50.48), 0.01, (-646.11), 16.66);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub097_001", (-48.04), 0.01, (-641.33), (-159.87));
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("EV_SUBNPC", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-45.67), 3.07, (-647.54)]), lua.Table.create([(-12.54), 120.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-45.67), 1.67, (-647.54)]), lua.Table.create([(-12.54), 120.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub097_001", (-49.8), 0.01, (-644.69), 2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "npc_pokemon_sub097_1", "head");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub097_1", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_01", "sub_097");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "smile_bitter");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_02", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("EV_SUBNPC", true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EV_SUBNPC", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "EV_SUBNPC", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("EV_SUBNPC", "npc_sub097_001", "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-49.03), 1.09, (-646.37)]), lua.Table.create([5.84, 32.79, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-49.39), 1.27, (-646.94)]), lua.Table.create([5.84, 32.79, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("EV_SUBNPC", "anger");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_020_talk_03", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "sad");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-47.45), 1.34, (-646.26)]), lua.Table.create([0.27, 134.3, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub097_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_04", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-43.19), 0.95, (-646.72)]), lua.Table.create([(-3.14), 107.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([(-43.66), 0.95, (-648.25)]), lua.Table.create([(-3.14), 107.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "EV_SUBNPC", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "EV_SUBNPC", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EV_SUBNPC", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("EV_SUBNPC", "anger");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_05", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_020_talk_06", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-48.21), 0.22, (-647.7)]), lua.Table.create([8.17, 137.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-48.35), 0.25, (-647.54)]), lua.Table.create([8.17, 137.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "surprise");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_020_talk_07", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_08", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_020_talk_09", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub097_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-45.77), 1.51, (-645.41)]), lua.Table.create([(-10.53), 79.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_11", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EV_SUBNPC", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_12", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-49.38), 1.52, (-645.55)]), lua.Table.create([(-3.25), 151.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_13", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EV_SUBNPC", 491);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-49.5), 1.24, (-647.11)]), lua.Table.create([12.79, 32.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("EV_SUBNPC", "battle");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EV_SUBNPC", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_020_talk_20", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_14", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-45.77), 1.51, (-645.41)]), lua.Table.create([(-10.53), 79.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("EV_SUBNPC", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_15", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EV_SUBNPC", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_020_talk_16", "sub_097", "EV_SUBNPC");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_020_talk_17", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("EV_SUBNPC");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EV_SUBNPC", (-52.73), 0.01, (-655.27), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-47.45), 1.34, (-646.26)]), lua.Table.create([0.27, 134.3, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub097_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_18", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_097_020_talk_19", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-48.37), 0.52, (-646.37)]), lua.Table.create([0.46, 98.56, 0.01]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub097_1", 17);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0097");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
