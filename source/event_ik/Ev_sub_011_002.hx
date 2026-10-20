package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8D066863D4C710B8")
@:expose("C8D066863D4C710B8")
class Ev_sub_011_002 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_002_talk_01", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_002_talk_02", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_002_talk_03", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_011_002_talk_04", "sub_011", "npc_sub011_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
