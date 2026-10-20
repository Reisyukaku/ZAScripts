package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C889CC01A7AF85281")
@:expose("C889CC01A7AF85281")
class Ev_m07_4000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m", "main_m7_mega_yuki"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_MUTE_T2000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -480.61, 17.24, -872.85, 109.72);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -482.92, 17.23, -869.55, 107.84);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m7_mega_yuki", untyped -473.25, 17.24, untyped -875.22, untyped -93.41);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4000");
        if ((false == getFlagValueResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-476.23, 18.15, -873.98]), lua.Table.create([-3.52, -67.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-475.52, 18.1, -874.27]), lua.Table.create([-3.52, -67.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_friend_m", -480.74, 17.23, -871.93, 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-483.26, 18.65, -870.12]), lua.Table.create([-4.0, -63.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-483.26, 18.46, -870.12]), lua.Table.create([-4.0, -63.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4000_talk_10", "main_07_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m7_mega_yuki", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "main_m7_mega_yuki", "head");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-476.5, 18.31, -873.14]), lua.Table.create([-3.73, -57.42, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -480.74, 17.23, -871.93, 165.84);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-475.46, 17.54, -872.09]), lua.Table.create([7.7, -35.03, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4000_talk_11", "main_07_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-482.42, 18.53, -870.9]), lua.Table.create([-2.66, -50.01, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 9.72);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 25);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4000_talk_12", "main_07_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
            var sceneVector:Dynamic = lua.Table.create([-481.46, 18.65, -871.75]);
            var sceneVector2:Dynamic = lua.Table.create([-3.71, -44.82, -0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, sceneVector, sceneVector2, 30.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -480.61, 17.23, -872.85, 109.71);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -480.74, 17.23, -871.93, 90.37);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m7_mega_yuki", -473.25, 17.24, -875.22, -93.41);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            var sceneVector3:Dynamic = lua.Table.create([-479.3, 18.64, -872.36]);
            var sceneVector4:Dynamic = lua.Table.create([-2.64, 61.86, -0.0]);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, sceneVector3, sceneVector4, 30.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m07_4000_talk_01", "main_07_01");
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_4000_select_01", "msg_Ev_m07_4000_select_02"]), 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        var fObj_LookAt_End:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End;
        fObj_LookAt_End("Player");
        if ((0 == menuSelection))
        {
            untyped this.m_resultParam = 1;
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-481.65, 18.61, -874.06]), lua.Table.create([-4.02, -148.09, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
            var getFlagValueResult2:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4000");
            if ((false == getFlagValueResult2))
            {
                var wait_Time:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
                wait_Time(0.3);
            }
            else
            {
                var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_friend_m");
                var fObj_Set_Turn_To_ObjResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_m", "Player");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult2);
                var waitTurnsAndSetAnimation:Dynamic = untyped main.event.ik.command.IkScriptCommand.S522136910C73A819;
                waitTurnsAndSetAnimation("npc_main_friend_m");
            };
            var isFullHPAndPPAtPartyResult:Dynamic = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
            if ((!lua.abi.Host.truthy(isFullHPAndPPAtPartyResult)))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4000_talk_13", "main_07_01", "npc_main_friend_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
                var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 74);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                wait_FObj_Action(animationAction2);
            }
            else
            {
            };
            var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 24);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4000_talk_14", "main_07_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "serious", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m7_mega_yuki", "head");
            var fObj_Set_TurnResult2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 109.72);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "main_m7_mega_yuki", "head");
            var fObj_Set_TurnResult3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", 90.34);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult3);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-482.87, 19.11, -871.51]), lua.Table.create([-9.1, -68.74, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-482.87, 18.72, -871.51]), lua.Table.create([-9.1, -68.74, -0.0]), 25.0, 0, cameraEase3);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 491);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_m7_mega_yuki", -69.91);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.BossAdventDemoPlay("main_m7_mega_yuki", "npc_main_friend_m");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            var fObj_Reset_AnimationResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            var fObj_Set_Animation_ImmediatelyResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_m", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Reset_AnimationResult);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Animation_ImmediatelyResult);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -480.89, 17.26, -867.53, 150.96);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", untyped -478.76, 17.23, untyped -866.63, 148.9);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        };
        untyped this.m_resultParam = menuSelection;
    }
}
