package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C56FA21C8570B15AF")
@:expose("C56FA21C8570B15AF")
class Ev_m03_2400 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_friend_f", "main_hitodeman"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_f", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -608.01, 0.16, -777.23, -107.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -615.98, 0.15, -780.29, 68.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_hitodeman", -616.83, 0.15, -777.91, 86.03);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -611.13, 0.16, -777.81, 1.0);
        var moveHandle2 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_f", -612.97, 0.15, -779.1, 1.0);
        var moveHandle3 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("main_hitodeman", -613.53, 0.15, -777.78, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-606.65, 3.48, -781.04]), lua.Table.create([-24.91, 116.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-609.37, 1.5, -778.4]), lua.Table.create([-7.48, 94.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_01", "main_03_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-612.09, 1.67, -778.96]), lua.Table.create([-4.98, 94.34, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_02", "main_03_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_03", "main_03_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-611.77, 1.56, -778.55]), lua.Table.create([-2.6, -146.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_small", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_ENTRY_ZA");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_2400_sys_01", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_2400_sys_02", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_2400_sys_03", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_2400_sys_04", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        main.event.ik.command.IkScriptCommand.OpenAnyMenu(6);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-609.37, 1.5, -778.4]), lua.Table.create([-7.71, 94.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_friend_f", 32, null, 4.01);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_04", "main_03_01", "npc_main_friend_f");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_06", "main_03_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_friend_f", lua.Table.create([-606.47, 0.31, -783.67]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-606.47, 0.31, -783.67]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-603.08, 1.7, -783.62]), lua.Table.create([-12.07, 102.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -160.52);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_07", "main_03_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_08", "main_03_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2300");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-607.09, 4.51, -779.2]), lua.Table.create([-39.18, 98.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
        var turnHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -100.52);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 29);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_2400_talk_05", "main_03_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_f"));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_f", -608.6, 0.15, -772.94, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-606.93, 4.51, -778.13]), lua.Table.create([-39.18, 98.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_hitodeman", 46.1));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("main_hitodeman", -608.07, 0.15, -772.54, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 75.9);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
    }
}
