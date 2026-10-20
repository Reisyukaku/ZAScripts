package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2C7CB2764797F19A")
@:expose("C2C7CB2764797F19A")
class Ev_sub_098_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub098_001", "npc_sub098_002", "npc_sub098_003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("BOKUREE", lua.Table.create([-767.63, 1.6, -191.91]), -165.28, 708, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("BOKUREE", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -775.37, 0.02, -204.92, 96.11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub098_001", -773.42, 0.01, -204.78, -93.08);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("BOKUREE", -767.63, 1.6, -191.91, -165.28);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub098_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-776.42, 1.29, -204.06]), lua.Table.create([-2.02, -62.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var npcSub098001Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_01", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub098001Animation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_02", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub098_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("npc_sub098_001", lua.Table.create([-773.39, 1.25, -199.18]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("Player", lua.Table.create([-773.39, 1.25, -199.18]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -771.24, 0.01, -201.05, 24.18);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub098_001", -769.73, 0.0, -200.2, -3.39);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-771.5, 1.02, -200.57]), lua.Table.create([2.29, -139.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.2, lua.Table.create([-772.04, 1.02, -200.12]), lua.Table.create([2.29, -139.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -770.53, 0.01, -198.78, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var npcSub098001Movement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub098_001", -769.5, 0.0, -198.64, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub098001Movement);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_03", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-771.92, 1.04, -199.66]), lua.Table.create([2.29, -139.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-769.56, 1.74, -195.6]), lua.Table.create([-0.43, -146.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-769.24, 1.74, -195.12]), lua.Table.create([-0.43, -146.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(3.3);
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub098_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("BOKUREE", -766.9, 1.6, -192.4, 0.5));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-769.24, 1.74, -195.12]), lua.Table.create([-0.43, -146.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("BOKUREE", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, lua.Table.create([-767.72, 1.92, -193.63]), lua.Table.create([-0.43, -146.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "BOKUREE", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_098_030_talk_04", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub098_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BOKUREE", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_05", "sub_098");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-769.77, 0.89, -196.54]), lua.Table.create([5.55, 2.42, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_06", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-770.03, 1.11, -196.53]), lua.Table.create([7.29, -13.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.17, lua.Table.create([-769.78, 1.27, -197.59]), lua.Table.create([7.29, -13.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var npcSub098001Animation2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 21);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub098_001", "surprise");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_07", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcSub098001Animation2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("BOKUREE", -768.8, 2.45, -193.89, -154.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "BOKUREE", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "BOKUREE", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-772.04, 1.02, -200.12]), lua.Table.create([2.29, -139.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-771.6, 1.25, -199.59]), lua.Table.create([2.29, -139.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BOKUREE", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub098_001", 32, null, 5.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub098_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_08", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-769.31, 2.16, -194.98]), lua.Table.create([19.09, -154.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-770.53, 0.18, -197.64]), lua.Table.create([17.39, -155.3, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BOKUREE", 27);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_098_030_talk_09", "sub_098", "BOKUREE", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_098_030_talk_10", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("BOKUREE");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-769.31, 2.19, -194.97]), lua.Table.create([17.68, -154.65, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var bokureeAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BOKUREE", 25);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_11", "sub_098");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bokureeAnimation);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub098_001", -773.42, 0.01, -204.78, -129.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("BOKUREE", -773.91, 0.81, -204.31, -143.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -775.16, 0.01, -206.38, 49.84);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub098_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub098_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("BOKUREE");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-776.96, 1.26, -206.0]), lua.Table.create([-2.92, -110.61, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-776.78, 1.26, -206.48]), lua.Table.create([-2.92, -110.61, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub098_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_098_030_talk_12", "sub_098", "npc_sub098_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BOKUREE", 25);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0098");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
    }
}
