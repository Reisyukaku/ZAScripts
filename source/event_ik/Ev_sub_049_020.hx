package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD7FDE2ADDC685885")
@:expose("CD7FDE2ADDC685885")
class Ev_sub_049_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub049_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-631.53), 0.09, (-927.53), (-127.5));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub049_001", (-632.64), 0.09, (-928.95), 52.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub049_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub049_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-630.52), 1.74, (-927.32)]), lua.Table.create([(-19.4), 64.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub049_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_049_020_talk_01", "sub_049", "npc_sub049_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-632.0), 1.05, (-928.64)]), lua.Table.create([2.79, 66.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_049_020_talk_02", "sub_049", "npc_sub049_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_049_020_talk_03", "sub_049", "npc_sub049_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-630.52), 1.74, (-927.32)]), lua.Table.create([(-19.4), 64.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_049_020_talk_04", "sub_049", "npc_sub049_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub049_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_ev_sub_049_020_talk_05", "sub_049", "npc_sub049_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0049");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
