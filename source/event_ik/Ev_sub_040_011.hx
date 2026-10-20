package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEC8031ADECDC7302")
@:expose("CEC8031ADECDC7302")
class Ev_sub_040_011 extends BaseSubQuest
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
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_sub040_001", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_sub040_001", "Player", "head");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_sub040_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 1.0);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_sub_040_010_talk_06", "sub_040", "npc_sub040_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_sub_040_010_talk_07", "sub_040", "npc_sub040_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_VS_READY_01");
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_VS_READY");
        untyped (untyped main.event.ik.command.IkScriptCommand.FadeOutType)(7);
    }
}
