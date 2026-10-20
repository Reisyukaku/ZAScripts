package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C95CA82852239342A")
@:expose("C95CA82852239342A")
class Ev_sub_021_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("npc_sub021_001", "Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt)("Player", "npc_sub021_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_sub021_001", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_sub021_001", "Player", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub021_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("npc_sub021_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)("npc_sub021_001", 32, null, 3.75);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub021_001", "anger");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_021_001_talk_01", "sub_021", "npc_sub021_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_021_001_talk_02", "sub_021", "npc_sub021_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub021_001", "smile");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub021_001", 2);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_021_001_talk_06", "sub_021", "npc_sub021_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.PlayQuestOrderUI)("sub_0021");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub021_001", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_sub021_001", "normal");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_sub021_001", 174);
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_sub_021_001_talk_07", "sub_021", "npc_sub021_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_PM_FX_RESET_T3000");
    }
}
