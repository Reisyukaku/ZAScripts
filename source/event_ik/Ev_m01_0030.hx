package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B6BA573C8464AB4")
@:expose("C6B6BA573C8464AB4")
class Ev_m01_0030 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/demo_03");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        var playerPosition:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Get_Pos("Player");
        var playerAngle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Get_Angle("Player");
        this.PlayDemo("ik_demo/ev/d003/d003.trtml");
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
        main.event.ik.command.IkScriptCommand.EventMapChange("t1", playerPosition[1], playerPosition[2], playerPosition[3], 0, playerAngle, 0);
    }
}
