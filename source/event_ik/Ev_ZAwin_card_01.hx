package event_ik;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;

@:keep
@:chunk("event_ik")
@:hashAbi("CE14F30493C66CE44")
@:expose("CE14F30493C66CE44")
class Ev_ZAwin_card_01 extends main.event.ik.base.BaseZaRewardEvent
{
    @:hashAbi("S15D476DBF29BBC4F")
    public static var FILE_NAME:String = "hud_ryl";

    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        FCA4AB983F3B7598B();
        F931F8A64586A46A6("msg_zs_card_01_01");
        FCAA81491EE1DCCA4(true);
        var cardID = FB990C212EC51628E();
        if (IkScriptCommand.S7E0B89E16EFD2224(cardID) == false)
        {
            var resource = TextResourceManager.GetTextResourcePath("common/" + Std.string(FILE_NAME));
            TextResourceManager.LoadTextResource(resource);
            Await(function():Bool
            {
                return TextResourceManager.IsCompleteLoadingTextResource(resource);
            });
            var selection:Int = IkScriptCommand.OpenChoiceCardMenu(true);
            TextResourceManager.UnloadTextResource(resource);
            if (selection >= 0 && selection < 3)
            {
                IkScriptCommand.S7E0B89E16EFD2224(cardID);
            }
        }
        IkScriptCommand.Wait_FObj_Action();
    }
}
