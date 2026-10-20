package event_ik;

import main.event.ik.base.BaseMainScenario;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B721173C84B6DE6")
@:expose("C6B721173C84B6DE6")
class Ev_m01_0010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F9D5677973CCA2F41")
    public override function IsSkipCommonCreateAndEnd():Bool
    {
        return true;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Visibility("Player", false);
        var textResource = TextResourceManager.GetTextResourcePath("script/demo_01");
        TextResourceManager.LoadTextResource(textResource);
        Await(function() return TextResourceManager.IsCompleteLoadingTextResource(textResource));
        // The latest script makes these queries without using their results.
        IkScriptCommand.FObj_Get_Pos("Player");
        IkScriptCommand.FObj_Get_Angle("Player");
        PlayDemo("ik_demo/ev/d001/d001.trtml");
        TextResourceManager.UnloadTextResource(textResource);
        IkScriptCommand.EventMapChange("t1_ev001", 1996.83, 1.02, -18.37, 0, 0.0, 0);
    }
}
