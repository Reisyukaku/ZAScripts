package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC54BF96F5740207E")
@:expose("CC54BF96F5740207E")
class Ev_m05_0300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var flagName:Dynamic = null;
        var enabled:Dynamic = null;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_M_BOSS_AURA_TYPE_EVENT");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-853.81), 18.13, (-408.08), (-86.23));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", untyped -855.39, 18.12, untyped -408.32, untyped -63.59);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        flagName = "flag_Ev_m05_0300";
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue(flagName);
        if (false == flagValue)
        {
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_ZYUPETTA", lua.Table.create([(-857.44), 18.12, (-408.24)]), 85.83, 354, 0, 0);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_ZYUPETTA", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_ZYUPETTA", false);
            flagName = "ef_line";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", flagName);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(flagName);
            }));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-850.63), 18.01, (-408.02), (-82.23));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", (-855.39), 18.12, (-408.32), (-63.59));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZYUPETTA", (-857.44), 21.33, (-408.24), 85.83);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_ZYUPETTA", "npc_main_friend_m", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_m", 27);
            var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-853.8), 18.13, (-407.76), 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-849.79), 22.33, (-408.51)]), lua.Table.create([(-29.61), 92.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.5, lua.Table.create([(-851.09), 21.59, (-408.45)]), lua.Table.create([(-29.61), 92.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-852.58), 19.61, (-408.46)]), lua.Table.create([(-8.79), 106.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
            var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", 76.41);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_08", "main_05_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_m");
            var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_09", "main_05_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_ZYUPETTA", true);
            main.event.ik.command.IkScriptCommand.FObj_Falling("dyn_ZYUPETTA", 3.2, 2.0, 2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-854.52), 19.66, (-408.45)]), lua.Table.create([(-15.26), 101.01, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.3, lua.Table.create([(-854.64), 19.64, (-408.8)]), lua.Table.create([(-14.29), 116.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 28);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            enabled = "BOSSOU_EFF";
            main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/m_bousou/cmn/bousou", enabled, "dyn_ZYUPETTA", "event_script");
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(enabled);
            }));
            main.event.ik.command.IkScriptCommand.PlayEffect(enabled);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_HORROR_WHOOSH3");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_10", "main_05_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_11", "main_05_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-852.12), 19.53, (-409.57)]), lua.Table.create([(-10.8), 122.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_04", "main_05_01", "npc_main_friend_m");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0300_select_03", "msg_Ev_m05_0300_select_04"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            var resetAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-854.84), 19.52, (-410.41)]), lua.Table.create([(-11.92), 147.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_ZYUPETTA", "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise", "Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "dyn_ZYUPETTA", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", (-84.59));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_ZYUPETTA", 17));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-856.61), 19.28, (-408.35)]), lua.Table.create([10.19, (-92.12), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.KillEffect(enabled);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([(-856.61), 19.28, (-408.35)]), lua.Table.create([10.19, (-92.12), 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(flagName);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.5, 2.5, 10, 4);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "surprise", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 21);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
            main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m05_0300_talk_05", "main_05_01", "npc_main_friend_m", false, true);
            main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
            main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_ZYUPETTA");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FadeEffect(flagName);
            main.event.ik.command.IkScriptCommand.PlayEffect(enabled);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_ZYUPETTA", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_ZYUPETTA", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", (-854.44), 18.12, (-409.45), (-60.42));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZYUPETTA", (-857.73), 18.12, (-407.84), 106.58);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-854.01), 18.13, (-408.65), (-98.64));
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-852.69), 19.77, (-409.52)]), lua.Table.create([(-7.56), 108.78, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-852.69), 19.48, (-409.52)]), lua.Table.create([(-7.56), 108.78, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            untyped ext.gf.audio.SoundCommand.PostEvent3DLocation("START_M_BOUSOU_AURA_FIELD", lua.Table.create([(-857.73), 18.12, (-407.84)]));
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_12", "main_05_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            var cameraVector:Dynamic = lua.Table.create([(-854.63), 19.58, (-409.28)]);
            var cameraVector2:Dynamic = lua.Table.create([(-5.89), (-144.24), 0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            var waitCamera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            waitCamera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-854.01), 18.13, (-408.65), (-98.64));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", (-854.44), 18.12, (-409.45), (-60.42));
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_m5_mega_jupe", (-857.73), 18.12, (-407.84), 106.58);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_PLAY");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            var cameraVector3:Dynamic = lua.Table.create([(-854.63), 19.58, (-409.28)]);
            var cameraVector4:Dynamic = lua.Table.create([(-5.89), (-144.24), 0.0]);
            enabled = 0;
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraVector3, cameraVector4, 40.0, enabled, cameraEase2, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            flagName = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            flagName();
        };
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.LookAtRotomPhone("Player");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_APP_DANGER");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m05_0300_talk_02", "main_05_01");
        flagName = 0;
        enabled = false;
        flagName = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_0300_select_01", "msg_Ev_m05_0300_select_02"]), 0, true, enabled));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        var waitTime:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
        waitTime(0.3);
        if (0 == flagName)
        {
            untyped this.m_resultParam = 1;
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-852.34), 19.55, (-408.21)]), lua.Table.create([(-5.27), 68.03, (-0.0)]), 30.0, 0, cameraEase3, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
            var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main_friend_m");
            enabled = "head";
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", enabled);
            var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_m", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_friend_m");
            var isFullHPAndPPAtPartyResult:Dynamic = main.event.ik.command.IkScriptCommand.IsFullHPAndPPAtParty();
            if (!lua.abi.Host.truthy(isFullHPAndPPAtPartyResult))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 28);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_06", "main_05_01", "npc_main_friend_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m"));
                var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 74);
                main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
                main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
                var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                enabled = setAnimationAction4;
                waitFObjAction(enabled);
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "battle", "npc_main_friend_m");
            var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 24);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0300_talk_07", "main_05_01", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
            var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
            enabled = "Player";
            setFacialTemplate(enabled, "serious", "Player");
            if (false == flagValue)
            {
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_ZYUPETTA", "head");
                var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_ZYUPETTA");
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "dyn_ZYUPETTA", "head");
                enabled = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_m", "dyn_ZYUPETTA");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
                var waitFObjAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var enabled3:Dynamic = enabled;
                waitFObjAction2(enabled3);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "main_m5_mega_jupe", "head");
                var setTurnToObjAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "main_m5_mega_jupe");
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "main_m5_mega_jupe", "head");
                enabled = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_friend_m", "main_m5_mega_jupe");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction4);
                var waitFObjAction3:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                var enabled4:Dynamic = enabled;
                waitFObjAction3(enabled4);
            };
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-851.38), 20.65, (-410.02)]), lua.Table.create([(-21.4), 108.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-852.49), 20.19, (-409.64)]), lua.Table.create([(-21.4), 108.89, 0.0]), 40.0, 0, cameraEase4, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 491);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var waitTime2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
            enabled = 0.3;
            waitTime2(enabled);
            if (false == flagValue)
            {
                main.event.ik.command.IkScriptCommand.BossAdventDemoPlay("dyn_ZYUPETTA", "npc_main_friend_m");
                var postEventGlobal:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
                enabled = "STOP_SS_M_BOUSOU_AURA_FIELD";
                postEventGlobal(enabled);
            }
            else
            {
                var bossAdventDemoPlay:Dynamic = untyped main.event.ik.command.IkScriptCommand.BossAdventDemoPlay;
                enabled = "main_m5_mega_jupe";
                bossAdventDemoPlay(enabled, "npc_main_friend_m");
            };
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            var resetAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            enabled = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_friend_m", 1);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction3);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(enabled);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var postEventGlobal2:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal2("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_RETURN");
            var executeBGMCommand:Dynamic = untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand;
            executeBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            if (false == flagValue)
            {
                var postEventGlobal3:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
                postEventGlobal3("STOP_SS_M_BOUSOU_AURA_FIELD");
            };
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-849.58), 18.01, (-408.8), (-46.55));
            enabled = untyped -411.62;
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", untyped -850.63, 18.12, enabled, untyped -71.67);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            var postEventGlobal4:Dynamic = untyped ext.gf.audio.SoundCommand.PostEventGlobal;
            postEventGlobal4("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        };
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
        untyped this.m_resultParam = flagName;
    }
}
