package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C97EA05908B9C7753")
@:expose("C97EA05908B9C7753")
class Ev_sub_097_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub097_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-22.41), 1.51, (-558.49)]), lua.Table.create([(-2.64), (-11.8), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HOIIGA", lua.Table.create([(-29.35), 0.02, (-565.24)]), 131.11, 544, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub097_001", (-21.16), 0.14, (-561.19), (-53.57));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-22.5), 0.16, (-560.18), 148.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub097_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_001_talk_01", "sub_097", "npc_sub097_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_001_talk_02", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HOIIGA", (-26.03), 0.0, (-571.15), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "HOIIGA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-21.21), 1.63, (-558.87)]), lua.Table.create([(-5.68), 21.78, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub097_001", "HOIIGA");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "HOIIGA");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_001_talk_04", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub097_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub097_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub097_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_097_001_talk_05", "sub_097", "npc_sub097_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub097_001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("HOIIGA", (-43.56), 0.02, (-623.3), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub097_001", (-43.56), 0.02, (-623.3), 2.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0097");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
