package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7A65CF49B639CE32")
@:expose("C7A65CF49B639CE32")
class Ev_m08_5120 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TOUCH_CARD");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5120_talk_03", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OPEN_DOOR_FLABS");
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t2_ar002_2_replace01", "t2_ar002_2", "open", "trigger");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5120_talk_02", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
