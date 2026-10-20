package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC6363AAB850DC008")
@:expose("CC6363AAB850DC008")
class Ev_m02_2042 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m02_2042");
        if (((false == flagValue)))
        {
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -726.59, 0.01, -850.22, 121.94);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -725.37, 0.01, -850.59, -81.17);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-725.57, 1.47, -850.12]), lua.Table.create([-3.04, 84.8, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("id_npc_trainer_Zrank_003", lua.Table.create([-740.58, 0.15, -873.27]), -131.0, "npc_backpacker_m_00");
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DEV_HORUBII", lua.Table.create([-740.53, 0.16, -874.68]), -99.17, 659, 0, 0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2042_talk_01", "main_02_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-724.22, 1.54, -850.07]), lua.Table.create([-10.46, 74.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2042_talk_02", "main_02_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.OpenTips("tips_2210");
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2042_talk_03", "main_02_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-722.69, 1.75, -849.1]), lua.Table.create([-8.14, 48.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "id_npc_trainer_Zrank_003", "head");
            var setTurnToObjLookAtAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_friend_f", "id_npc_trainer_Zrank_003");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "id_npc_trainer_Zrank_003", "head");
            var setTurnToObjLookAtAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "id_npc_trainer_Zrank_003");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2042_talk_05", "main_02_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjLookAtAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjLookAtAction2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-736.21, 3.21, -870.97]), lua.Table.create([-24.26, 57.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var setPosAngAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -725.32, 0.01, -850.58, -148.49);
            var setPosAngAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -726.59, 0.01, -850.22, -140.43);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setPosAngAction2);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-737.29, 2.64, -871.65]), lua.Table.create([-24.26, 57.95, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DEV_HORUBII", 27);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("id_npc_trainer_Zrank_003", 27);
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2042_talk_06", "main_02_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
            var setTurnToObjLookAtAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            var setTurnToObjLookAtAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_friend_f", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjLookAtAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjLookAtAction4);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_f");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
            var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2042_talk_04", "main_02_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
            var setFacialTemplate:Dynamic = main.event.ik.command.IkScriptCommand.SetFacialTemplate;
            untyped setFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        };
    }
}
