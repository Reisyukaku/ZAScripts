package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C640B7073C475BB72")
@:expose("C640B7073C475BB72")
class Ev_m01_0160 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-668.87, 2.88, -873.68]), lua.Table.create([-6.18, 18.01, 0.0]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -671.89, 0.01, -890.11, 33.98);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -672.93, 0.04, -888.83, 36.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", -669.55, 0.04, -884.31, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var moveHandle2 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", -668.55, 0.05, -885.16, 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-666.29, 2.88, -874.52]), lua.Table.create([-6.18, 18.01, 0.0]), 50.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-668.72, 1.35, -886.69]), lua.Table.create([-4.59, 173.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_rival_m", "Player"));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 200);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0160_talk_01", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var positionHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -666.36, 0.01, -882.22, 36.83);
        var positionHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -667.28, 0.01, -881.49, 83.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-671.54, 0.75, -884.57]), lua.Table.create([3.13, -127.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle4);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.0, lua.Table.create([-672.29, 0.75, -883.57]), lua.Table.create([3.13, -127.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_rival_m"));
        var turnHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 22.01);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0160_talk_02", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-668.26, 1.24, -883.69]), lua.Table.create([-2.83, -143.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        var turnHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 80.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        var turnHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 10.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle6);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main_rival_m");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "lose", "npc_main_rival_m");
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0160_talk_03", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        var turnHandle9 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 25.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m01_0160_talk_04", "main_01_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle9);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", -663.97, 0.02, -877.1, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(4.0, lua.Table.create([-668.04, 1.22, -883.39]), lua.Table.create([-2.83, -143.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -666.36, 0.01, -882.22, 36.83));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
    }
}
