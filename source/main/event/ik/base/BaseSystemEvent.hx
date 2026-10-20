package main.event.ik.base;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import cppbindings.C56DE81E7;

@:keep
@:chunk("main")
@:hashAbi("C363E5256C0564075")
@:expose("C363E5256C0564075")
class BaseSystemEvent extends BaseEvent
{
    @:abiSlot(8)
    public var slot8:String = "";

    @:abiSlot(9)
    public var slot9:Float = 0.0;

    @:abiSlot(10)
    public var slot10:Bool = false;

    public function new()
    {
        super();
    }

    public function FBA1C1BF976296FD5(?targetName:String):Dynamic
    {
        slot8 = targetName != null ? targetName : C56DE81E7.fC4AD34C4("BOOT_CONDITION_TALK_NPC", 0);
        slot10 = true;
        slot9 = IkScriptCommand.FObj_Get_Angle(slot8);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        IkScriptCommand.FObj_Reset_Facial("Player");
        IkScriptCommand.FObj_Reset_Animation_Base("Player");
        F54EBD95267AC81A8();
        return true;
    }

    public function F54EBD95267AC81A8():Dynamic
    {
        if (slot10)
        {
            IkScriptCommand.FObj_Set_Turn(slot8, slot9);
            IkScriptCommand.S522136910C73A819(slot8);
            slot10 = false;
        }
        return null;
    }
}
