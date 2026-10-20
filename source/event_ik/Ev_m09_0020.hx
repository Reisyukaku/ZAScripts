package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("CE90A20C9119F83A5")
@:expose("CE90A20C9119F83A5")
class Ev_m09_0020 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", ((lua.Table.create(([-12.38, 0.0, 8.5] : Array<Float>)))), 73.75, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", ((lua.Table.create(([-11.11, 0.02, 8.18] : Array<Float>)))), -71.51, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", ((lua.Table.create(([-11.43, 0.01, 9.01] : Array<Float>)))), -128.47, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -13.75, 0.02, 3.6, 23.59);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-14.63, 1.04, 3.03] : Array<Float>)))), ((lua.Table.create(([-5.68, -139.49, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, ((lua.Table.create(([-15.29, 1.04, 3.59] : Array<Float>)))), ((lua.Table.create(([-5.68, -139.49, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        var playerMove:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -11.92, 0.04, 7.79, 0.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_0020_NEVER_ELEVATOR");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PROPS_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-12.43, 1.77, 10.18] : Array<Float>)))), ((lua.Table.create(([-17.71, -22.48, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_01", "main_09_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMove);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-12.43, 1.25, 7.8] : Array<Float>)))), ((lua.Table.create(([2.08, -124.49, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_02", "main_09_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_03", "main_09_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_04", "main_09_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", true);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02_WEAK");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-12.01, 1.32, 8.96] : Array<Float>)))), ((lua.Table.create(([10.06, 27.1, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.4, ((lua.Table.create(([-11.76, 1.12, 9.32] : Array<Float>)))), ((lua.Table.create(([10.06, 27.1, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_05", "main_09_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -11.9, 0.03, 7.76, 0.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-11.69, 0.9, 5.23] : Array<Float>)))), ((lua.Table.create(([9.79, -179.8, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, ((lua.Table.create(([-11.69, 0.45, 4.17] : Array<Float>)))), ((lua.Table.create(([9.79, -179.8, -0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 0.52);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", 0.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 2.73);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", -9.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_06", "main_09_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_07", "main_09_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -11.5, 0.02, 8.99, 0.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -10.79, 0.02, 8.35, -9.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M09_0020_HOTEL_Z_EV_CL");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-12.07, 1.54, 10.4] : Array<Float>)))), ((lua.Table.create(([-9.8, -10.65, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_08", "main_09_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_f", -11.5, 0.02, 11.16, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -12.39, 0.0, 10.76, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -10.79, 0.02, 10.09, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -11.9, 0.02, 10.81, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_OP");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_0020_talk_09", "main_09_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
