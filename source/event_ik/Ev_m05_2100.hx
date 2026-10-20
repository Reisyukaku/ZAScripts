package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C9DF5AB5FDAA7EFA6")
@:expose("C9DF5AB5FDAA7EFA6")
class Ev_m05_2100 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", ((lua.Table.create(([1.23, 0.86, 10.01] : Array<Float>)))), -54.48, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", ((lua.Table.create(([0.78, 0.86, 9.19] : Array<Float>)))), -34.88, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.34, 0.88, 10.82, 141.82);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-2.38, 1.1, -18.87] : Array<Float>)))), ((lua.Table.create(([-3.27, -35.41, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.7, ((lua.Table.create(([-4.22, 1.1, -20.18] : Array<Float>)))), ((lua.Table.create(([-3.27, -35.41, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([0.08, 2.1, -9.72] : Array<Float>)))), ((lua.Table.create(([-0.36, 0.17, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(20));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.4, ((lua.Table.create(([0.14, 2.13, 12.95] : Array<Float>)))), ((lua.Table.create(([-0.36, 0.17, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(20));
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2100_CAMERA_WHOOSH13");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2100_talk_01", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2100_talk_02", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", 16.62);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2100_talk_03", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2100_talk_04", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        var juBossAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 20);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2100_MUSCLE_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2100_talk_05", "main_05_01", "dyn_main_ju_boss", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(juBossAnimation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 0.3, -0.19, -35.02, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 1.12, 0.86, 10.05, -74.48);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.6, 0.88, 10.66, 110.82);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-1.66, 2.41, 12.46] : Array<Float>)))), ((lua.Table.create(([-11.69, -39.55, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(21));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2100_talk_06", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2100_talk_07", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2100_talk_08", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", false);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", -0.72, -0.24, -8.65, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
