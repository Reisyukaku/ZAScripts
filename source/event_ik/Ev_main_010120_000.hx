package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE9EF1EDCFF6380E1")
@:expose("CE9EF1EDCFF6380E1")
class Ev_main_010120_000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_yancham2", -716.8111, 0.01, -840.713, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
    }
}
