package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C9D5FD99C75F4FFEE")
@:expose("C9D5FD99C75F4FFEE")
class Sys_EnemyFirstAttack extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 147);
        untyped this.m_isResetMotionAtCommonEnd = true;
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 148));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 491);
    }
}
