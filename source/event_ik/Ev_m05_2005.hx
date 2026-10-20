package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CA70BE95FDFEC588A")
@:expose("CA70BE95FDFEC588A")
class Ev_m05_2005 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_detective", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_detective");
        var partyHasMove:Dynamic = main.event.ik.command.IkScriptCommand.S4234B2C745A21F42(58);
        if (lua.abi.Host.truthy(partyHasMove))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_03", "main_05_01", "npc_main_detective");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_04", "main_05_01", "npc_main_detective");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_01", "main_05_01", "npc_main_detective");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
    }
}
