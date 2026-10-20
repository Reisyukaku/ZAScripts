package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CD0AD1753A44ED42F")
@:expose("CD0AD1753A44ED42F")
class Sys_ZAEnemyFirstAttack extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
    }
}
