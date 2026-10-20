package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C64E8EA4227CCF39E")
@:expose("C64E8EA4227CCF39E")
class Ev_sub_007_001 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub007_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub007_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub007_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub007_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub007_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub007_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_007_001_talk_01", "sub_007", "npc_sub007_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub007_001", 6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub007_001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_007_001_talk_02", "sub_007", "npc_sub007_001", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub007_001", "confident", "npc_schoolkids_f_00");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub007_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_007_001_talk_03", "sub_007", "npc_sub007_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0007");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub007_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_007_001_talk_04", "sub_007", "npc_sub007_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
