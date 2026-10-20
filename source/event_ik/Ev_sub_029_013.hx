package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C116D78497F9E5B75")
@:expose("C116D78497F9E5B75")
class Ev_sub_029_013 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub029_009", "npc_sub029_008"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getWorkValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub029_COUNT");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_008");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_009");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_008", 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -752.98, -3.5, -759.87, 24.61);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub029_001", lua.Table.create([-753.61, -3.5, -758.32]), 63.85, "npc_old00_a_f_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("NINFIA", lua.Table.create([-753.45, -3.5, -759.11]), 44.32, 700, 0, 1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-751.65, -2.0, -757.38]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-751.65, -2.0, -757.38]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-751.65, -2.0, -757.38]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_008", "anger_mc");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_009", "anger_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", ("line01" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("line01" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-756.09, -1.85, -758.19]), lua.Table.create([-11.22, -84.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-756.01, -1.85, -757.33]), lua.Table.create([-11.22, -84.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-753.61, -2.11, -757.12]), lua.Table.create([-6.91, -84.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-753.58, -2.11, -756.82]), lua.Table.create([-6.91, -84.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_01", "sub_029", "npc_sub029_008");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_02", "sub_029", "npc_sub029_009");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-752.24, -2.62, -756.19]), lua.Table.create([-0.28, 24.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_009", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_008", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_03", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub029_001", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("NINFIA", "dyn_npc_sub029_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_04", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_05", "sub_029");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-751.65, -2.0, -757.38]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-751.65, -2.0, -757.381]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-751.65, -2.0, -757.381]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-751.67, -2.04, -755.51]), lua.Table.create([2.89, -14.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-751.34, -1.97, -756.85]), lua.Table.create([2.89, -14.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_008", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_013_talk_06", "sub_029", "npc_sub029_008", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -753.03, -3.5, -759.72, 24.61);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_009", "rejoice_big_mc");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "surprise");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_npc_sub029_001", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_009", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-749.9, -2.33, -755.78]), lua.Table.create([-0.29, 49.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_07", "sub_029", "npc_sub029_009");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_008", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_008", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_08", "sub_029", "npc_sub029_008");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_009", 33, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_09", "sub_029", "npc_sub029_009");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-751.11, -2.69, -756.87]), lua.Table.create([0.76, 48.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-751.35, -2.68, -757.08]), lua.Table.create([0.76, 48.81, 0.0]), 40.0, (0 : Dynamic), cameraEase, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 28);
        var firstComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_010");
        var secondComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_011");
        var thirdComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_012");
        var fourthComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_014");
        if ((((firstComplete == true) && (secondComplete == true)) && (thirdComplete == true)) && (fourthComplete == true))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_11", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_008", 32);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -752.98, -3.5, -759.87, 24.61);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("NINFIA", -753.24, -3.5, -759.17, 42.49);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-756.09, -1.81, -757.62]), lua.Table.create([-13.97, -82.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector:Dynamic = lua.Table.create([-756.94, -1.6, -757.51]);
            var sceneVector2:Dynamic = lua.Table.create([-13.97, -82.99, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle((4.0 : Dynamic), sceneVector, sceneVector2, (40.0 : Dynamic), (0 : Dynamic), cameraEase2, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_013_talk_13", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_013_talk_10", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_008", 491);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 491);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -752.98, -3.5, -759.87, 24.61);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("NINFIA", -753.24, -3.5, -759.17, 42.49);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-756.09, -1.81, -757.62]), lua.Table.create([-13.97, -82.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector3:Dynamic = lua.Table.create([-756.94, -1.6, -757.51]);
            var sceneVector4:Dynamic = lua.Table.create([-13.97, -82.99, 0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle((4.0 : Dynamic), sceneVector3, sceneVector4, (40.0 : Dynamic), (0 : Dynamic), cameraEase3, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            var unclampedRemainingCount:Dynamic = untyped 5 - (getWorkValueResult + 1);
            var remainingCount:Dynamic = null;
            if (unclampedRemainingCount <= 0)
            {
                remainingCount = (0 : Dynamic);
            }
            else
            {
                remainingCount = unclampedRemainingCount;
            };
            main.event.ik.command.IkScriptCommand.WordSet_Number(2, remainingCount);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_013_talk_12", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_008");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_009");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_008", 33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_009", 33);
    }
}
