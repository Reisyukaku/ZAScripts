package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;
import main.event.ik.command.IkScriptCommand.EaseCameraType;
import cppbindings.Vector3Values as Vector3;

@:keep
@:chunk("event_ik")
@:hashAbi("CBC2F526F51F69981")
@:expose("CBC2F526F51F69981")
class Ev_m05_0020 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", ((lua.Table.create(([-9.88, 0.04, 3.99] : Array<Float>)))), -16.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -12.12, 0.01, 7.0, 12.787);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var friendMove:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_f", -11.09, 0.04, 6.93, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, ((lua.Table.create(([-12.7, 1.52, 4.2] : Array<Float>)))), ((lua.Table.create(([-7.33, -159.55, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, ((lua.Table.create(([-12.49, 1.45, 4.77] : Array<Float>)))), ((lua.Table.create(([-7.33, -159.55, 0.0] : Array<Float>)))), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(3));
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_ROOM_CL");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0020_talk_01", "main_05_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "rejoice_small", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0020_talk_02", "main_05_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var playerAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendMove);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -12.12, 0.01, 9.85, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_f", -11.24, 0.04, 9.82, 1.0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_Z_EV_OP");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
