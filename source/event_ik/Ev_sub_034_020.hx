package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7D9BD4A46B99AB8D")
@:expose("C7D9BD4A46B99AB8D")
class Ev_sub_034_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub034_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -620.74, 0.09, -911.18, 40.43);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_sub034_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("Player", "npc_sub034_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub034_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub034_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub034_001", 3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_sub034_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_034_020_talk_01", "sub_034", "npc_sub034_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_034_020_talk_02", "sub_034", "npc_sub034_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub034_001");
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub034_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_034_020_talk_03", "sub_034", "npc_sub034_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0034");
    }
}
