package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2EACD16ADD7E5F86")
@:expose("C2EACD16ADD7E5F86")
class Ev_sub_036_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub036_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub036_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub036_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub036_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub036_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_001_talk_01", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_001_talk_02", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub036_001", 3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_001_talk_03", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub036_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_001_talk_04", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_001_talk_05", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub036_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_036_001_talk_06", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0036");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_036_001_talk_07", "sub_036", "npc_sub036_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
