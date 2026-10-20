package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7F9712BF509233DD")
@:expose("C7F9712BF509233DD")
class Ev_m03_3009 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    public function new()
    {
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_3009_talk_01", "main_03_01", null);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
