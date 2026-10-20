package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CA4682A49CDA6D1D7")
@:expose("CA4682A49CDA6D1D7")
class Ev_m08_5400 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 7);
        IkScriptCommand.Fade_In("transition_fade_inout");
        IkScriptCommand.Wait_Fade();
        var playerAnimation = IkScriptCommand.FObj_Set_Animation("Player", 20);
        IkScriptCommand.StartItemGetSequence("ITEMID_EREBEETANOKII", 1);
        IkScriptCommand.ShowMessage(2, "msg_Ev_m08_5400_talk_02", "main_08_01");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.Wait_FObj_Action(playerAnimation);
        SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        IkScriptCommand.Fade_Out("transition_fade_inout");
        IkScriptCommand.Wait_Fade();
    }
}
