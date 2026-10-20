package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C7DA1ED73D2D718A5")
@:expose("C7DA1ED73D2D718A5")
class Ev_m01_0200 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m01_0200_sys_01", "main_01_01");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_ROOM_UNLOCK01");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m01_0200_sys_02", "main_01_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_ROOM_OP");
    }
}
