package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC1BC76B6586E60E4")
@:expose("CC1BC76B6586E60E4")
class Ev_m03_0120 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["dyn_main_rival_m", "npc_main_detective", "npc_pokemon_moko_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_pokemon_moko_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.57, 0.01, 0.92, 24.99);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_detective", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_moko_2", -1.66, 0.5, 2.6, 163.56);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("tmp_main_rival_m", lua.Table.create([0.16, 0.01, 0.88]), -25.14, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", -0.2, 0.01, 1.87, -178.08);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 31));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.22, 1.41, 0.89]), lua.Table.create([-3.7, -176.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_02", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.26, 1.36, 0.2]), lua.Table.create([-3.7, -176.56, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-0.29, 1.39, -0.25]), lua.Table.create([-3.7, -176.56, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_main_rival_m", 0.16, 0.01, 0.88, -20.14);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.57, 0.01, 0.92, 24.99);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.98, 1.55, 1.96]), lua.Table.create([-13.54, -33.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_detective", 107);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_detective", "tmp_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("tmp_main_rival_m", -78.97);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 97.48);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_main_rival_m", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_03", "main_03_01", "tmp_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_04", "main_03_01", "tmp_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m03_0120_select_01", "msg_Ev_m03_0120_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_05", "main_03_01", "tmp_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_06", "main_03_01", "tmp_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_07", "main_03_01", "tmp_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", -0.2, 0.01, 1.87, 176.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-1.1, 1.61, 2.59]), lua.Table.create([-13.54, -33.82, 0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("tmp_main_rival_m", -20.14);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 24.99);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_08", "main_03_01", "tmp_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_09", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_detective", lua.Table.create([-1.19, 1.45, -0.66]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_10", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_11", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_12", "main_03_01", "npc_main_detective");
        var menuLabels:Dynamic = (["msg_Ev_m03_0120_select_03", "msg_Ev_m03_0120_select_04"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var waitFObjAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var setAnimationAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 18);
            waitFObjAction(setAnimationAction, null, null, null, null, null, null, null, null);
        }
        else
        {
            var waitFObjAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
            var setAnimationAction2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)("Player", 19);
            waitFObjAction2(setAnimationAction2, null, null, null, null, null, null, null, null);
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.72, 1.45, 0.9]), lua.Table.create([-3.91, -152.0, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(4, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("tmp_main_rival_m", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_detective", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_13", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_14", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_15", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([-0.61, 1.46, 1.12]), lua.Table.create([-3.91, -152.0, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(4, Int))));
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_0120_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.6, 1.55, 1.17]), lua.Table.create([-10.86, -128.62, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-0.75, 1.55, 1.36]), lua.Table.create([-10.86, -128.62, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_0120_talk_16", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_detective", -0.2, 0.01, 1.87, -160.08);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.74, 0.01, 0.88, 26.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_main_rival_m", 0.2, 0.01, 0.85, -25.15);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.17, 1.61, 0.16]), lua.Table.create([-13.08, 131.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_detective");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_detective", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_17", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_detective", -0.24, 0.01, -2.73, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_18", "main_03_01", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_moko_2", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("tmp_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("tmp_main_rival_m", -75.098);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 102.1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.93, 1.49, -0.26]), lua.Table.create([-7.65, 138.95, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0120_talk_19", "main_03_01", "tmp_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("tmp_main_rival_m", -0.11, 0, -0.57, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 167.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
