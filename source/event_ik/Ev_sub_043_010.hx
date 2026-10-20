package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C24C3009B012BA2C0")
@:expose("C24C3009B012BA2C0")
class Ev_sub_043_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub043_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        var checkPossibleAddPpokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon();
        var actorId:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_sub043_001"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -807.5, -5.71, -612.29, 59.74);
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MAGGYO", lua.Table.create([-806.43, -5.72, -611.31]), -142.53, 618, 1, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId, lua.Table.create([-807.76, -5.7, -615.06]), 47.67, "npc_sub043_001");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MAGGYO", "head");
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-808.14, -4.19, -611.62]), lua.Table.create([-41.25, -100.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([-807.41, -4.85, -611.48]), lua.Table.create([-41.25, -100.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAGGYO", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_043_010_talk_01", "sub_043", null, false, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-809.33, -3.73, -611.96]), lua.Table.create([-25.4, -94.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAGGYO", 45);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-806.85, -4.33, -611.39]), lua.Table.create([-5.34, 23.2, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "MAGGYO", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "surprise");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_010_talk_02", "sub_043", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId, -806.93, -5.71, -612.93, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-809.55, -3.33, -612.59]), lua.Table.create([-29.07, -98.01, -0.0]), 40.0, 0, cameraEase, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(actorId, "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_010_talk_03", "sub_043", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId, 28, null, 3.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_010_talk_06", "sub_043", actorId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(actorId);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAGGYO", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "MAGGYO", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MAGGYO", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_010_talk_07", "sub_043", actorId);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_010_talk_08", "sub_043", actorId);
        var hideMessageWindow:Dynamic = main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (false == checkPossibleAddPpokemonResult)
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_010_talk_11", "sub_043", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-807.41, -4.85, -611.48]), lua.Table.create([-41.25, -100.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(actorId, 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAGGYO", 17);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_043_010_talk_09", "sub_043");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("Player", actorId);
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-809.55, -3.33, -612.59]);
            var cameraVector2:Dynamic = lua.Table.create([-29.07, -98.01, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(actorId, 33, null, 3.85);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId, "rejoice_big_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_043_010_talk_10", "sub_043", actorId);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_043_010_talk_13", "sub_043");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MAGGYO", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId, "MAGGYO", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAGGYO", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0043");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
    }
}
