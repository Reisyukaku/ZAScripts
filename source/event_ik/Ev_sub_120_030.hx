package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE7291ACC6BDF63FA")
@:expose("CE7291ACC6BDF63FA")
class Ev_sub_120_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub120_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("Player", 410.3, 2.41, 18.96, 4.65);
        untyped (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("Player", "serious");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.CreateRotomPhone)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template)("Player", 2);
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_VS_END_EV_WILD");
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.5);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        untyped (untyped main.event.ik.command.IkScriptCommand.TakeOutRotomPhone)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(6, "msg_Ev_sub_120_030_talk_01", "sub_120");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        untyped (untyped main.event.ik.command.IkScriptCommand.PutAwayRotomPhone)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway)("Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.25);
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
    }
}
