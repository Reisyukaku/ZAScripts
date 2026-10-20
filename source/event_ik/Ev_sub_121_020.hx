package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C212AE0A3F319FF9C")
@:expose("C212AE0A3F319FF9C")
class Ev_sub_121_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub121_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -946.05, 0.24, -497.21, 0.01);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub121_001", -946.03, 0.23, -495.54, -177.11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub121_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub121_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-946.97, 2.42, -498.0]), lua.Table.create([-10.0, -144.16, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-946.97, 1.77, -498.0]), lua.Table.create([-10.0, -144.16, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub121_001", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_121_talk_11", "sub_121", "npc_sub121_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-946.36, 1.75, -496.34]), lua.Table.create([-3.75, -152.66, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub121_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_121_talk_16", "sub_121", "npc_sub121_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_121_talk_17", "sub_121", "npc_sub121_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-946.97, 1.77, -498.0]), lua.Table.create([-10.0, -144.16, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub121_001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0121");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub121_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub121_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_121_talk_18", "sub_121", "npc_sub121_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub121_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub121_001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub121_001", -949.06, 0.23, -493.46, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
