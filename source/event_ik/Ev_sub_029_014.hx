package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C116D71497F9E4F90")
@:expose("C116D71497F9E4F90")
class Ev_sub_029_014 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub029_010", "npc_sub029_011"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getWorkValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub029_COUNT");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_010");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_011");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_010", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_011", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -772.42, 5.21, -696.04, -45.95);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub029_001", lua.Table.create([-773.9, 5.21, -696.87]), 6.9, "npc_old00_a_f_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("NINFIA", lua.Table.create([-773.18, 5.21, -696.68]), -23.79, 700, 0, 1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-774.07, 6.5, -694.24]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-774.07, 6.5, -694.24]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-774.07, 6.5, -694.24]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_010", "anger_mc");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_011", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_011", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", ("line01" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("line01" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-774.9, 6.58, -695.55]), lua.Table.create([-0.95, -142.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01_WEAK");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([-774.36, 6.56, -694.85]), lua.Table.create([-0.95, -142.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_010", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_014_talk_01", "sub_029", "npc_sub029_010");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_011", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-773.53, 6.42, -694.44]), lua.Table.create([15.75, 97.32, 22.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-773.95, 6.54, -694.39]), lua.Table.create([15.75, 97.32, 22.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_014_talk_02", "sub_029", "npc_sub029_011");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-775.83, 6.05, -695.17]), lua.Table.create([0.64, -59.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_03", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-773.09, 5.6, -696.51]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("NINFIA", "dyn_npc_sub029_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_04", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-773.09, 5.6, -696.51]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 23);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_05", "sub_029");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-774.07, 6.5, -694.24]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-774.07, 6.5, -694.24]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-774.07, 6.5, -694.24]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_011", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-774.57, 6.07, -694.9]), lua.Table.create([22.78, -137.83, 12.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([-774.06, 6.39, -694.35]), lua.Table.create([22.78, -137.83, 12.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01_MIDDLE");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_010", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_014_talk_06", "sub_029", "npc_sub029_010", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FadeEffect(("line01" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_sub029_001", -774.25, 5.21, -697.03, 10.01);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("NINFIA", -773.71, 5.21, -696.27, -23.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_011", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-774.0, 6.79, -692.53]), lua.Table.create([-12.08, -0.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_011", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_011", "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_07", "sub_029", "npc_sub029_011");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_010", 201);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_010", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "surprise");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_08", "sub_029", "npc_sub029_010");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_011", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_09", "sub_029", "npc_sub029_011");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -772.42, 5.21, -696.04, -45.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_sub029_001", -773.9, 5.21, -696.87, 6.9);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("NINFIA", -773.18, 5.21, -696.68, -23.79);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-775.83, 6.05, -695.17]), lua.Table.create([0.64, -59.25, 0.0]), 40.0, (0 : Dynamic), cameraEase, (null : Dynamic), (null : Dynamic), (null : Dynamic), (null : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 21);
        var firstComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_010");
        var secondComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_011");
        var thirdComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_012");
        var fourthComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_013");
        if ((((firstComplete == true) && (secondComplete == true)) && (thirdComplete == true)) && (fourthComplete == true))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_11", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_011", 33);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-772.44, 6.62, -698.66]), lua.Table.create([-10.31, 160.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector:Dynamic = lua.Table.create([-772.07, 6.81, -699.67]);
            var sceneVector2:Dynamic = lua.Table.create([-10.31, 160.04, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle((4.0 : Dynamic), sceneVector, sceneVector2, (40.0 : Dynamic), (0 : Dynamic), cameraEase2, (null : Dynamic), (null : Dynamic), (null : Dynamic));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_014_talk_15", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_014_talk_10", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_011", 33);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-772.44, 6.62, -698.66]), lua.Table.create([-10.31, 160.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector3:Dynamic = lua.Table.create([-772.07, 6.81, -699.67]);
            var sceneVector4:Dynamic = lua.Table.create([-10.31, 160.04, 0.0]);
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
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_014_talk_14", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_010");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_011");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_010", 33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_011", 33);
    }
}
