package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8F0E2D03A965B43C")
@:expose("C8F0E2D03A965B43C")
class Ev_sub_107_011 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub107_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_CMN_VS_END_EV_WILD");
        untyped (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_ALL");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 1);
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)("npc_pokemon_sub107_001", "Player");
        untyped (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)("Player", "npc_pokemon_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Camera_Easy_Normal)("Player", "npc_pokemon_sub107_001");
        untyped (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(2, "msg_Ev_sub_107_011_sys_01", "sub_107");
        untyped (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(2, "msg_Ev_sub_107_011_sys_02", "sub_107");
        untyped (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
    }
}
