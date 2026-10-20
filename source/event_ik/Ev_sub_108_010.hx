package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2AA2F9F5272422C2")
@:expose("C2AA2F9F5272422C2")
class Ev_sub_108_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub108_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -387.25, 15.52, -514.19, -80.58);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.67, 21.23, -503.42]), lua.Table.create([-14.93, 125.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([-378.72, 21.23, -516.08]), lua.Table.create([-14.93, 125.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(5.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -391.37, 15.52, -512.63, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_108_010_sys_01", "sub_108");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1);
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        var actorId:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn"), Std.string("npc_adult02_a_m_01"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId, lua.Table.create([-391.36, 15.52, -512.32]), -57.88, "npc_adult02_a_m_01");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("EREZAADO", lua.Table.create([-390.65, 15.52, -511.88]), -57.88, 695, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -397.09, 15.52, -508.29, 134.03);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-397.5, 23.03, -497.84]), lua.Table.create([-30.55, -9.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-397.3, 22.31, -499.04]), lua.Table.create([-30.55, -9.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -394.93, 15.52, -510.13, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EREZAADO", -393.4, 15.52, -510.49, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-397.39, 16.91, -506.92]), lua.Table.create([-4.42, -24.94, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_01", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-395.47, 16.69, -508.99]), lua.Table.create([5.9, -25.46, 0.0]), 40.0, 0, cameraEase, null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EREZAADO", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_02", "sub_108", actorId, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PARTY_WHOOSH14");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        var workValue:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE");
        if (workValue < (100000 : Dynamic))
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-395.22, 14.58, -511.05]), lua.Table.create([38.04, 98.22, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-398.54, 17.2, -510.57]);
            var cameraVector2:Dynamic = lua.Table.create([38.04, 98.22, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int)));
            cameraMoveAngle(1.5, cameraVector, cameraVector2, 40.0, 0, cameraEase2, null, null, null, null, null, null);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-394.54, 14.94, -511.55]), lua.Table.create([28.81, 100.22, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle2:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector3:Dynamic = lua.Table.create([-399.47, 17.69, -510.66]);
            var cameraVector4:Dynamic = lua.Table.create([28.81, 100.22, -0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int)));
            cameraMoveAngle2(1.5, cameraVector3, cameraVector4, 40.0, 0, cameraEase3, null, null, null, null, null, null);
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(actorId);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(actorId);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_108_010_talk_03", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PARTY_WHOOSH08");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-415.74, 3.95, -483.33]), lua.Table.create([-16.63, -126.98, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-412.83, 2.86, -481.14]), lua.Table.create([-16.63, -126.98, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_108_010_talk_04", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PARTY_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-380.51, 20.41, -503.56]), lua.Table.create([-17.92, 115.46, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-383.84, 19.22, -501.97]), lua.Table.create([-17.92, 115.46, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_108_010_talk_05", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(actorId);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PARTY_WHOOSH09");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-395.76, 16.16, -508.45]), lua.Table.create([14.98, -24.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-395.42, 16.62, -509.18]), lua.Table.create([14.98, -24.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence(actorId);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_108_010_talk_14", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-397.41, 16.86, -507.08]), lua.Table.create([-2.05, -31.72, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_big_mc");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_RESET_T0");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_06", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(actorId);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(actorId);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(actorId);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -391.36, 15.52, -512.32, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("EREZAADO", -390.65, 15.52, -511.88, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("EREZAADO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(actorId, false);
        var setAnimationImmediatelyAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(actorId, 70);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationImmediatelyAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -397.93, 15.52, -509.18, -76.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(actorId, -398.75, 15.51, -509.0, -121.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("EREZAADO", -399.39, 15.52, -510.08, -143.77);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-422.21, 21.24, -507.42]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(actorId, lua.Table.create([-422.21, 21.24, -507.42]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("EREZAADO", lua.Table.create([-422.21, 21.24, -507.42]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-397.34, 16.43, -512.0]), lua.Table.create([2.19, 122.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-396.64, 16.43, -510.9]), lua.Table.create([2.19, 122.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_07", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("EREZAADO", -399.48, 15.52, -510.21, -116.29);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-397.7, 16.14, -510.62]), lua.Table.create([5.43, 125.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(actorId, lua.Table.create([-399.39, 16.32, -509.98]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_08", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("EREZAADO", 48.55);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EREZAADO", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_09", "sub_108");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-396.64, 16.43, -510.9]), lua.Table.create([2.19, 122.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "sad2");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_10", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EREZAADO", 52);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_15", "sub_108");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-397.23, 16.95, -511.54]), lua.Table.create([-6.95, 147.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-398.28, 16.71, -509.91]), lua.Table.create([-6.95, 147.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_11", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_12", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-396.64, 16.43, -510.9]), lua.Table.create([2.19, 122.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EREZAADO", 98);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_108_010_talk_13", "sub_108", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("EREZAADO", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0108");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
