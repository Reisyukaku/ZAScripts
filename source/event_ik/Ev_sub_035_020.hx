package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF5148693569D7DEE")
@:expose("CF5148693569D7DEE")
class Ev_sub_035_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub035_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-762.89), 0.16, (-551.34), (-104.86));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub035_001", (-765.39), 0.15, (-552.37), 72.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub035_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub035_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub035_1", (-766.57), 1.08, (-553.13), 72.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub035_2", (-766.14), 0.16, (-551.44), 117.34);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub035_3", (-764.51), 0.15, (-553.15), 43.25);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub035_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub035_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub035_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub035_3", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-761.3), 1.65, (-551.85)]), lua.Table.create([(-10.02), 88.67, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub035_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_035_020_talk_01", "sub_035", "npc_sub035_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub035_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_035_020_talk_02", "sub_035", "npc_sub035_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-764.52), 1.57, (-552.46)]), lua.Table.create([13.99, 98.84, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub035_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub035_001", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_035_020_talk_08", "sub_035", "npc_sub035_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0035");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub035_001", "normal");
    }
}
