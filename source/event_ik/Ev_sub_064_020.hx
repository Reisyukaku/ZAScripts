package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3C0DADF03C55D600")
@:expose("C3C0DADF03C55D600")
class Ev_sub_064_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub064_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub064_001", -391.65, 0.23, -116.88, -147.67);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -393.62, 0.23, -119.95, 40.33);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub064_001", "head");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KAIROSU", lua.Table.create([-391.04, 0.23, -117.5]), -129.53, 127, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HERAKUROSU", lua.Table.create([-392.65, 0.23, -116.54]), -165.02, 214, 0, 1);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SUTORAIKU", lua.Table.create([-392.1, 0.23, -115.13]), -161.09, 123, 0, 1);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-395.23, 2.5, -120.52]), lua.Table.create([-5.22, -124.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-395.23, 1.6, -120.52]), lua.Table.create([-5.22, -124.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KAIROSU", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HERAKUROSU", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SUTORAIKU", 20);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub064_001", "KAIROSU", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_064_020_talk_01", "sub_064", "npc_sub064_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub064_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub064_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_064_020_talk_02", "sub_064", "npc_sub064_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub064_001", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_064_020_talk_03", "sub_064", "npc_sub064_001");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_064_020_select_01", "msg_Ev_sub_064_020_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-394.2, 1.34, -118.35]), lua.Table.create([-4.7, -121.97, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub064_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_064_020_talk_04", "sub_064", "npc_sub064_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_064_020_talk_05", "sub_064", "npc_sub064_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub064_001", 1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-395.23, 1.6, -120.52]), lua.Table.create([-5.22, -124.6, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub064_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub064_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_064_020_talk_06", "sub_064", "npc_sub064_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KAIROSU", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HERAKUROSU", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SUTORAIKU", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0064");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub064_001", "normal");
    }
}
