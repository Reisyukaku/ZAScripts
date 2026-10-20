package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C31640C3AB1BBB115")
@:expose("C31640C3AB1BBB115")
class Ev_sub_060_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_sub060_001", "npc_pokemon_sub060_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_sub060_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("Player", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -8.42, 3.02, -89.75, -79.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub060_001", -10.48, 3.02, -89.44, 98.75);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub060_2", -11.24, 3.02, -90.64, 78.17);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ONBATTO", lua.Table.create([-3.67, 3.02, -91.24]), -79.99, 714, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MINEZUMI", lua.Table.create([-4.52, 3.02, -92.45]), -63.21, 504, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ZURUGGU", lua.Table.create([-3.42, 3.02, -92.1]), -71.82, 559, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-7.07, 4.18, -91.29]), lua.Table.create([-4.28, 124.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_01", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub060_2", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_060_030_talk_03", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub060_001", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_04", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "confident");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_060_030_talk_05", "sub_060", "npc_sub060_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_060_030_select_03", "msg_Ev_sub_060_030_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 28);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_06", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_07", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ONBATTO", -1.31, 3.02, -89.18, -89.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("MINEZUMI", -1.37, 3.02, -90.41, -88.21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ZURUGGU", -1.27, 3.02, -89.91, -92.82);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-11.06, 4.73, -88.97]), lua.Table.create([-16.82, -71.05, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub060_001", "ZURUGGU", "head");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("ONBATTO", -2.39, 3.02, -89.18, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("MINEZUMI", -2.89, 3.02, -90.41, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("ZURUGGU", -2.9, 3.02, -89.91, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -8.42, 3.02, -89.67, 131.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub060_001", -8.89, 3.02, -91.0, 72.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub060_2", -7.64, 3.02, -91.89, 51.58);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-5.67, 3.66, -90.0]), lua.Table.create([-7.76, -91.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-4.58, 3.51, -89.97]), lua.Table.create([-7.76, -91.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-6.53, 3.26, -91.39]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub060_001", lua.Table.create([-6.53, 3.26, -91.39]));
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ZURUGGU", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MINEZUMI", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ONBATTO", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_08", "sub_060");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_09", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ZURUGGU", -6.51, 3.02, -92.58, -31.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ONBATTO", -6.78, 3.02, -89.71, 178.34);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("MINEZUMI", -5.85, 3.02, -90.88, -88.05);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-5.57, 4.66, -87.7]), lua.Table.create([-11.48, 32.0, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-5.57, 4.36, -87.7]), lua.Table.create([-11.48, 32.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ZURUGGU", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MINEZUMI", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ONBATTO", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_10", "sub_060");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "smile");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_11", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "surprise");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_12", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub060_2", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_13", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_030_talk_14", "sub_060", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0060");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
