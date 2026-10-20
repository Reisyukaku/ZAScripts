package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF311B9594C4D8889")
@:expose("CF311B9594C4D8889")
class Ev_sub_086_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub085_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("npc_sub085_001", "Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("Player", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_sub085_001", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_sub085_001", "Player", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub085_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_086_001_talk_01", "sub_086", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub085_001", 2);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_086_001_talk_02", "sub_086", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_086_001_talk_03", "sub_086", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", false);
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template)("npc_sub085_001", 3);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub085_001", "surprise");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_sub_086_001_talk_04", "sub_086", null, true, true);
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("Player", true);
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub085_001", "serious");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_086_001_talk_05", "sub_086", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub085_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_086_001_talk_06", "sub_086", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.PlayQuestOrderUI)("sub_0086");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub085_001", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub085_001", "normal");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_086_001_talk_07", "sub_086", "npc_sub085_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
    }
}
