package main.event.ik.base;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("main")
@:hashAbi("CA3161976E3084CAD")
@:expose("CA3161976E3084CAD")
class BaseMainScenario extends BaseEvent
{
    public function new()
    {
        super();
    }
    @:hashAbi("FB5AFEE8CF355B993")
    public override function OnCreateMainScenario():Dynamic
    {
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Base("Player");
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
