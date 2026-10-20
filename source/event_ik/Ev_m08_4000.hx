package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE30E324164E6ED1A")
@:expose("CE30E324164E6ED1A")
class Ev_m08_4000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_detective", "npc_pokemon_moko_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([(-0.45), 0.01, (-2.56)]), (-2.44), "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.41, 0.01, (-2.62), 1.33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-0.04), 0.0, 3.87, 177.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", (-1.68), 0.55, 2.61, 163.56);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_detective", 71);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-0.04), 0.0, 3.87, 177.56);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "Player", "head");
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", (-0.45), 0.01, 1.63, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.55);
        var moveHandle2 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 0.41, 0.01, 1.59, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.07), 1.9, 3.58]), lua.Table.create([(-2.76), (-0.46), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-0.07), 1.33, 3.58]), lua.Table.create([(-2.76), (-0.46), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([1.6, 2.18, 2.84]), lua.Table.create([(-28.5), 67.11, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_moko_2", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_moko_2", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_01", "main_08_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 29);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_02", "main_08_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.01), 1.77, (-0.28)]), lua.Table.create([(-15.58), (-179.98), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "lose", "npc_main_detective");
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_03", "main_08_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "dyn_main_rival_m", "head");
        var animationHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_detective", 32, null, 2.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_04", "main_08_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.6, 1.11, 4.15]), lua.Table.create([(-2.7), 28.36, 0.0]), 45.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_05", "main_08_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-2.82), 1.8, (-0.29)]), lua.Table.create([(-14.13), (-138.39), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "serious", "npc_main_detective");
        var animationHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_06", "main_08_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle7);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_rival_m", 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_07", "main_08_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.41), 1.08, 2.53]), lua.Table.create([(-6.43), (-147.78), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_rival_m");
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_08", "main_08_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.55), 1.2, 2.77]), lua.Table.create([3.01, (-20.6), (-0.03)]), 45.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "battle", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_09", "main_08_01", "dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.41), 1.08, 2.53]), lua.Table.create([(-6.43), (-147.78), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_rival_m", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_detective", lua.Table.create([(-0.02), (-1.38), 2.23]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        var animationHandle9 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 175);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_10", "main_08_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.01), 1.77, (-0.28)]), lua.Table.create([(-15.58), (-179.98), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "serious", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var animationHandle10 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_30", "main_08_01", "npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4000_select_05", "msg_Ev_m08_4000_select_06"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationHandle11 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle11);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.41), 1.08, 2.53]), lua.Table.create([(-6.43), (-147.78), (-0.03)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_31", "main_08_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "lose", "npc_main_detective");
        var animationHandle12 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_32", "main_08_01", "npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle12);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 1));
        var positionHandle13 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.35, 0.01, 0.89, 180.0);
        var positionHandle14 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", (-0.45), 0.01, 0.84, (-164.49));
        var positionHandle15 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", (-0.01), 0.0, (-0.07), 78.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle13);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle14);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle15);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-0.32), 1.59, 2.22]), lua.Table.create([(-13.07), (-13.3), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "rejoice_small", "npc_main_detective");
        var animationHandle16 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4000_talk_33", "main_08_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle16);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-1.87), 2.46, 3.97]), lua.Table.create([(-16.28), (-22.12), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_detective", (-0.01), 0.0, (-3.89), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", (-0.45), 0.02, (-3.21), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M08_4000_HANDSOME_HOUSE_DOOR");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
