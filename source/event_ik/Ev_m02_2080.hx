package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC60DB4AB84EB8A42")
@:expose("CC60DB4AB84EB8A42")
class Ev_m02_2080 extends BaseMainScenario
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
        main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_rival_m", 70));
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_rival_m", false);
        var positionHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", (-761.52), 0.165, (-872.18), (-49.74));
        var positionHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-763.1), 0.01, (-871.21), 116.35);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-762.32), 1.28, (-871.09)]), lua.Table.create([(-9.55), (-27.49), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([(-763.39), 1.48, (-870.0)]), lua.Table.create([(-9.55), (-27.49), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.9);
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_rival_m", 32, null, 3.2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2080_talk_01", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        main.event.ik.command.IkScriptCommand.OpenAnyMenu(6, "DisclosureAnime");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2080_talk_02", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-762.67), 1.37, (-870.41)]), lua.Table.create([(-4.87), (-30.46), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2080_talk_03", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "confident", "npc_main_rival_m");
        var animationHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2080_talk_04", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle6);
        var positionHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-763.1), 0.01, (-871.36), (-131.97));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", (-766.25), 0.01, (-873.6), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle7);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_rival_m", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-760.17), 1.99, (-865.56)]), lua.Table.create([(-8.75), 27.05, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", (-766.52), 0.01, (-872.92), 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-778.56), 1.34, (-882.18)]), lua.Table.create([0.0, 126.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var positionHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-774.37), 0.01, (-881.31), (-66.41));
        var positionHandle9 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", (-774.52), 0.01, (-882.07), (-73.73));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle9);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-772.86), 1.34, (-884.15)]), lua.Table.create([0.0, 126.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2080_talk_05", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-773.56), 1.34, (-882.76)]), lua.Table.create([(-1.0), 139.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        var turnHandle10 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", 1.27);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        var turnHandle11 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-163.91));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2080_talk_10", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle10);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2080_talk_06", "main_02_01", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", (-800.64), 0.01, (-866.57), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        var turnHandle12 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-66.41));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle12);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
