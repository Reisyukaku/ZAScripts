package main.event.ik.base;

import main.event.ik.command.IkScriptCommand;
import cppbindings.C56DE81E7;

@:keep
@:chunk("main")
@:hashAbi("C78C52E14AECCB295")
@:expose("C78C52E14AECCB295")
class BaseTalkNpcEvent extends BaseEvent
{
    @:abiSlot(8)
    public var slot8:String = "";

    @:abiSlot(9)
    public var slot9:Float = 0.0;

    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        IkScriptCommand.S3D047DB5B440735C();
        slot8 = C56DE81E7.fC4AD34C4("BOOT_CONDITION_TALK_NPC", 0);
        IkScriptCommand.FObj_Reset_Animation_Base("Player");
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        IkScriptCommand.FObj_Reset_Facial("Player");
        IkScriptCommand.FObj_Reset_Animation_Base("Player");
        return true;
    }

    public function FCA4AB983F3B7598B():Dynamic
    {
        slot9 = IkScriptCommand.FObj_Get_Angle(slot8);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", slot8);
        IkScriptCommand.Wait_FObj_Action(IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(slot8, "Player"));
        IkScriptCommand.FObj_LookAt_Obj("Player", slot8, "head");
        IkScriptCommand.FObj_LookAt_Obj(slot8, "Player", "head");
        return null;
    }

    public function FC23A9684D395E8D9():Dynamic
    {
        IkScriptCommand.FObj_Set_Animation(slot8, 74);
        IkScriptCommand.Wait_Time(0.3);
        IkScriptCommand.FObj_Set_Animation("Player", 74);
        IkScriptCommand.StartItemGetSequenceAuto();
        return null;
    }

    public function F944A5F3BE9287C6E():Dynamic
    {
        IkScriptCommand.Wait_FObj_Action(IkScriptCommand.FObj_Set_Turn(slot8, slot9));
        return null;
    }

    public function F931F8A64586A46A6(?label:String):Dynamic
    {
        IkScriptCommand.ShowMessageWindow(0, label, "npc_event", slot8);
        IkScriptCommand.HideMessageWindow();
        return null;
    }
}
