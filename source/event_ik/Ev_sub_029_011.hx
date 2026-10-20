package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C116D76497F9E580F")
@:expose("C116D76497F9E580F")
class Ev_sub_029_011 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub029_004", "npc_sub029_005"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getWorkValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub029_COUNT");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_004");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_005");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_004", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_005", 1);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub029_001", lua.Table.create([-757.91, -3.36, -685.556]), -22.81, "npc_old00_a_f_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("NINFIA", lua.Table.create([-758.7, -3.36, -685.416]), -3.48, 700, 0, 1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -759.18, -3.5, -686.13, 32.62);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-758.55, -2.0, -683.4]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-758.55, -2.0, -683.4]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-758.55, -2.0, -683.4]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.12, -2.06, -685.11]), lua.Table.create([-2.36, -177.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-758.54, -2.06, -685.06]), lua.Table.create([-2.36, -177.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_004", "anger_mc");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_005", "anger_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_004", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_01", "sub_029", "npc_sub029_004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_005", 32, null, 5.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_011_talk_02", "sub_029", "npc_sub029_005");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-760.1, -2.7, -683.54]), lua.Table.create([1.95, -34.47, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_03", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub029_001", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("NINFIA", "dyn_npc_sub029_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_04", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_05", "sub_029");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_06", "sub_029", "npc_sub029_004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-758.55, -2.0, -683.4]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-758.55, -2.0, -683.4]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-758.55, -2.0, -683.4]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_sub029_001", -758.22, -3.36, -685.63, -37.29);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.62, -1.72, -681.82]), lua.Table.create([-12.89, 4.73, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 26);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_005", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_005", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_07", "sub_029", "npc_sub029_005");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_004", 32, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_004", "normal");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_005", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "surprise");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_08", "sub_029", "npc_sub029_004");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-757.99, -1.94, -683.13]), lua.Table.create([-1.9, 104.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_005", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_005", "smile_bitter");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_09", "sub_029", "npc_sub029_005");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_004", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_sub029_001", -757.91, -3.36, -685.556, -22.81);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-760.1, -2.7, -683.54]), lua.Table.create([1.95, -34.47, -0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var firstComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_010");
        var secondComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_012");
        var thirdComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_013");
        var fourthComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_014");
        if ((((firstComplete == true) && (secondComplete == true)) && (thirdComplete == true)) && (fourthComplete == true))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_11", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_004", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_005", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_004", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -759.45, -3.5, -686.35, 12.36);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-761.37, -1.75, -686.69]), lua.Table.create([-15.73, -123.7, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector:Dynamic = lua.Table.create([-761.93, -1.56, -687.06]);
            var sceneVector2:Dynamic = lua.Table.create([-15.73, -123.7, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle(5.0, sceneVector, sceneVector2, 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_011_talk_13", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_011_talk_10", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_004", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_005", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub029_004", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -759.45, -3.5, -686.35, 12.36);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-761.37, -1.75, -686.69]), lua.Table.create([-15.73, -123.7, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector3:Dynamic = lua.Table.create([-761.93, -1.56, -687.06]);
            var sceneVector4:Dynamic = lua.Table.create([-15.73, -123.7, -0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase3);
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
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_011_talk_12", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_004");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_005");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_004", 32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_005", 32);
    }
}
