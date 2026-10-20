package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC54F7F6F57433A07")
@:expose("CC54F7F6F57433A07")
class Ev_m05_0310 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([(-856.54), 18.13, (-409.08)]), (-67.11), "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_f", lua.Table.create([(-847.86), 18.0, (-403.55)]), (-162.82), "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_ZIGARUDE", lua.Table.create([(-849.7), 30.38, (-417.01)]), (-33.58), 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-855.94), 18.13, (-407.56), (-43.26));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_ZIGARUDE", false);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_08");
        main.event.ik.command.IkScriptCommand.MegaStonePlay((-855.94), 18.13, (-407.56), (-43.26));
        main.event.ik.command.IkScriptCommand.MegaStoneItemGetWindow("ITEMID_ZYUPETTANAITO");
        main.event.ik.command.IkScriptCommand.Wait_End_MegaStoneWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_friend_m", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_f", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_ZIGARUDE", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-854.3), 19.5, (-406.82)]), lua.Table.create([(-6.32), 56.04, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        var setTurnToObjAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_friend_m", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 174));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-847.92), 32.84, (-416.97)]), lua.Table.create([(-47.89), 130.05, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([(-848.15), 32.84, (-417.36)]), lua.Table.create([(-47.89), 130.05, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_ZIGARUDE", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(1, "msg_Ev_m05_0310_talk_01", "main_05_01", null, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 21);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var setTurnToObjAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_ZIGARUDE");
        var setTurnToObjAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_friend_m", "dyn_ZIGARUDE");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-845.21), 19.18, (-404.45)]), lua.Table.create([(-3.25), 72.62, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ZIGARUDE", (-849.83), 30.38, (-416.87), (-33.58));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_f", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([(-845.35), 19.18, (-403.37)]), lua.Table.create([(-3.25), 72.62, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction4);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_f", 32, null, 2.68);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_0310_talk_02", "main_05_01", "dyn_main_f", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_f", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_f", "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-850.88), 19.38, (-405.05)]), lua.Table.create([(-1.82), (-117.37), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.5, lua.Table.create([(-849.95), 19.35, (-404.57)]), lua.Table.create([(-1.82), (-117.37), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_08");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_f", "dyn_ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_03", "main_05_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_f", (-850.07), 18.0, (-408.56), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-861.18), 20.75, (-409.23)]), lua.Table.create([(-16.2), (-90.28), (-0.03)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-861.32), 20.75, (-408.31)]), lua.Table.create([(-16.2), (-90.28), (-0.03)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_04", "main_05_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_ZIGARUDE", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-852.47), 30.02, (-415.06)]), lua.Table.create([15.06, (-56.92), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([(-851.79), 30.24, (-415.51)]), lua.Table.create([15.06, (-56.92), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_05", "main_05_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-852.14), 21.82, (-416.96)]), lua.Table.create([(-15.08), 172.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([(-852.14), 21.03, (-416.96)]), lua.Table.create([(-15.08), 172.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        var setAnimationOneShotAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_f", 32, null, 2.68);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_0310_talk_06", "main_05_01", "dyn_main_f", null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_f", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_f", "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-850.45), 19.7, (-410.46)]), lua.Table.create([(-5.45), (-176.85), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_07", "main_05_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_15", "main_05_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var resetAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_f", (-850.07), 18.0, (-408.56), (-145.72));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-858.75), 19.34, (-408.59)]), lua.Table.create([(-5.34), (-96.74), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimationAction);
        var setAnimationAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_f", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_08", "main_05_01", "dyn_main_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_4S");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_f", (-845.19), 18.0, (-399.58), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        var setTurnAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 67.29);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var setTurnAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_friend_m", 62.25);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-854.27), 19.47, (-407.25)]), lua.Table.create([(-6.11), 64.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnAction2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_12", "main_05_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_friend_m"));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        var setTurnToObjAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        var setTurnToObjAction6:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_friend_m", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_13", "main_05_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction6);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_friend_m");
        var setAnimationAction4:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction4);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-848.68), 22.05, (-408.22)]), lua.Table.create([(-22.43), 88.63, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction5:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_0310_talk_14", "main_05_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", (-851.21), 18.0, (-411.67), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 122.79));
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 9);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_05_04");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m05_0110");
        var flagValue2:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m05_0210");
        if (((true == flagValue) && (true == flagValue2)))
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            showMessage(2, "msg_Ev_m05_0310_talk_11", "main_05_01");
        }
        else
        {
            if (((true == flagValue) || (true == flagValue2)))
            {
                var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                showMessage2(2, "msg_Ev_m05_0310_talk_10", "main_05_01");
            }
            else
            {
                var showMessage3:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                showMessage3(2, "msg_Ev_m05_0310_talk_09", "main_05_01");
            };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_BASE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
