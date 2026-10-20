package main.event.ik.base;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;

@:keep
@:chunk("main")
@:hashAbi("CB4D84E22A9AC8B1C")
@:expose("CB4D84E22A9AC8B1C")
class BaseElevator extends BaseEvent
{
    @:abiSlot(8)
    public var m_floor_array:Array<{floor_name:String, idx:Int}> = [];

    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        if (m_floor_array.length < 1)
        {
            return;
        }
        var resource = TextResourceManager.GetTextResourcePath("script/elevator");
        TextResourceManager.LoadTextResource(resource);
        Await(function():Bool
        {
            return TextResourceManager.IsCompleteLoadingTextResource(resource);
        });
        IkScriptCommand.ShowMessage(2, "msg_elevator_01", "elevator");
        var labels = [for (floor in m_floor_array) floor.floor_name];
        var cancelIndex = m_floor_array.length - 1;
        var selected:Int = IkScriptCommand.ShowContextMenu(labels, 0, true, false, 2, 0, "elevator");
        var cancelled = selected == cancelIndex;
        if (!cancelled)
        {
            m_resultParam = m_floor_array[selected].idx;
        }
        IkScriptCommand.HideMessageWindow();
        if (!cancelled)
        {
            IkScriptCommand.Fade_Out("BlackFade", 0.2);
            IkScriptCommand.Wait_Fade();
        }
        TextResourceManager.UnloadTextResource(resource);
    }
}
