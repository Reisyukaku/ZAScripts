package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C458185BB843DCAE4")
@:expose("C458185BB843DCAE4")
class Ev_sub_114_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub114_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var flagName:Dynamic = null;
        flagName = "flag_Ev_sub_114_020";
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue(flagName);
        if (true == flagValue)
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            flagName = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            flagName();
        };
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GORONDA_1", lua.Table.create([-681.39, 6.12, -511.81]), -53.72, 675, 0, 0, "event_script", 0, true, false, null, true);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GORONDA_2", lua.Table.create([-679.54, 6.13, -509.89]), -94.94, 675, 0, 0, "event_script", 0, true, false, null, true);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        flagName = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", flagName);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(flagName);
        }));
        var fObjSetAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation;
        fObjSetAnimation("npc_sub114_001", 1);
        if (false == flagValue)
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -688.89, 6.13, -505.42, 158.69);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub114_001", -688.13, 6.12, -507.43, -15.27);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.91, 8.6, -503.61]), lua.Table.create([-15.15, 17.34, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_1", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_2", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-687.91, 7.94, -503.61]), lua.Table.create([-15.15, 17.34, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_01", "sub_114", "npc_sub114_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.85, 8.0, -506.31]), lua.Table.create([-22.99, 16.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "sad");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_02", "sub_114", "npc_sub114_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_03", "sub_114", "npc_sub114_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-686.94, 9.19, -503.81]), lua.Table.create([-38.56, 33.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-686.49, 9.84, -503.13]);
            var cameraVector2:Dynamic = lua.Table.create([-38.56, 33.4, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(6.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_04", "sub_114", "npc_sub114_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 22);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_05", "sub_114", "npc_sub114_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_1", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_2", true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T500");
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_2", 491);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_03_LOW");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-688.12, 6.95, -508.36]), lua.Table.create([4.69, -71.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-686.24, 7.11, -509.01]), lua.Table.create([4.69, -71.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        if (true == flagValue)
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(flagName);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_1", 40);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_114_020_talk_06", "sub_114", "GORONDA_1", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_2", 87);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_114_020_talk_07", "sub_114", "GORONDA_2", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(flagName);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -688.91, 6.13, -505.54, 141.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub114_001", -688.3, 6.12, -507.96, 98.25);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "GORONDA_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "GORONDA_1", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.74, 7.75, -504.17]), lua.Table.create([-8.52, -43.04, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 21);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "surprise");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_08", "sub_114", "npc_sub114_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_09", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub114_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_10", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub114_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-688.59, 7.6, -506.87]), lua.Table.create([-5.28, -14.88, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_1", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_11", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 18);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "GORONDA_1", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_020_talk_12", "sub_114", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GORONDA_1", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_sub114_001", "GORONDA_1");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-690.03, 7.75, -504.44]), lua.Table.create([-8.52, -43.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.55, lua.Table.create([-689.74, 7.75, -504.17]), lua.Table.create([-8.52, -43.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 491);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "GORONDA_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_1", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GORONDA_2", 40);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD_STRONG");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 1);
    }
}
