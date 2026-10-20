package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB4C349DFE4242F13")
@:expose("CB4C349DFE4242F13")
class Ev_sub_110_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub110_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-891.65), 23.56, (-350.81), 14.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub110_001", (-883.67), 25.92, (-351.17), (-81.66));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub110_1", (-884.34), 25.92, (-352.32), (-75.61));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub110_001", "head");
        main.event.ik.command.IkScriptCommand.S40ACEF14A8745A74("world/ik_obj_template/effect/field/gimmick/field_item302a", "test", lua.Table.create([(-876.59), 25.94, (-354.58)]), 0.0);
        main.event.ik.command.IkScriptCommand.SBE4399F61C307041();
        main.event.ik.command.IkScriptCommand.S5AED1F1B5B2A7020();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-897.64), 26.46, (-346.09)]), lua.Table.create([(-9.74), 104.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, lua.Table.create([(-898.73), 26.26, (-345.82)]), lua.Table.create([(-9.74), 104.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_01", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-881.93), 27.67, (-354.95)]), lua.Table.create([(-14.6), 128.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-880.95), 28.0, (-355.73)]), lua.Table.create([(-14.6), 128.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub110_001", "npc_pokemon_sub110_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_010_talk_02", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-884.81), 26.27, (-351.38)]), lua.Table.create([(-12.86), (-22.2), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub110_1", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_010_talk_03", "sub_110");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub110_1", (-883.26), 25.92, (-352.59), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-887.07), 26.78, (-350.61)]), lua.Table.create([(-3.33), (-68.17), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub110_001", 167.15, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub110_001", lua.Table.create([(-877.95), 26.51, (-354.8)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_04", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-884.14), 26.11, (-352.32)]), lua.Table.create([0.77, (-53.39), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([(-883.78), 26.11, (-351.84)]), lua.Table.create([0.77, (-53.38), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub110_1", 11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub110_1", 39);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-881.79), 26.04, (-351.67)]), lua.Table.create([0.96, 56.44, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-882.4), 26.05, (-352.08)]), lua.Table.create([0.96, 56.43, 20.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_110_010_EW0055");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("White");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_05", "sub_110", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.S3E36C5EB9EFAF0F8();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub110_001", (-883.67), 25.92, (-351.17), 128.23);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-885.69), 26.56, (-353.32)]), lua.Table.create([(-0.02), (-99.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-887.43), 26.56, (-352.71)]), lua.Table.create([(-0.02), (-99.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T0");
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_06", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub110_001", "npc_pokemon_sub110_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_07", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-882.38), 26.13, (-353.81)]), lua.Table.create([(-2.91), 146.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([(-882.62), 26.1, (-353.45)]), lua.Table.create([(-2.91), 146.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub110_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_08", "sub_110", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-883.73), 27.2, (-352.28)]), lua.Table.create([7.8, (-174.06), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub110_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_010_talk_09", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub110_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_10", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-886.17), 28.44, (-350.36)]), lua.Table.create([(-30.24), (-63.56), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([(-885.68), 28.12, (-350.61)]), lua.Table.create([(-30.24), (-63.56), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_pokemon_sub110_1", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_pokemon_sub110_1");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub110_1", "npc_sub110_001", "head");
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_sub110_1", 9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_010_talk_11", "sub_110");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var npcSub110001Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_010_talk_12", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub110001Animation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_110_010_talk_14", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub110_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub110_1", (-883.65), 25.92, (-352.06), 89.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub110_001", (-883.32), 25.92, (-351.44), 103.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-881.52), 25.94, (-351.82), (-91.29));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub110_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub110_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub110_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-880.6), 27.53, (-353.37)]), lua.Table.create([(-15.59), 134.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub110_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub110_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_110_010_talk_15", "sub_110", "npc_sub110_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub110_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub110_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0110");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_RESET_T500");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub110_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub110_001", 1);
    }
}
