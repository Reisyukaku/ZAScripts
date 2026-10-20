package event_ik;

import main.event.ik.base.BaseMainScenario;
import main.event.ik.command.IkScriptCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C2651E4CFF902CF80")
@:expose("C2651E4CFF902CF80")
class Ev_m10_1000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
        if (IkScriptCommand.GetFlagValue("flag_Ev_m10_1000") == false)
        {
            IkScriptCommand.Wait_Time(0.2);
            IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            IkScriptCommand.Wait_Fade();
        }
        IkScriptCommand.PostEvent2DWithEnd("PLAY_SS_ROTOM_CALL");
        IkScriptCommand.CreateRotomPhone("Player");
        IkScriptCommand.StartRotomPhoneSequence("Player");
        IkScriptCommand.ShowMessage(3, "msg_Ev_m10_1000_talk_01", "main_10_01", "dyn_main_friend_f", false);
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.PutAwayRotomPhone("Player");
        IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        IkScriptCommand.TerminateRotomPhoneAll();
    }
}
