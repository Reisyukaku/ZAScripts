package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB7896DF077A8825A")
@:expose("CB7896DF077A8825A")
class Ev_main_010110_000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.15);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-762.98, 2.84, -848.44]), lua.Table.create([-4.63, -37.22, 0.0]), 50.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos("Player", -760.26, 0.01, -855.21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.05);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_yancham", -739.08, 0.01, -868.27, 2.0);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.15);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_main_010000_000_talk_27", "main_01_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.15);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -760.26, 0.01, -855.21, 128.702);
    }
}
