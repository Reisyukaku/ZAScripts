package main.event.ik.base;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("main")
@:hashAbi("CD1B6D4BC0E44B2C6")
@:expose("CD1B6D4BC0E44B2C6")
class BaseSubQuest extends BaseEvent
{
    public function new()
    {
        super();
    }
    @:hashAbi("FB5AFEE8CF355B993")
    public override function OnCreateMainScenario():Dynamic
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        main.event.ik.command.IkScriptCommand.FObj_Reset_Facial("Player");
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("Player");
        return true;
        
    }
}
