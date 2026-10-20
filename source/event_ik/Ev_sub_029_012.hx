package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C116D77497F9E59C2")
@:expose("C116D77497F9E59C2")
class Ev_sub_029_012 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub029_006", "npc_sub029_007"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getWorkValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub029_COUNT");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_006");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_007");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_006", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_007", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -728.7, -3.5, -749.03, -66.17);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub029_001", lua.Table.create([-729.15, -3.5, -748.18]), -112.94, "npc_old00_a_f_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("NINFIA", lua.Table.create([-729.7, -3.5, -748.08]), -173.9, 700, 0, 1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-730.59, -2.0, -750.21]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-730.59, -2.0, -750.21]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-730.59, -2.0, -750.21]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_006", "anger_mc");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_007", "anger_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-729.94, -2.01, -750.15]), lua.Table.create([-2.63, 96.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-730.18, -2.02, -750.12]), lua.Table.create([-2.63, 96.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_007", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_01", "sub_029", "npc_sub029_007");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-730.87, -2.11, -749.55]), lua.Table.create([1.62, -36.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-730.68, -2.1, -749.82]), lua.Table.create([1.62, -36.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_006", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_012_talk_02", "sub_029", "npc_sub029_006");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.73, -2.85, -749.24]), lua.Table.create([2.35, -103.92, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_03", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-729.8, -3.0, -748.33]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("NINFIA", "dyn_npc_sub029_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_04", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-729.8, -3.0, -748.33]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_05", "sub_029");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_06", "sub_029", "npc_sub029_007");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-730.59, -2.0, -750.21]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-730.59, -2.0, -750.21]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-730.59, -2.0, -750.21]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.81, -2.1, -751.39]), lua.Table.create([-5.98, -134.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_006", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_07", "sub_029", "npc_sub029_006");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_007", 28);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_007", "normal");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-729.97, -2.07, -750.65]), lua.Table.create([-0.74, 118.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_006", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-730.32, -2.07, -750.46]), lua.Table.create([-0.74, 118.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_006", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_08", "sub_029", "npc_sub029_007");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_006", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.28, -2.12, -749.91]), lua.Table.create([2.26, -60.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_007", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([-730.92, -2.1, -750.12]), lua.Table.create([2.26, -60.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_007");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_006", 174);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_09", "sub_029", "npc_sub029_006");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "serious");
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.73, -2.85, -749.24]), lua.Table.create([2.35, -103.92, 0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 21);
        var firstComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_010");
        var secondComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_011");
        var thirdComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_013");
        var fourthComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_014");
        if ((((firstComplete == true) && (secondComplete == true)) && (thirdComplete == true)) && (fourthComplete == true))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_11", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_006", 32);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_007", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_007", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.25, -1.97, -746.15]), lua.Table.create([-14.17, -20.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector:Dynamic = lua.Table.create([-731.45, -1.83, -745.62]);
            var sceneVector2:Dynamic = lua.Table.create([-14.17, -20.62, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle(4.0, sceneVector, sceneVector2, 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_012_talk_13", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_012_talk_10", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_006", 33);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_007", 33);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_007", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-731.25, -1.97, -746.15]), lua.Table.create([-14.17, -20.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector3:Dynamic = lua.Table.create([-731.45, -1.83, -745.62]);
            var sceneVector4:Dynamic = lua.Table.create([-14.17, -20.62, 0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            var unclampedRemainingCount:Dynamic = untyped 5 - (getWorkValueResult + 1);
            var remainingCount:Dynamic = null;
            if ((unclampedRemainingCount <= 0))
            {
                remainingCount = (0 : Dynamic);
            }
            else
            {
                remainingCount = unclampedRemainingCount;
            };
            main.event.ik.command.IkScriptCommand.WordSet_Number(2, remainingCount);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_012_talk_12", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_006");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_007");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_006", 33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_007", 33);
    }
}
