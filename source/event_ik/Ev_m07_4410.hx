package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAC85661A8FAA6304")
@:expose("CAC85661A8FAA6304")
class Ev_m07_4410 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-844.78, 10.25, -326.78]), 132.54, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_holo_pa_boss", lua.Table.create([-843.85, 10.25, -327.93]), -12.96, "npc_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -844.05, 10.26, -327.39, 22.17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara01", ("holo_disapp" : Dynamic));
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("holo_disapp" : Dynamic));
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -843.85, 11.25, -327.93);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -12.96, 0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay(-844.05, 10.26, -327.39, 22.17);
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_HUSIGIBANAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -844.05, 10.26, -327.39, -19.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-844.2, 11.69, -329.0]), lua.Table.create([-4.88, 175.64, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4410_talk_04", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "lose", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4410_talk_05", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-843.82, 11.84, -326.19]), lua.Table.create([-7.28, 13.28, 0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([-843.67, 11.84, -326.19]), lua.Table.create([-7.28, 13.28, 0.0]), 20.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4410_talk_06", "main_07_01", "dyn_main_holo_pa_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "rejoice_small", "npc_main_pa_boss");
        var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4410_talk_07", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-842.94, 11.67, -325.32]), lua.Table.create([-3.67, 18.23, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_DISAPPEAR");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -843.85, 11.25, -327.93);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -12.96, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "normal", "npc_main_pa_boss");
        var fObj_Set_Pos_AngResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_holo_pa_boss", -843.54, 10.25, -328.82, -20.96);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious", "npc_main_rival_m");
        var fObj_Set_TurnResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 163.9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_holo_pa_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Pos_AngResult);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_TurnResult);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_APPEAR");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_holo_pa_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -843.54, 11.25, -328.82);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -20.96, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_holo_pa_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.45);
        var animationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4410_talk_08", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction3);
        var animationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 23);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4410_talk_09", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4410_talk_10", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-842.61, 11.41, -325.32]), lua.Table.create([-3.98, 33.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_holo_pa_boss", "sad", "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_holo_pa_boss", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4410_talk_11", "main_07_01", "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(7, "msg_Ev_m07_4410_talk_12", ("main_07_01" : Dynamic), "dyn_main_holo_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOLO_RICH_HUMAN_DISAPPEAR");
        var isSetUpEffectResult:Dynamic = main.event.ik.command.IkScriptCommand.IsSetUpEffect((("holo_disapp" : Dynamic) : Dynamic));
        if (!lua.abi.Host.truthy(isSetUpEffectResult))
        {
            main.event.ik.command.IkScriptCommand.CreateEffect("field/event/holo_disapp/holo_disapp_chara01", ("holo_disapp" : Dynamic));
            var scenario:Dynamic = this;
            var await:Dynamic = untyped this.F903489488FB9BA8D;
            var sceneCallback:Dynamic = function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(("holo_disapp" : Dynamic));
            };
            await(scenario, sceneCallback);
        }
        else
        {
        };
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(("holo_disapp" : Dynamic), -843.54, 11.25, -328.82);
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(("holo_disapp" : Dynamic), 0, -20.96, 0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.PlayEffect(("holo_disapp" : Dynamic));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_holo_pa_boss", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "sad2", "npc_main_rival_m");
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-844.2, 11.69, -329.0]), lua.Table.create([-4.88, 175.64, -0.0]), 30.0, (0 : Dynamic), cameraEase, (null : Dynamic));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        var fObj_Set_Turn_To_ObjResult:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "sad", "npc_main_rival_m");
        var animationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var remainingBeforeSecondFlag:Dynamic = null;
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m07_4010")))
        {
            remainingBeforeSecondFlag = (1 : Dynamic);
        }
        else
        {
            remainingBeforeSecondFlag = (2 : Dynamic);
        };
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue(("flag_Ev_m07_4210" : Dynamic));
        var remainingObjectives:Dynamic = null;
        if (lua.abi.Host.truthy(getFlagValueResult))
        {
            var remainingAfterSecondFlag:Dynamic = untyped remainingBeforeSecondFlag - 1;
            remainingObjectives = remainingAfterSecondFlag;
        }
        else
        {
            remainingObjectives = remainingBeforeSecondFlag;
        };
        if (remainingObjectives > 0)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4410_talk_13", "main_07_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
            var animationAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4410_talk_15", "main_07_01", "dyn_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction6);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
            setFacialTemplate(("dyn_main_rival_m" : Dynamic), ("sad2" : Dynamic), ("npc_main_rival_m" : Dynamic));
        }
        else
        {
            if (0 == remainingObjectives)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4410_talk_14", "main_07_01", "dyn_main_rival_m");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction5);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
                var animationAction7:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 174);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_4410_talk_16", "main_07_01", "dyn_main_rival_m");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction7);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(fObj_Set_Turn_To_ObjResult);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
                var setFacialTemplate2:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
                setFacialTemplate2(("dyn_main_rival_m" : Dynamic), ("normal" : Dynamic), ("npc_main_rival_m" : Dynamic));
            }
            else
            {
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", -848.98, 10.12, -313.76, 1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        var sceneVector:Dynamic = lua.Table.create([-844.21, 11.69, -326.0]);
        var sceneVector2:Dynamic = lua.Table.create([-4.42, 3.3, -0.0]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, sceneVector, sceneVector2, (30.0 : Dynamic), 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI(("main_07_04" : Dynamic));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == remainingObjectives)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m07_4410_talk_03" : Dynamic), ("main_07_01" : Dynamic));
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            if (1 == remainingObjectives)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m07_4410_talk_02" : Dynamic), ("main_07_01" : Dynamic));
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            }
            else
            {
                if (2 == remainingObjectives)
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage((2 : Dynamic), ("msg_Ev_m07_4410_talk_01" : Dynamic), ("main_07_01" : Dynamic));
                    var hideMessageWindow3:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                    hideMessageWindow3();
                }
                else
                {
                };
            };
        };
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
