package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE4D2A6664B82CB96")
@:expose("CE4D2A6664B82CB96")
class Ev_m05_1400 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f", "npc_main_ju_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)("dyn_main_detective", (lua.Table.create([(-548.33), 0.0, (-584.17)]) : Dynamic), 101.06, "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait)("dyn_main_detective", "ob0004_00_normal_07");
        (untyped main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait)("npc_main_nu_boss_f", "ob0004_00_normal_09");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity)("npc_main_nu_boss_m", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("Player", (untyped -547.85), 0.01, (untyped -582.83), 125.81);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("npc_main_ju_boss", (untyped -544.95), 0.01, (untyped -583.9), 126.55);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("npc_main_nu_boss_m", (untyped -539.46), 0.62, (untyped -587.24), (untyped -50.648));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_main_ju_boss", "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "npc_main_ju_boss", "head");
        var movementAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("Player", (untyped -546.15), 0.01, (untyped -583.34), 1.0);
        var movementAction2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("dyn_main_detective", (untyped -546.1), 0.0, (untyped -584.55), 1.0);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-548.45), 1.86, (-583.47)]) : Dynamic), (lua.Table.create([(-6.26), (-78.11), 0.0]) : Dynamic), 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(4.0, (lua.Table.create([(-548.45), 1.48, (-583.47)]) : Dynamic), (lua.Table.create([(-6.26), (-78.11), 0.0]) : Dynamic), 40.0, 0, cameraEase2);
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 1.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_ju_boss", "Player", "head");
        var fObj_Set_TurnResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("npc_main_ju_boss", (-121.52));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult);
        (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("npc_main_ju_boss");
        var animationAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_ju_boss", 19);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_main_ju_boss", "sad", "npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_01", "main_05_01", "npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(movementAction);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(movementAction2);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_main_ju_boss", "normal", "npc_main_ju_boss");
        var animationAction2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_ju_boss", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_02", "main_05_01", "dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction2);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "npc_main_nu_boss_f", "head");
        var movementAction3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("dyn_main_detective", (untyped -543.46), 0.0, (untyped -586.6), 1.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.7);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_ju_boss", "npc_main_nu_boss_f", "head");
        var movementAction4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("npc_main_ju_boss", (untyped -541.82), 0.0, (untyped -585.74), 1.0);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(3.0, (lua.Table.create([(-548.45), 1.48, (-583.47)]) : Dynamic), (lua.Table.create([(-5.7), (-62.89), 0.02]) : Dynamic), 40.0, 0, cameraEase3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_main_nu_boss_f", "head");
        var movementAction5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("Player", (untyped -543.02), 0.01, (untyped -585.7), 1.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-544.13), 1.56, (-584.44)]) : Dynamic), (lua.Table.create([(-4.91), (-31.52), 0.0]) : Dynamic), 30.0, 0, cameraEase4);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_f", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(movementAction3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(movementAction4);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(movementAction5);
        var fObj_Set_TurnResult2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("dyn_main_detective", 113.33);
        var fObj_Set_TurnResult3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", 177.17);
        var fObj_Set_TurnResult4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("npc_main_ju_boss", 176.9);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_main_nu_boss_f", "rejoice_small", "npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)("npc_main_nu_boss_f", 32, null, 4.68);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.7);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_03", "main_05_01", "npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult2);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult4);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-542.77), 1.5, (-587.79)]) : Dynamic), (lua.Table.create([(-5.68), 160.53, 0.0]) : Dynamic), 30.0, 0, cameraEase5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_main_nu_boss_f", "normal", "npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        var animationAction3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 18);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_04", "main_05_01", "dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.TakeOutRotomPhone)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "npc_main_nu_boss_f", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("dyn_main_detective", "lose", "npc_main_detective");
        var animationAction4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_20", "main_05_01", "dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction4);
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-542.53), 1.65, (-589.27)]) : Dynamic), (lua.Table.create([(-8.05), 173.58, (-0.0)]) : Dynamic), 30.0, 0, cameraEase6);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_main_nu_boss_f", "head");
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("dyn_main_detective", "normal", "npc_main_detective");
        var animationAction5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_nu_boss_f", 18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_05", "main_05_01", "npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction5);
        (untyped main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone)("npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.TakeOutRotomPhone)("npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut)("npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence)("npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("dyn_main_detective", "normal", "npc_main_detective");
        var animationAction6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_nu_boss_f", 18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_06", "main_05_01", "npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction6);
        (untyped main.event.ik.command.IkScriptCommand.PutAwayRotomPhone)("npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway)("npc_main_nu_boss_f");
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-542.56), 1.46, (-587.51)]) : Dynamic), (lua.Table.create([(-5.31), 150.76, 0.0]) : Dynamic), 35.0, 0, cameraEase7, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.PutAwayRotomPhone)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_ju_boss", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "Player", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("dyn_main_detective", "serious", "npc_main_detective");
        var animationAction7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)("dyn_main_detective", 32, null, 4.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_07", "main_05_01", "dyn_main_detective");
        var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m05_1400_select_01", "msg_Ev_m05_1400_select_02"]), 0, ((false : Dynamic)), ((false : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var animationAction8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot)(animationAction7);
        var wait_FObj_Action:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        wait_FObj_Action(animationAction8);
        if (0 == menuSelection)
        {
            var animationAction9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 28);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, (("msg_Ev_m05_1400_talk_09" : Dynamic)), (("main_05_01" : Dynamic)), (("dyn_main_detective" : Dynamic)));
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var wait_FObj_Action2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            wait_FObj_Action2(animationAction9);
        }
        else
        {
            var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-543.4), 1.59, (-586.63)]) : Dynamic), (lua.Table.create([(-3.41), (-66.63), (-0.0)]) : Dynamic), 25.0, ((0 : Dynamic)), cameraEase8, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
            (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
            (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_nu_boss_f", 22);
            (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
            (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, (("msg_Ev_m05_1400_talk_08" : Dynamic)), (("main_05_01" : Dynamic)), (("npc_main_nu_boss_f" : Dynamic)));
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var wait_Time:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
            wait_Time(((0.3 : Dynamic)));
        };
        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-544.75), 1.54, (-583.84)]) : Dynamic), (lua.Table.create([(-5.94), (-39.97), 0.0]) : Dynamic), 40.0, 0, cameraEase9);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "npc_main_ju_boss", "head");
        var fObj_Set_TurnResult5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("dyn_main_detective", 94.91);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_main_ju_boss", "head");
        var fObj_Set_TurnResult6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", 100.29);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_ju_boss", "dyn_main_detective", "head");
        var fObj_Set_TurnResult7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("npc_main_ju_boss", (untyped -114.21));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult5);
        (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("dyn_main_detective");
        var animationAction10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)("dyn_main_detective", 32, null, 4.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_f", "npc_main_ju_boss", "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_10", "main_05_01", "dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult6);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult7);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_ju_boss", 28);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_11", "main_05_01", "npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-544.04), 1.48, (-584.44)]) : Dynamic), (lua.Table.create([(-5.39), (-27.36), 0.0]) : Dynamic), 30.0, 0, cameraEase10, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately)("npc_main_nu_boss_m", 328);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately)("npc_main_nu_boss_m", 177);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_ju_boss", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "Player", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot)(animationAction10);
        var fObj_Set_TurnResult8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("dyn_main_detective", 31.71);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "dyn_main_detective", "head");
        var fObj_Set_TurnResult9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", (untyped -179.71));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult8);
        (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 28);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_f", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, (("msg_Ev_m05_1400_talk_12" : Dynamic)), (("main_05_01" : Dynamic)), (("dyn_main_detective" : Dynamic)));
        var wait_FObj_Action3:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        wait_FObj_Action3(fObj_Set_TurnResult9);
        while (true)
        {
            if (0 == this.m_resultParam)
            {
                break;
            }
            else
            {
            };
            var menuSelection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)((["msg_Ev_m05_1400_select_03", "msg_Ev_m05_1400_select_04"]), 0, false, false);
            (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
            var animationAction11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 18);
            (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction11);
            if (0 == menuSelection2)
            {
                untyped this.m_resultParam = 0;
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("Player", (untyped -543.02), 0.01, (untyped -585.7), 134.74);
                var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-543.91), 2.95, (-581.85)]) : Dynamic), (lua.Table.create([(-20.26), (-16.59), (-0.0)]) : Dynamic), 40.0, 0, cameraEase11, null, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
                var fObj_Reset_AnimationResult:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("dyn_main_detective");
                var animationAction12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_ju_boss", 20);
                (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_main_ju_boss", "head");
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "npc_main_ju_boss", "head");
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_f", "npc_main_ju_boss", "head");
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_m", "npc_main_ju_boss", "head");
                (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_15", "main_05_01", "npc_main_ju_boss");
                (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Reset_AnimationResult);
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction12);
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)("npc_main_ju_boss");
                (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("npc_main_ju_boss", ((untyped -543.49 : Dynamic)), ((0.0 : Dynamic)), ((untyped -580.13 : Dynamic)), ((2.0 : Dynamic)));
                var wait_Time2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
                wait_Time2(((1.7 : Dynamic)));
            }
            else
            {
                if (1 == menuSelection2)
                {
                    untyped this.m_resultParam = 1;
                    var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-544.8), 2.41, (-580.81)]) : Dynamic), (lua.Table.create([(-15.86), (-25.76), 0.0]) : Dynamic), 40.0, 0, cameraEase12);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                    var fObj_Reset_AnimationResult2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("dyn_main_detective");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)("npc_main_ju_boss");
                    var fObj_Set_TurnResult10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("npc_main_ju_boss", (untyped -25.95));
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_main_ju_boss", "head");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "npc_main_ju_boss", "head");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_f", "npc_main_ju_boss", "head");
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Reset_AnimationResult2);
                    var fObj_Set_TurnResult11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("dyn_main_detective", 0.0);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult10);
                    var movementAction6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("npc_main_ju_boss", (untyped -543.42), 0.0, (untyped -582.53), 2.0);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult11);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.1);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_m", "npc_main_ju_boss", "head");
                    var fObj_Set_TurnResult12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", 17.29);
                    var animationAction13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 21);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_m05_1400_talk_13", "main_05_01", "dyn_main_detective");
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(movementAction6);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult12);
                    (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction13);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_ju_boss", "dyn_main_detective", "head");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("npc_main_ju_boss", (untyped -541.82), 0.0, (untyped -585.74), 1.0);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "Player", "head");
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "dyn_main_detective", "head");
                    var fObj_Set_TurnResult13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", (untyped -179.71));
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_f", "dyn_main_detective", "head");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_m", "dyn_main_detective", "head");
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_14", "main_05_01", "dyn_main_detective");
                    (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("dyn_main_detective", (untyped -543.46), 0.0, (untyped -586.6), 31.71);
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("npc_main_ju_boss", (untyped -541.82), 0.0, (untyped -585.74), (untyped -114.22));
                    var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                    (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-544.04), 1.48, (-584.44)]) : Dynamic), (lua.Table.create([(-5.39), (-27.36), 0.0]) : Dynamic), 30.0, ((0 : Dynamic)), cameraEase13, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
                    (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
                    (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 28);
                    (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, (("msg_Ev_m05_1400_talk_12" : Dynamic)), (("main_05_01" : Dynamic)), (("dyn_main_detective" : Dynamic)));
                    var wait_FObj_Action4:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
                    wait_FObj_Action4(fObj_Set_TurnResult13);
                }
                else
                {
                };
            };
        };
        var fObj_Set_TurnResult14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", 17.29);
        var animationAction14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("dyn_main_detective", 19);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_16", "main_05_01", "dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult14);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction14);
        var cameraEase14:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-544.36), 1.47, (-584.18)]) : Dynamic), (lua.Table.create([(-5.79), (-31.32), (-0.0)]) : Dynamic), 30.0, 0, cameraEase14);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)("npc_main_ju_boss", false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "npc_main_nu_boss_f", "head");
        var fObj_Set_TurnResult15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("dyn_main_detective", 112.33);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.2);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "npc_main_nu_boss_f", "head");
        var fObj_Set_TurnResult16:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", 173.74);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_f", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("npc_main_nu_boss_m", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.1);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_17", "main_05_01", "dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("npc_main_nu_boss_f", 21);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_21", "main_05_01", "npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult15);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult16);
        var cameraEase15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-544.65), 1.62, (-583.21)]) : Dynamic), (lua.Table.create([(-10.08), (-26.08), (-0.0)]) : Dynamic), 40.0, 0, cameraEase15);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("dyn_main_detective", "Player", "head");
        var fObj_Set_TurnResult17:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("dyn_main_detective", 2.33);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)("Player", "dyn_main_detective", "head");
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult17);
        (untyped main.event.ik.command.IkScriptCommand.S522136910C73A819)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("dyn_main_detective", "serious", "npc_main_detective");
        var animationAction15:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)("dyn_main_detective", 32, null, 4.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_19", "main_05_01", "dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var animationAction16:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot)(animationAction15);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction16);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)("dyn_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)("dyn_main_detective", (untyped -546.15), 0.0, (untyped -584.27), 2.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.5);
        var fObj_Set_TurnResult18:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)("Player", (-53.26));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(fObj_Set_TurnResult18);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(0.3);
        var cameraEase16:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov)(0.0, (lua.Table.create([(-540.19), 1.97, (-586.19)]) : Dynamic), (lua.Table.create([1.94, (-25.42), (-0.0)]) : Dynamic), 45.0, 0, cameraEase16);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Time)(1.5);
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_main_nu_boss_m", "sad", "npc_main_nu_boss_m");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_1400_talk_18", "main_05_01", "npc_main_nu_boss_m");
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 1.0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Fade)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity)("npc_main_nu_boss_m", true);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)("Player", (untyped -542.54), 0.01, (untyped -585.12), (untyped -52.06));
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)("npc_main_nu_boss_m", "normal", "npc_main_nu_boss_m");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("npc_main_nu_boss_m");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)("npc_main_nu_boss_f");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately)("npc_main_nu_boss_m", 176);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter)();
    }
}
