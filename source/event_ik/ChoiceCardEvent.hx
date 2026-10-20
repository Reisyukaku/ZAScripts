package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;

@:keep
@:chunk("event_ik")
@:hashAbi("C4161A8F47C9AAA19")
@:expose("C4161A8F47C9AAA19")
class ChoiceCardEvent extends BaseEvent
{
    @:hashAbi("S15D476DBF29BBC4F")
    public static var FILE_NAME:Dynamic = "hud_ryl";

    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var resource = TextResourceManager.GetTextResourcePath("common/" + Std.string(FILE_NAME));
        TextResourceManager.LoadTextResource(resource);
        Await(function():Bool
        {
            return TextResourceManager.IsCompleteLoadingTextResource(resource);
        });
        IkScriptCommand.OpenChoiceCardMenu();
        TextResourceManager.UnloadTextResource(resource);
    }
}
