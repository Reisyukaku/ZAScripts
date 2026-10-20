package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C10FB32A291C9C1B0")
@:expose("C10FB32A291C9C1B0")
class Ev_m02_1010 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.01, 0.02, 5.45, -177.72);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_t1_i006_02", -3.93, 0.0, 1.75, 2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([3.83, 1.74, -0.8] : Array<Float>)))), ((lua.Table.create(([-10.73, 137.18, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        var playerMove:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -0.01, 0.02, 4.16, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMove);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_t1_i006_02", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -1.83, 0.01, 3.2, -119.58);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-2.86, 1.58, 4.01] : Array<Float>)))), ((lua.Table.create(([-10.08, 14.45, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.6, ((lua.Table.create(([-2.93, 1.52, 3.73] : Array<Float>)))), ((lua.Table.create(([-10.08, 14.45, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        var playerMove2:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -3.06, 0.01, 2.36, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_t1_i006_02", 57.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_t1_i006_02", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMove2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1020_talk_01", "main_02_01", "npc_main_t1_i006_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1020_talk_02", "main_02_01", "npc_main_t1_i006_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_t1_i006_02", "surprise_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1020_talk_03", "main_02_01", "npc_main_t1_i006_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_t1_i006_02", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_t1_i006_02");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_t1_i006_02", 157.988);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 154.988);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-4.11, 1.28, 3.13] : Array<Float>)))), ((lua.Table.create(([0.47, -31.05, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, ((lua.Table.create(([-4.33, 1.28, 3.5] : Array<Float>)))), ((lua.Table.create(([0.47, -31.05, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
    }
}
