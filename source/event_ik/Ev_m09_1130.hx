package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3D00E1C023B7A21A")
@:expose("C3D00E1C023B7A21A")
class Ev_m09_1130 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M24DB_T1000");
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -478.75, 15.31, -635.17, 4.62);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_secretary", lua.Table.create([-477.69, 15.3, -635.15]), -26.77, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-477.17, 15.3, -636.34]), -21.01, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-479.24, 15.3, -636.11]), 4.53, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WordSet_Name_Player(0);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Rival(1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-478.31, 21.54, -620.74]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_secretary", lua.Table.create([-478.31, 21.54, -620.74]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_friend_m", lua.Table.create([-478.31, 21.54, -620.74]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_friend_f", lua.Table.create([-478.31, 21.54, -620.74]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_secretary", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "serious");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-477.9, 15.47, -637.86]), lua.Table.create([32.33, 170.88, 0.0]), 46.05, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-477.86, 15.3, -638.13]), lua.Table.create([32.33, 170.88, 0.0]), 46.05, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_DEMO");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_EXC_BGM_07_SUS");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1130_talk_01", "main_09_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1130_talk_02", "main_09_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -477.69, 15.3, -635.94, -2.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -479.19, 15.3, -636.15, 19.03);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-476.99, 17.22, -634.31]), lua.Table.create([-17.79, 43.18, (-0.0)]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", 63.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 87.62);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", -45.01);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_secretary", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_secretary", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_secretary", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1130_talk_03", "main_09_01", "dyn_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-475.43, 16.65, -634.07]), lua.Table.create([-8.32, 52.05, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_secretary", -473.04, 15.3, -634.97, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_secretary", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", -478.82, 15.3, -636.15, 63.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", -477.69, 15.3, -635.95, -7.51);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -478.77, 15.31, -634.99, 117.35);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-477.56, 16.98, -637.31]), lua.Table.create([-13.45, 151.66, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_f", 15.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 157.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", -45.01);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1130_talk_20", "main_09_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_1130_talk_21", "main_09_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-478.89, 17.0, -636.23]), lua.Table.create([-13.49, -171.52, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-479.33, 17.0, -636.16]), lua.Table.create([-13.49, -171.52, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -2.4);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
