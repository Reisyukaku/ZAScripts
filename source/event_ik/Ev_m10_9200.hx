package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C224ADB121780DBFE")
@:expose("C224ADB121780DBFE")
class Ev_m10_9200 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_ZERUNEASU", ((lua.Table.create(([-825.56, -5.47, -592.71] : Array<Float>)))), -118.54, 716, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Force("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -844.89, -5.72, -605.77, -173.11);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-842.22, -1.68, -600.02] : Array<Float>)))), ((lua.Table.create(([-37.06, 38.39, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, ((lua.Table.create(([-841.92, -1.68, -602.11] : Array<Float>)))), ((lua.Table.create(([-37.06, 38.39, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-843.15, -4.1, -602.47] : Array<Float>)))), ((lua.Table.create(([-1.49, 27.72, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3), 1);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, ((lua.Table.create(([-846.89, -4.1, -602.65] : Array<Float>)))), ((lua.Table.create(([-1.62, -33.39, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3), 1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 27);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        var playerAnimationReset:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-838.38, -1.1, -600.44] : Array<Float>)))), ((lua.Table.create(([-24.12, 51.04, 0.01] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var zeruneasuPosition:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZERUNEASU", -836.68, -5.6, -601.51, -95.54);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimationReset);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(zeruneasuPosition);
        var zeruneasuAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_ZERUNEASU", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        var playerTurn:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 76.78);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-844.21, -4.19, -604.99] : Array<Float>)))), ((lua.Table.create(([-10.56, 43.32, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(zeruneasuAnimation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurn);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.9);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_ZERUNEASU"));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZERUNEASU", -824.87, -5.47, -592.03, -118.54);
        var zeruneasuMove:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_ZERUNEASU", -829.44, -5.51, -595.11, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-828.62, -3.43, -592.18] : Array<Float>)))), ((lua.Table.create(([-23.51, -80.09, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -844.89, -5.72, -605.77, 65.28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.6, ((lua.Table.create(([-828.61, -3.43, -593.11] : Array<Float>)))), ((lua.Table.create(([-23.51, -80.09, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-827.13, -0.55, -598.09] : Array<Float>)))), ((lua.Table.create(([-41.87, -164.85, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.6, ((lua.Table.create(([-829.03, -0.55, -597.95] : Array<Float>)))), ((lua.Table.create(([-41.87, -164.85, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-832.64, -4.61, -595.34] : Array<Float>)))), ((lua.Table.create(([1.49, -93.26, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.6, ((lua.Table.create(([-831.59, -3.5, -596.04] : Array<Float>)))), ((lua.Table.create(([1.04, -107.0, 10.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(zeruneasuMove);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, ((lua.Table.create(([-833.61, -4.27, -596.67] : Array<Float>)))), ((lua.Table.create(([6.06, -107.01, 10.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-849.33, -4.1, -606.14] : Array<Float>)))), ((lua.Table.create(([-5.44, -106.18, 0.0] : Array<Float>)))), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.5, ((lua.Table.create(([-849.33, -4.44, -606.14] : Array<Float>)))), ((lua.Table.create(([-5.44, -106.18, 0.0] : Array<Float>)))), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
