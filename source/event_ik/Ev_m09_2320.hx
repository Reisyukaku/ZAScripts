package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C79F6CFB7B9883286")
@:expose("C79F6CFB7B9883286")
class Ev_m09_2320 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang_with_Reset("Player", -486.19, 19.2, -353.82, 90.0);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_co_boss", ((lua.Table.create(([-487.01, 17.94, -353.75] : Array<Float>)))), 90.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_co_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_co_boss", 200);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_co_boss", -487.01, 18.03, -353.75, 90.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_co_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-488.22, 20.65, -352.45] : Array<Float>)))), ((lua.Table.create(([-7.45, -65.27, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -484.66, 19.2, -353.82, 1.0));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var playerTurn:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -90.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_co_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-482.93, 19.87, -353.12] : Array<Float>)))), ((lua.Table.create(([-8.37, 69.11, 0.02] : Array<Float>)))), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, ((lua.Table.create(([-483.07, 19.87, -352.74] : Array<Float>)))), ((lua.Table.create(([-8.37, 69.11, 0.02] : Array<Float>)))), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerTurn);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-485.32, 19.61, -353.19] : Array<Float>)))), ((lua.Table.create(([-8.37, 69.11, 0.02] : Array<Float>)))), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2320_talk_01", "main_09_01", "dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("dyn_main_co_boss");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MAFIA_FALL");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(4.5);
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, ((lua.Table.create(([-483.09, 20.96, -349.45] : Array<Float>)))), ((lua.Table.create(([-12.73, 30.14, 0.02] : Array<Float>)))), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 60.0));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -484.66, 19.2, -353.82, 90.0));
    }
}
