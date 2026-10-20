package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C79EFE3B7B98235D4")
@:expose("C79EFE3B7B98235D4")
class Ev_m09_2300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_co_boss", "main_Pendora"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_EVENT");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_SAANAITO", lua.Table.create([-531.13, 0.15, -354.67]), -87.66, 282, 1, 1);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_ERUREIDO", lua.Table.create([-533.86, 0.15, -353.67]), -88.02, 475, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_main_co_boss", "ob0004_00_normal_10");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_SAANAITO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_ERUREIDO", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -560.18, 0.15, -364.13, 60.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_boss", -551.14, 0.14, -360.42, 43.44);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_Pendora", -551.31, 0.15, -358.05, 43.44);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious", "Player");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_co_boss", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-558.88, 3.36, -361.0]), lua.Table.create([-12.8, -102.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-559.38, 3.36, -359.51]), lua.Table.create([-12.8, -102.45, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_boss", -550.99, 0.14, -360.61, 43.44);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-550.76, 1.56, -359.21]), lua.Table.create([-1.83, 3.6, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_main_co_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_01", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 18));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_02", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("npc_main_co_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "surprise", "npc_main_co_boss");
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_03", "main_09_01", "npc_main_co_boss", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_boss", "dyn_ERUREIDO", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_SAANAITO", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_ERUREIDO", true);
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag("dyn_SAANAITO");
        main.event.ik.command.IkScriptCommand.AddBousouAuraTag("dyn_ERUREIDO");
        var moveHandle4 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_ERUREIDO", -543.73, 0.15, -354.03, 2.0);
        var moveHandle5 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_SAANAITO", -542.0, 0.15, -355.17, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_boss", -551.14, 0.14, -360.42, 43.44);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-548.45, 0.63, -356.57]), lua.Table.create([0.19, -105.7, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-548.45, 0.63, -356.57]), lua.Table.create([3.86, -105.7, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle4);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_ERUREIDO");
        var turnHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_ERUREIDO", -150.52);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle5);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_SAANAITO");
        var turnHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_SAANAITO", -138.21);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-552.52, 1.65, -360.73]), lua.Table.create([-5.29, -114.62, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-552.69, 1.67, -360.81]), lua.Table.create([-5.29, -114.62, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_04", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle7);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-551.82, 1.6, -358.87]), lua.Table.create([-3.67, -30.56, 0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "rejoice_small", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_co_boss", lua.Table.create([-553.13, 1.4, -360.57]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var animationHandle9 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_05", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle9);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "normal", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "serious", "npc_main_co_boss");
        var animationHandle10 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_06", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle10);
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -554.65, 0.15, -361.06, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-549.69, 1.6, -359.5]), lua.Table.create([-4.42, 65.27, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_SAANAITO", -544.16, 0.15, -354.75, -136.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_ERUREIDO", -545.56, 0.15, -353.22, -134.52);
        var animationHandle11 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_07", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle11);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-548.46, 0.85, -357.08]), lua.Table.create([-6.34, -130.15, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_boss", -553.56, 0.14, -359.78, 69.94);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.5, lua.Table.create([-548.46, 1.07, -357.08]), lua.Table.create([-4.84, -130.15, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var moveHandle12 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_SAANAITO", -545.42, 0.15, -355.81, 1.0);
        var moveHandle13 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_ERUREIDO", -546.74, 0.15, -354.22, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -556.18, 0.15, -360.9, 88.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_co_boss", -553.56, 0.14, -359.78, 61.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_Pendora", -550.25, 0.15, -358.43, 51.94);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_08", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle12);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle13);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -554.15, 0.15, -360.15, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-556.76, 1.12, -360.01]), lua.Table.create([0.0, -90.32, 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-556.77, 1.12, -359.26]), lua.Table.create([0.0, -90.32, 0.0]), 35.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "serious", "npc_main_co_boss");
        var turnHandle14 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_co_boss", -152.06);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_co_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_09", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle14);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-554.58, 1.48, -359.68]), lua.Table.create([4.6, -82.38, -0.0]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_co_boss", "rejoice_small", "npc_main_co_boss");
        var animationHandle15 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_co_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_2300_talk_10", "main_09_01", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle15);
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync("npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal", "Player");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_EV_M09_BOUSOU_AURA_BATTLE");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
