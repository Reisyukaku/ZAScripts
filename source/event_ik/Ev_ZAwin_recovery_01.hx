package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("CAB2895928A8A1DBF")
@:expose("CAB2895928A8A1DBF")
class Ev_ZAwin_recovery_01 extends main.event.ik.base.BaseZaRewardEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        this.FCA4AB983F3B7598B();
        this.F931F8A64586A46A6("msg_zs_heal_01_01");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        this.FCAA81491EE1DCCA4();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
    }
}
