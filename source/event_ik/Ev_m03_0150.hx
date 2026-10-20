package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC1B970B6586C20DB")
@:expose("CC1B970B6586C20DB")
class Ev_m03_0150 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_detective"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", -445.86, 0.28, -164.33, 175.77);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -443.81, 0.29, -169.6, -16.08);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -442.83, 0.28, -168.32, -59.68);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_DENRYUU_MEGA", lua.Table.create([-443.91, 0.28, -166.96]), -179.58, 181, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-446.07, 1.34, -166.61]), lua.Table.create([-23.56, -109.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-445.27, 2.23, -168.16]), lua.Table.create([-23.56, -135.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_DENRYUU_MEGA", 108);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_0130_talk_07", "main_03_01", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-444.64, 1.8, -168.82]), lua.Table.create([-11.09, -159.75, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-445.06, 1.8, -168.66]), lua.Table.create([-11.09, -159.75, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_detective", -444.88, 0.28, -167.26, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_08", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -443.81, 0.29, -169.6, -22.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -442.76, 0.28, -168.36, -59.68);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-444.33, 1.77, -171.16]), lua.Table.create([-10.2, -170.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_09", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_10", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -444.44, 0.29, -169.6, -0.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -443.44, 0.28, -168.77, -46.18);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-445.58, 1.77, -169.43]), lua.Table.create([-10.37, -94.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", -125.18));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_11", "main_03_01", "npc_main_rival_m");
        var menuLabels:Dynamic = (["msg_Ev_m03_0130_select_01", "msg_Ev_m03_0130_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, false, false);
        if (((0 == selection)))
        {
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_12", "main_03_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            waitFObjAction(setAnimationAction2);
        }
        else
        {
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_13", "main_03_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var waitFObjAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            waitFObjAction2(setAnimationAction3);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -443.81, 0.29, -169.6, -22.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -442.76, 0.28, -168.36, -144.68);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-444.33, 1.77, -171.16]), lua.Table.create([-10.2, -170.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", -59.68);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_14", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -444.44, 0.29, -169.6, -0.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -443.44, 0.28, -168.77, -46.18);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-445.09, 1.72, -168.12]), lua.Table.create([-3.63, -165.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Facial("npc_main_detective", 355, 451, 404);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_15", "main_03_01", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_16", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_03_01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -443.44, 0.28, -168.77, -37.14);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-443.34, 1.38, -170.05]), lua.Table.create([2.37, 172.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([-443.62, 1.38, -170.09]), lua.Table.create([2.37, 172.44, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0130_talk_17", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 18));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-445.02, 1.69, -168.83]), lua.Table.create([-3.02, -46.24, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_ENTRY_ZA");
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0150_sys_01", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0150_sys_02", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0150_sys_03", "main_03_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m03_0150_sys_04", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        main.event.ik.command.IkScriptCommand.OpenAnyMenu(6);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-443.76, 1.68, -167.5]), lua.Table.create([-5.63, 16.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-443.38, 1.68, -167.62]), lua.Table.create([-5.63, 16.45, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0150_talk_04", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0150_talk_05", "main_03_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-444.94, 1.73, -168.15]), lua.Table.create([-3.63, -174.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0150_talk_06", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -443.81, 0.29, -169.6, -22.58);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -442.71, 0.28, -168.37, -144.68);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-444.33, 1.77, -171.16]), lua.Table.create([-10.2, -170.27, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 29));
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("main_03_02");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
    }
}
