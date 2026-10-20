package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8D066B63D4C715D1")
@:expose("C8D066B63D4C715D1")
class Ev_sub_011_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub011_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-482.56), 0.61, (-789.37), 173.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub011_001", (-482.07), 0.61, (-790.77), 4.02);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SUBOMII", lua.Table.create([(-482.8), 0.58, (-790.91)]), 11.64, 406, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub011_1", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub011_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-482.29), 2.13, (-789.61)]), lua.Table.create([(-4.05), 18.9, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-481.77), 2.13, (-789.78)]), lua.Table.create([(-4.05), 18.9, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_001_talk_01", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub011_001", "head");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub011_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-482.69), 1.19, (-790.0)]), lua.Table.create([(-25.65), 6.89, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.6, lua.Table.create([(-482.71), 1.11, (-790.17)]), lua.Table.create([(-25.64), 6.89, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "SUBOMII", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub011_001", "SUBOMII", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("SUBOMII", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub011_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SUBOMII", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_001_talk_03", "sub_011");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-480.79), 2.33, (-787.62)]), lua.Table.create([(-15.65), 34.65, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_001_talk_04", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub011_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub011_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_001_talk_06", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-481.77), 2.13, (-789.78)]), lua.Table.create([(-4.05), 18.9, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub011_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_001_talk_08", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-480.79), 2.33, (-787.62)]), lua.Table.create([(-15.65), 34.65, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("SUBOMII");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "SUBOMII", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub011_001", "SUBOMII", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SUBOMII", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_001_talk_03", "sub_011");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("SUBOMII", (-487.56), 0.08, (-788.84), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub011_001", (-487.67), 0.1, (-789.37), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0011");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
    }
}
