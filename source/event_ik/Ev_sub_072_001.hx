package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C9A02D213FE2976FE")
@:expose("C9A02D213FE2976FE")
class Ev_sub_072_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub072_001", "npc_pokemon_sub072_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("npc_pokemon_sub072_1"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-271.43), 0.35, (-224.97), 11.31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub072_001", (-270.96), 0.35, (-222.94), (-166.97));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub072_1", (-271.87), 0.35, (-222.73), 168.22));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub072_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub072_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub072_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-272.62), 1.99, (-226.28)]), lua.Table.create([(-14.52), (-153.89), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 20);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_072_001_talk_01", "sub_072", "npc_sub072_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-271.45), 1.87, (-223.74)]), lua.Table.create([(-4.91), (-147.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_02", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_03", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_04", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub072_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub072_001", "npc_pokemon_sub072_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-272.34), 1.44, (-224.64)]), lua.Table.create([(-16.17), (-165.81), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([(-272.25), 1.33, (-224.28)]), lua.Table.create([(-16.17), (-165.81), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_05", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub072_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_06", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_07", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-272.62), 1.99, (-226.28)]), lua.Table.create([(-14.52), (-153.89), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub072_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub072_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_08", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub072_1", 20);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0072");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-271.45), 1.87, (-223.74)]), lua.Table.create([(-4.91), (-147.67), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_001_talk_09", "sub_072", "npc_sub072_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub072_1", (-271.76), 0.51, (-222.31), (-142.01)));
    }
}
