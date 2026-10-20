package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C0442C115619EF675")
@:expose("C0442C115619EF675")
class Ev_m06_0010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.PostEvent2DWithEnd("PLAY_ME_IK_M_KAIFUKU_BED");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("START_SS_AWAKE_ALARM_LP");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_0010_sys_01", "main_06_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m06_0010_sys_02", "main_06_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("STOP_SS_AWAKE_ALARM_LP");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 4.62, 0.01, 0.68, -23.64);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.65, 0.84, 1.44]), lua.Table.create([8.18, -59.88, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 196);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.9);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_STAY_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
