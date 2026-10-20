package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C721FB822F31D33F4")
@:expose("C721FB822F31D33F4")
class Ev_sub_102_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub102_001", "npc_pokemon_sub102_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub102_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub102_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub102_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub102_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_01", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var effectKey:String = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -55.03, 0.15, -361.96, 172.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub102_001", -54.64, 0.14, -363.18, -18.7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub102_2", -55.33, 1.45, -363.48, 3.24);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub102_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub102_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-53.15, 1.25, -360.81]), lua.Table.create([3.05, 45.7, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_04", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "npc_sub102_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_09", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-54.45, 1.89, -361.99]), lua.Table.create([-6.25, 18.2, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-54.61, 1.91, -362.31]), lua.Table.create([-6.25, 18.2, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub102_2", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 21);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub102_001", lua.Table.create([-55.33, 1.85, -363.48]));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_102_010_talk_10", "sub_102", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_11", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_12", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub102_2", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_22", "sub_102");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-56.22, 2.09, -362.91]), lua.Table.create([-13.56, -68.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_13", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub102_2", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_102_010_talk_23", "sub_102", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub102_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_14", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-54.13, 1.71, -361.75]), lua.Table.create([2.4, 51.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-53.85, 1.71, -362.1]), lua.Table.create([2.4, 51.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub102_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub102_2");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub102_001", -98.69, false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_pokemon_sub102_2", -97.88, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_15", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_16", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub102_2", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_20", "sub_102");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-53.15, 1.25, -360.81]), lua.Table.create([3.05, 45.7, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub102_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub102_2", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub102_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub102_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_21", "sub_102", "npc_sub102_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0102");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub102_001", lua.Table.create([-55.33, 1.85, -363.48]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub102_2", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_102_010_talk_24", "sub_102");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub102_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub102_001", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
