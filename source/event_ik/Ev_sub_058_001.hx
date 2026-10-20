package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CFC7CEA637859054A")
@:expose("CFC7CEA637859054A")
class Ev_sub_058_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub058_001", "npc_pokemon_sub058_001", "npc_pokemon_sub058_002", "npc_pokemon_sub058_003", "npc_pokemon_sub058_004"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-162.44), 0.12, (-826.08), (-74.35));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_1", (-167.91), 0.1, (-824.86), 133.88);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_2", (-168.04), 0.1, (-823.57), 120.68);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_3", (-168.69), 0.1, (-825.65), 134.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub058_4", (-170.04), 0.09, (-825.49), 134.51);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_operator_m_02", lua.Table.create([(-162.24), 0.11, (-822.82)]), (-97.35), "npc_operator_m_02");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-164.11), 1.32, (-825.76)]), lua.Table.create([(-12.26), 110.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-164.34), 1.32, (-826.36)]), lua.Table.create([(-12.26), 110.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_2", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_3", 16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub058_4", 17);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_operator_m_02", (-163.28), 0.11, (-824.28), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-160.52), 1.29, (-828.11)]), lua.Table.create([(-4.49), 124.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_operator_m_02", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_operator_m_02", "npc_pokemon_sub058_1");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_001_talk_01", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_operator_m_02", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_001_talk_02", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_operator_m_02");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_operator_m_02", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_058_001_talk_03", "sub_058", "npc_sub058_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0058");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
