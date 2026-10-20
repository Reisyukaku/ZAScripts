package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEC8338ADECDEB4BE")
@:expose("CEC8338ADECDEB4BE")
class Ev_sub_040_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub040_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub040_001", (-405.26), 0.22, (-120.62), 114.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-403.65), 0.23, (-121.38), (-69.31));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub040_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub040_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-403.23), 1.62, (-122.57)]), lua.Table.create([(-3.38), 146.02, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_020_talk_01", "sub_040", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-404.99), 0.52, (-122.03)]), lua.Table.create([38.4, 176.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([(-404.99), 0.87, (-122.03)]), lua.Table.create([38.4, 176.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub040_001", lua.Table.create([(-404.52), 2.87, (-1)]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_020_talk_02", "sub_040", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_020_talk_03", "sub_040", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-403.23), 1.62, (-122.57)]), lua.Table.create([(-3.38), 146.02, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub040_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_020_talk_04", "sub_040", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_020_talk_06", "sub_040", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_020_talk_07", "sub_040", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0040");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub040_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub040_001", (-405.26), 0.23, (-120.62), 111.71);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
