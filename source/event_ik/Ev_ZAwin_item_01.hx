package event_ik;

import main.event.ik.command.IkScriptCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CF8300C2E4A37355F")
@:expose("CF8300C2E4A37355F")
class Ev_ZAwin_item_01 extends main.event.ik.base.BaseZaRewardEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        this.FCA4AB983F3B7598B();
        var item = FEFE8984381B69CBF();
        IkScriptCommand.WordSet_Name_Item(2, item.itemID, item.num);
        this.F931F8A64586A46A6("msg_zs_item_01_01");
        this.FCAA81491EE1DCCA4();
        this.F9C97BCCE62EFD700(item);
    }
}
