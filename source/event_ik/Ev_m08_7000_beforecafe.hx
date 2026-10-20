package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCFB89F9CA92244A0")
@:expose("CCFB89F9CA92244A0")
class Ev_m08_7000_beforecafe extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var speakerTurnHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_nu_boss_f", "Player");
        var playerTurnHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_23", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_5800_talk_24", "main_08_01", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(speakerTurnHandle);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurnHandle);
    }
}
