package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C116D75497F9E565C")
@:expose("C116D75497F9E565C")
class Ev_sub_029_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub029_002", "npc_sub029_003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var getWorkValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_sub029_COUNT");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_002");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_003");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_003", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_003", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -793.0, -3.49, -686.76, -58.23);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub029_001", lua.Table.create([-794.06, -3.5, -684.75]), -143.24, "npc_old00_a_f_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("NINFIA", lua.Table.create([-793.55, -3.49, -685.47]), -109.45, 700, 0, 1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-795.92, -2.0, -686.27]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-795.92, -2.0, -686.27]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-795.92, -2.0, -686.27]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-794.07, -2.48, -686.66]), lua.Table.create([-8.86, 112.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-794.21, -2.48, -687.03]), lua.Table.create([-8.86, 112.38, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_002", "anger");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_003", "anger");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_002", 32, null, 3.75);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_010_talk_01", "sub_029", "npc_sub029_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_003", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_010_talk_02", "sub_029", "npc_sub029_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-796.61, -2.46, -684.64]), lua.Table.create([-2.8, -74.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_010_talk_03", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub029_001", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("NINFIA", "dyn_npc_sub029_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_010_talk_04", "sub_029", "dyn_npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_010_talk_05", "sub_029");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_002", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_010_talk_06", "sub_029", "npc_sub029_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_npc_sub029_001", lua.Table.create([-795.92, -2.0, -686.27]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-795.92, -2.0, -686.27]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-795.92, -2.0, -686.27]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -793.23, -3.49, -686.37, -58.23);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-797.49, -2.29, -686.74]), lua.Table.create([-12.06, -107.68, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_003", 33, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_003", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_010_talk_07", "sub_029", "npc_sub029_003");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "surprise");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_010_talk_08", "sub_029", "npc_sub029_003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_002", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_002", "smile_bitter");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_010_talk_09", "sub_029", "npc_sub029_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_sub029_001", -794.28, -3.5, -684.9, -137.32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -793.0, -3.49, -686.76, -58.23);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-796.61, -2.46, -684.64]), lua.Table.create([-2.8, -74.82, 0.0]), 40.0, 0, cameraEase);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub029_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub029_001", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 21);
        var firstComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_011");
        var secondComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_012");
        var thirdComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_013");
        var fourthComplete = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_029_014");
        if ((((firstComplete == true) && (secondComplete == true)) && (thirdComplete == true)) && (fourthComplete == true))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_010_talk_11", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_002", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_003", 33);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-790.76, -1.81, -686.31]), lua.Table.create([-16.1, 96.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var sceneVector:Dynamic = lua.Table.create([-790.22, -1.65, -686.37]);
            var sceneVector2:Dynamic = lua.Table.create([-16.1, 96.61, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            camera_Move_Angle(5.0, sceneVector, sceneVector2, 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_010_talk_13", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_010_talk_10", "sub_029", "dyn_npc_sub029_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_002", 32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_003", 33);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-790.76, -1.81, -686.31]), lua.Table.create([-16.1, 96.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector3:Dynamic = lua.Table.create([-790.22, -1.65, -686.37]);
            var sceneVector4:Dynamic = lua.Table.create([-16.1, 96.61, 0.0]);
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
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_029_010_talk_12", "sub_029");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_002");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub029_003");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_002", 32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_003", 32);
    }
}
