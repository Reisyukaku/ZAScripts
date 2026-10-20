package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC6363DAB850DC521")
@:expose("CC6363DAB850DC521")
class Ev_m02_2041 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        var playerTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var rivalTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_rival_m", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurn);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        var partyIsHealthy = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
        if (((!lua.abi.Host.truthy(partyIsHealthy))))
        {
            var explanationAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2041_talk_01", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(explanationAnimation);
            var recoveryAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
            main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(recoveryAnimation);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var goodbyeAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_025400_020_talk_08", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(goodbyeAnimation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
    }
}
