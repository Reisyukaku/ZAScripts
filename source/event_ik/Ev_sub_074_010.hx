package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF3A2630316E4E4A2")
@:expose("CF3A2630316E4E4A2")
class Ev_sub_074_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MERIIPU", lua.Table.create([(-586.85), 22.07, (-938.15)]), 117.37, 179, 0, 0, "event_script", 0, true, true);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-568.44), 22.08, (-935.98), (-95.97));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MERIIPU", 14);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-572.33), 23.34, (-940.35)]), lua.Table.create([(-3.25), (-129.58), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-573.1), 23.34, (-939.42)]), lua.Table.create([(-3.25), (-129.58), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-583.58), 22.96, (-936.5)]), lua.Table.create([(-9.94), 75.79, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-583.38), 22.96, (-937.29)]), lua.Table.create([(-9.94), 75.79, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MERIIPU", 16);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_074_010_sys_01", "sub_074");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 2);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_074_010_sys_02", "sub_074");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var npcAdult01AF03Id:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn"), Std.string("npc_adult01_a_f_03"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcAdult01AF03Id, lua.Table.create([(-578.36), 22.09, (-938.98)]), (-97.43), "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-574.23), 22.08, (-936.86), (-118.47));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("MERIIPU", (-586.8), 22.07, (-938.14), 136.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dynnpc_adult01_a_f_03", (-572.63), 22.07, (-936.5), (-130.86));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MERIIPU", 14);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcAdult01AF03Id, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcAdult01AF03Id, "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-575.06), 23.46, (-936.71)]), lua.Table.create([(-1.44), (-72.15), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-575.1), 23.46, (-936.9)]), lua.Table.create([(-1.44), (-72.15), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dynnpc_adult01_a_f_03", (-573.72), 22.07, (-937.54), 0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "rejoice_small", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_03", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "normal", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MERIIPU", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcAdult01AF03Id, "MERIIPU", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "normal", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-577.62), 23.9, (-936.26)]), lua.Table.create([(-8.82), 78.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-574.17), 22.08, (-936.8), (-178.36));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-576.28), 23.02, (-939.74)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcAdult01AF03Id, lua.Table.create([(-576.28), 23.02, (-939.74)]));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-578.89), 23.7, (-936.52)]), lua.Table.create([(-8.82), 78.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_04", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-580.29), 23.48, (-936.81)]), lua.Table.create([(-8.82), 78.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_10", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-581.81), 23.24, (-937.12)]), lua.Table.create([(-8.82), 78.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_11", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-583.55), 22.97, (-937.47)]), lua.Table.create([(-8.82), 78.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "surprise_mc", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_074_010_sys_12", "sub_074", npcAdult01AF03Id, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-576.77), 23.08, (-940.18)]), lua.Table.create([0.43, (-130.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-576.14), 23.18, (-939.64)]), lua.Table.create([0.43, (-130.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_05", "sub_074", npcAdult01AF03Id);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-575.51), 23.33, (-939.1)]), lua.Table.create([0.43, (-130.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AF03Id, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_13", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH04");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-574.98), 23.37, (-938.64)]), lua.Table.create([0.43, (-130.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AF03Id, 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "surprise", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_14", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "rejoice_big", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AF03Id, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(npcAdult01AF03Id, 33, null, 4.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-574.47), 23.5, (-938.2)]), lua.Table.create([0.43, (-130.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_074_010_sys_15", "sub_074", npcAdult01AF03Id, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_L");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-583.16), 23.13, (-937.62)]), lua.Table.create([(-11.8), 80.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([(-584.69), 22.81, (-937.86)]), lua.Table.create([(-11.8), 80.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcAdult01AF03Id, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcAdult01AF03Id, "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "normal", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AF03Id, 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_074_010_sys_06", "sub_074", npcAdult01AF03Id, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(npcAdult01AF03Id, (-575.69), 22.07, (-937.59), (-69.98));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-574.88), 22.08, (-936.4), (-139.43));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MERIIPU", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-573.57), 23.48, (-936.56)]), lua.Table.create([(-5.48), 81.5, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(npcAdult01AF03Id, "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_07", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AF03Id, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_08", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-574.76), 23.59, (-937.14)]), lua.Table.create([(-4.91), 73.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcAdult01AF03Id, 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcAdult01AF03Id, "rejoice_big_mc", "npc_adult01_a_f_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_074_010_sys_09", "sub_074", npcAdult01AF03Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcAdult01AF03Id, "MERIIPU", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MERIIPU", 35);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0074");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
