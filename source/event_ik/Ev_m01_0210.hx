package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C7D9EE773D2D4D89C")
@:expose("C7D9EE773D2D4D89C")
class Ev_m01_0210 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.19, 0.01, 3.83, 154.16));
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_ROOM_CL");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([1.02, 1.41, 0.18] : Array<Float>)))), ((lua.Table.create(([-7.39, 166.87, 0.0] : Array<Float>)))), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var playerMove:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 0.34, 0.01, 2.53, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", ((lua.Table.create(([0.93, 1.65, -1.19] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMove);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-0.99, 1.97, 3.67] : Array<Float>)))), ((lua.Table.create(([-9.38, -38.62, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, ((lua.Table.create(([-0.39, 1.97, 4.15] : Array<Float>)))), ((lua.Table.create(([-9.38, -38.62, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", ((lua.Table.create(([3.78, 1.65, 0.94] : Array<Float>)))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.9);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
    }
}
