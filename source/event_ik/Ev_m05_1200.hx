package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CF6FEFC66560B5CCC")
@:expose("CF6FEFC66560B5CCC")
class Ev_m05_1200 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_pokemon_moko_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([0.15, 0.0, 1.08]), (-35.75), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.67), 0.03, (-3.25), 3.31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-0.76), 0.0, 2.45, 152.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-1.68), 0.51, 2.61, 163.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_detective", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_ju_boss", 32);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "dyn_main_ju_boss", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "anger_mc", "npc_main_detective");
        var playerArrival = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-0.67), 0.01, (-1.86), 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.11), 1.28, (-3.4)]), lua.Table.create([0.0, 179.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([(-0.33), 1.28, (-3.45)]), lua.Table.create([0.0, 179.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("A_T1_I005_IN");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerArrival);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.8), 1.28, 0.12]), lua.Table.create([(-2.97), (-178.63), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "lose", "npc_main_detective");
        var detectiveGreeting = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_01", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(detectiveGreeting);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-2.71), 1.56, (-0.54)]), lua.Table.create([(-6.63), (-139.04), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        var playerApproach = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-0.89), 0.01, 0.77, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        var bossTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", (-122.42));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerApproach);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossTurn);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 59.91);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        var bossExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_ju_boss", 32, null, 3.8);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_02", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(bossExplanation);
        var bossDetectiveTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_ju_boss", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossDetectiveTurn);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "sad", "npc_main_ju_boss");
        var bossReaction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_03", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "anger_mc", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "anger", "npc_main_detective");
        var detectiveReaction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_04", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(detectiveReaction);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "anger_mc", "npc_main_detective");
        var detectiveReply = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_05", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossReaction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(detectiveReply);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-1.42), 1.68, 1.76]), lua.Table.create([3.46, (-70.54), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_detective", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "normal", "npc_main_ju_boss");
        var bossReply = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_06", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossReply);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_big", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_07", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-2.88), 1.2, 2.98]), lua.Table.create([(-1.91), (-59.99), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var detectiveExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_detective", 32, null, 4.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_08", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_09", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(detectiveExplanation);
        var detectiveSuggestion = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 21);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_10", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-2.71), 1.56, (-0.54)]), lua.Table.create([(-6.63), (-139.04), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(detectiveSuggestion);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "serious", "npc_main_detective");
        var detectiveSecondExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_detective", 32, null, 4.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var bossReset = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_11", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossReset);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_small", "npc_main_ju_boss");
        var bossAnswer = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_12", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossAnswer);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_small_mc", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 0.15, 0.0, (-3.46), 2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_1200_HANDSOME_HOUSE_DOOR");
        main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(detectiveSecondExplanation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "surprise_mc", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.8), 1.28, 0.12]), lua.Table.create([(-2.97), (-178.63), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", false);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "surprise", "npc_main_detective");
        var detectiveAnswer = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_13", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(detectiveAnswer);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-2.31), 0.89, 0.75]), lua.Table.create([2.47, (-147.38), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-0.89), 0.01, 0.77, 6.91);
        var detectiveIdle = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(detectiveIdle);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "lose", "npc_main_detective");
        var detectiveLongExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_detective", 33, null, 2.8);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_14", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-2.17), 1.36, (-0.67)]), lua.Table.create([(-4.22), (-152.59), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(detectiveLongExplanation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 1));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "rejoice_small", "npc_main_detective");
        var detectiveFarewell = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_detective", 32, null, 4.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_16", "main_05_01", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "lose", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_15", "main_05_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var playerFarewell = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(detectiveFarewell);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerFarewell);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-1.7), 0.77, 0.93]), lua.Table.create([(-3.19), (-179.43), (-0.0)]), 25.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 35);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1200_talk_23", "main_05_01", "npc_pokemon_moko_2");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 1));
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
