package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDB78EAD8EC362168")
@:expose("CDB78EAD8EC362168")
class Ev_m10_0010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("START_SS_AWAKE_ALARM_LP");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m10_0010_sys_01", "main_10_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m10_0010_sys_02", "main_10_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_AWAKE_ALARM_LP");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 4.62, 0.01, 0.68, -23.64);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.65, 0.84, 1.44]), lua.Table.create([8.18, -59.88, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 196);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.9);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_STAY_RESET");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_OFF");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1.86, 0.02, 1.41, -45.76);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.85, 1.57, -0.56]), lua.Table.create([-7.59, 134.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("Player"));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.8);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ResetToFieldCamera(1.0);
        main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera();
    }
}
