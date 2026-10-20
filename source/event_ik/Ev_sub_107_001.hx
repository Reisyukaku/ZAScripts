package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8F0AA903A9629E19")
@:expose("C8F0AA903A9629E19")
class Ev_sub_107_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub107_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_MUTE_T500");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_sub107_001", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_sub107_001", "Player", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("npc_sub107_001", "Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("Player", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub107_001", 18);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_107_001_talk_01", "sub_107", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_107_001_talk_03", "sub_107", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub107_001", "sad", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub107_001", 22);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_107_001_talk_04", "sub_107", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)("npc_sub107_001", 32, null, 3.85);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub107_001", "serious", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_107_001_talk_05", "sub_107", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub107_001", "normal", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_107_001_talk_06", "sub_107", "npc_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.PlayQuestOrderUI)("sub_0107");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_RESET_T500");
    }
}
