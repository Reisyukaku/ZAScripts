package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCEC8841AA2F6354B")
@:expose("CCEC8841AA2F6354B")
class Ev_m07_4820 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-662.96, 0.0, -876.14]), -144.5, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([-661.07, 0.02, -876.88]), -100.5, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-663.02, 0.01, -875.31]), -158.0, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_pa_leader", lua.Table.create([-666.21, 0.02, -881.33]), 35.5, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_pa_member_m_01", lua.Table.create([-666.93, 0.02, -880.67]), 36.5, "npc_pa_member_m_01");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_pa_member_f_03", lua.Table.create([-665.35, 0.02, -879.82]), 35.0, "npc_pa_member_f_03");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -664.0, 0.03, -877.94, -142.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_pa_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_pa_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_pa_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pa_member_f_03", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pa_member_f_03", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 203);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_m", 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_pa_member_f_03", 491);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_f", 2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-659.69, 2.37, -874.93]), lua.Table.create([-12.87, 54.86, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-659.69, 1.91, -874.93]), lua.Table.create([-12.87, 54.86, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pa_member_f_03", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-665.43, 1.62, -880.29]), lua.Table.create([-4.4, 37.37, -0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pa_member_m_01", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pa_member_f_03", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_pa_leader", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4820_talk_01", "main_07_01", "dyn_main_pa_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_pa_leader", 32, null, 3.6);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4820_talk_04", "main_07_01", "dyn_main_pa_leader");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4820_select_01", "msg_Ev_m07_4820_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        if (((0 == (selection : Dynamic))))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_leader", "rejoice_small", "npc_main_pa_leader");
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_pa_leader", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4820_talk_05", "main_07_01", "dyn_main_pa_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_pa_leader", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
            main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
            var waitFObjAction:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            untyped waitFObjAction(setAnimationAction4);
        }
        else
        {
            if (((1 == (selection : Dynamic))))
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_leader", "sad", "npc_main_pa_leader");
                var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_pa_leader", 19);
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4820_talk_06", "main_07_01", "dyn_main_pa_leader");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var waitFObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                untyped waitFObjAction2(setAnimationAction5);
            }
            else
            {
            };
        };
        untyped this.m_resultParam = selection;
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_leader", "normal", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pa_member_m_01", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-664.93, 1.3, -879.56]), lua.Table.create([4.14, 51.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_pa_leader", "npc_pa_member_m_01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pa_member_m_01", -666.64, 0.02, -880.27, 0.8);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4820_talk_02", "main_07_01", "dyn_main_pa_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pa_member_m_01", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4820_talk_03", "main_07_01", "npc_pa_member_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
