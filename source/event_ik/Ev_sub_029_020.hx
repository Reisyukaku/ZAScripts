package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C117787497FA6C977")
@:expose("C117787497FA6C977")
class Ev_sub_029_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -775.86, -3.5, -718.9, 70.63));
        main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub029_001", -773.96, -3.5, -718.72, -90.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub029_1", false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("NINFIA", lua.Table.create([-773.94, -3.5, -717.82]), -103.21, 700, 0, 1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("NINFIA", lua.Table.create([-774.08, -3.93, -719.74]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_001", "anger");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub029_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-777.55, -1.18, -718.08]), lua.Table.create([-16.97, -78.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-777.55, -1.88, -718.08]), lua.Table.create([-16.97, -78.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_020_talk_01", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub029_001", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-773.94, -3.0, -717.82]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_02", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-775.16, -2.65, -717.67]), lua.Table.create([-22.86, -76.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_020_talk_03", "sub_029");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("NINFIA", -773.94, -3.5, -717.82, -159.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-776.95, -1.68, -718.43]), lua.Table.create([-21.26, -86.2, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub029_001", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("NINFIA", "npc_sub029_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_020_talk_04", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 40);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_029_020_talk_05", "sub_029", null, true, true);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_029_020_select_01", "msg_Ev_sub_029_020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub029_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_001", "sad");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-774.92, -2.15, -718.37]), lua.Table.create([2.95, -69.73, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 21);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_12", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub029_001", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("NINFIA", -773.98, -3.5, -717.78, -150.29);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-774.66, -1.44, -719.14]), lua.Table.create([-47.08, -138.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_13", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_14", "sub_029");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-777.3, -1.98, -718.08]), lua.Table.create([-12.56, -75.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub029_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub029_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_06", "sub_029", "npc_sub029_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_07", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub029_001", 33, null, 4.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub029_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub029_001", "NINFIA", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_08", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-774.66, -1.44, -719.14]), lua.Table.create([-47.08, -138.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_029_020_talk_11", "sub_029", "npc_sub029_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("NINFIA", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0029");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub029_001", 1);
    }
}
