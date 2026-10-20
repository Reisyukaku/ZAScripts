package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("C9692905FD6D556BB")
@:expose("C9692905FD6D556BB")
class Ev_m05_2200 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", ((lua.Table.create(([29.17, -0.24, -102.31] : Array<Float>)))), 145.06, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", ((lua.Table.create(([30.74, -0.24, -102.02] : Array<Float>)))), -158.95, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.08, -0.22, -100.54, 168.06);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([29.92, 1.0, -101.01] : Array<Float>)))), ((lua.Table.create(([0.0, -0.95, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2200_CAMERAWHOOSH");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, ((lua.Table.create(([29.88, 1.0, -98.59] : Array<Float>)))), ((lua.Table.create(([0.0, -0.95, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_detective", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_01", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_ju_boss", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_small_mc");
        var juBossAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_02", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_03", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(juBossAnimation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_15", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_17", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
    }
}
