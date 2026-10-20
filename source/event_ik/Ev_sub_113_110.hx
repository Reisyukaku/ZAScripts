package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CC5EABCEBB000CF71")
@:expose("CC5EABCEBB000CF71")
class Ev_sub_113_110 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub113_001", "npc_pokemon_sub113_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 1);
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_SUB_0113_STOP");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_sub_113_100_talk_06", "sub_113", "npc_sub113_001", true, true);
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_sub_113_100_talk_03", "sub_113", "npc_sub113_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.25);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_SUB_0113_END");
    }
}
