package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CFE5F316659DBEC0E")
@:expose("CFE5F316659DBEC0E")
class Ev_m05_1310 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main05_0002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T3000");
        main.event.ik.command.IkScriptCommand.S20BF4782C5F7CF65("dyn_main_detective", lua.Table.create([(-847.04), 18.12, (-445.17)]), (-114.4), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.S20BF4782C5F7CF65("dyn_main_ju_boss", lua.Table.create([(-846.61), 18.12, (-447.02)]), (-71.9), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        var positionHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-852.79), 18.13, (-445.8), (-88.4));
        var positionHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main05_0003", (-854.51), 18.12, (-446.37), 66.34);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-851.09), 19.47, (-446.98)]), lua.Table.create([(-7.95), 113.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main05_0003", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_06", "main_05_01", "npc_main05_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle3);
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0003", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_07", "main_05_01", "npc_main05_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        var moveHandle5 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", (-849.79), 18.12, (-445.16), 1.0);
        var moveHandle6 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", (-850.19), 18.12, (-447.26), 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-855.27), 19.95, (-447.64)]), lua.Table.create([(-13.97), (-114.98), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        var turnHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 85.1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "rejoice_small", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_08", "main_05_01", "dyn_main_detective");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m05_1300_select_01", "msg_Ev_m05_1300_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle7);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-851.39), 19.51, (-445.76)]), lua.Table.create([(-8.96), (-109.85), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "lose", "npc_main_detective");
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_09", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-854.41), 19.54, (-446.8)]), lua.Table.create([(-5.65), (-103.7), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "normal", "npc_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        var animationHandle9 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_detective", 32, null, 4.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_10", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_small", "npc_main_ju_boss");
        var animationHandle10 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_11", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle9);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle10);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", (-847.2), 18.12, (-453.21), 2.0));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-853.62), 19.6, (-446.93)]), lua.Table.create([(-6.48), (-130.57), (-0.0)]), 32.38, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "sad", "npc_main_detective");
        var animationHandle11 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_12", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle11);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious", "npc_main_detective");
        var animationHandle12 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1300_talk_13", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle12);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", (-847.2), 18.12, (-453.21), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
