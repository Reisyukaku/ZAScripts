package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2EB35E6ADD83BACB")
@:expose("C2EB35E6ADD83BACB")
class Ev_sub_036_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub036_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:String = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_main04_0004", lua.Table.create([-354.18, 0.02, -837.02]), -90.07, "npc_main04_0004");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -357.05, 0.02, -835.67, -166.61);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub036_001", -357.26, 0.01, -837.03, 29.99);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub036_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub036_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SIBIBIIRU1", lua.Table.create([-356.97, 0.02, -837.71]), 10.6, 603, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SIBIBIIRU2", lua.Table.create([-356.99, 0.02, -838.6]), 3.54, 603, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SIBIBIIRU3", lua.Table.create([-356.4, 0.02, -838.26]), -22.3, 603, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-354.2, 1.51, -834.8]), lua.Table.create([-11.26, 59.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub036_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_020_talk_01", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub036_001", "SIBIBIIRU3");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub036_001", "SIBIBIIRU3", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "SIBIBIIRU3", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("SIBIBIIRU1", "npc_sub036_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("SIBIBIIRU2", "npc_sub036_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("SIBIBIIRU3", "npc_sub036_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_020_talk_02", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-356.37, 1.73, -836.3]), lua.Table.create([-37.4, 25.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SIBIBIIRU1", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SIBIBIIRU2", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SIBIBIIRU3", 16);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_main04_0004", "anger_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-356.01, 0.82, -835.89]), lua.Table.create([8.32, -57.29, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-355.16, 1.23, -836.44]), lua.Table.create([8.32, -57.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub036_001", "dyn_npc_main04_0004", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_main04_0004", "npc_sub036_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_036_020_talk_03", "sub_036", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-352.41, 1.64, -834.98]), lua.Table.create([-11.77, 62.43, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_main04_0004", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("SIBIBIIRU1", "dyn_npc_main04_0004", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("SIBIBIIRU2", "dyn_npc_main04_0004", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("SIBIBIIRU3", "dyn_npc_main04_0004", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub036_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_036_020_talk_04", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_main04_0004", "serious");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-355.16, 1.23, -836.44]), lua.Table.create([8.32, -57.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(7.0, lua.Table.create([-354.92, 1.33, -836.59]), lua.Table.create([8.32, -57.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main04_0004", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_020_talk_05", "sub_036", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main04_0004", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_036_020_talk_06", "sub_036", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-354.81, 1.38, -836.04]), lua.Table.create([1.71, 67.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-356.37, 1.43, -836.69]), lua.Table.create([1.71, 67.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub036_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_036_020_talk_11", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-356.54, 1.58, -836.78]), lua.Table.create([-26.11, 8.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-356.54, 1.18, -836.78]), lua.Table.create([-26.11, 8.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SIBIBIIRU1", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SIBIBIIRU2", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SIBIBIIRU3", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_036_020_talk_12", "sub_036");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_main04_0004", -355.38, 0.02, -836.76, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-354.92, 1.65, -833.51]), lua.Table.create([-13.54, 29.2, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub036_001", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("SIBIBIIRU1", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("SIBIBIIRU2", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("SIBIBIIRU3", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_020_talk_14", "sub_036", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_main04_0004", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_main04_0004", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_020_talk_15", "sub_036", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_main04_0004", "npc_sub036_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_036_020_talk_18", "sub_036", "dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub036_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("SIBIBIIRU1");
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("SIBIBIIRU2");
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("SIBIBIIRU3");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_main04_0004");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_main04_0004", -350.12, 0.02, -834.26, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub036_001", -350.12, 0.02, -834.26, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("SIBIBIIRU1", -349.05, 0.02, -835.34, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("SIBIBIIRU2", -347.96, 0.02, -834.44, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("SIBIBIIRU3", -349.24, 0.02, -834.14, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T500");
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0036");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
