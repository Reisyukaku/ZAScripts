package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC94BFE5FF335E5AF")
@:expose("CC94BFE5FF335E5AF")
class Ev_m05_2420 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([21.35, 7.13, -262.95]), lua.Table.create([-22.48, -149.77, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2420_talk_01", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
