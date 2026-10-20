package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE753F9AED9D86870")
@:expose("CE753F9AED9D86870")
class Ev_m09_3170 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/demo_37");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        this.PlayDemo("ik_demo/ev/d037b/d037b.trtml", false);
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
        main.event.ik.command.IkScriptCommand.StartCreditUISequence();
        main.event.ik.command.IkScriptCommand.LoadOnePicture("onepicture_ev_m09_3170_01");
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        while (true)
        {
            if (false != (main.event.ik.command.IkScriptCommand.IsCompleteLoadingPicture()))
            {
                break;
            };
            Suspend();
        };
        main.event.ik.command.IkScriptCommand.ShowOnePicture();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 3.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(7.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 3.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ExitOnePicture();
    }
}
