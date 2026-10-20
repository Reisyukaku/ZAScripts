package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6B720F73C84B6A80")
@:expose("C6B720F73C84B6A80")
class Ev_m01_0012 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        cppbindings.C56DE81E7.fC88AB2B8(15);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M6DB_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TRAIN_DOOR_OPEN");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m01_0011_sys_01", "main_01_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1977.91, 1.04, -18.38, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1977.87, 2.36, -14.38]), lua.Table.create([-2.18, -0.22, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.EnableDirectionalMain(0.85, -0.51);
        main.event.ik.command.IkScriptCommand.EnableShadowTransform(0.85, -0.51);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_EXC_BGM_01");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 1977.91, 1.01, -13.21, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([1977.86, 2.47, -11.46]), lua.Table.create([-2.18, -0.22, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([1979.83, 2.52, -13.2]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1975.74, 2.57, -13.21]), lua.Table.create([-5.62, -90.0, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([1976.2, 2.52, -13.21]), lua.Table.create([-5.62, -90.0, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 90.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.ResetToFieldCamera(1.0);
        main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera();
    }
}
