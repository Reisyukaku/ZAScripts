package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC6363CAB850DC36E")
@:expose("CC6363CAB850DC36E")
class Ev_m02_2040 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([(-693.02), 0.0, (-903.47)]), (-37.02), "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([(-694.38), 0.0, (-903.26)]), 102.51, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([(-693.39), 0.0, (-902.31)]), (-161.75), "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-690.98), 0.01, (-904.26), (-49.73)));
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-691.84), 1.42, (-904.66)]), lua.Table.create([(-6.53), 137.42, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(1.5, lua.Table.create([(-690.39), 1.42, (-905.45)]), lua.Table.create([(-6.53), 137.42, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var turnHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 114.98);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-692.48), 1.31, (-903.43)]), lua.Table.create([(-1.54), 137.02, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "serious", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 14);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_07", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-693.15), 1.45, (-903.93)]), lua.Table.create([(-2.27), 124.8, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_08", "main_02_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-690.17), 1.46, (-905.69)]), lua.Table.create([(-6.23), 137.42, (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_09", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_01", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal", "npc_main_rival_m");
        var animationHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_rival_m", 32, null, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_02", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle4);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "confident", "npc_main_rival_m");
        var animationHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_03", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "anger_mc", "npc_main_rival_m");
        var animationHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 24);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_04", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle6);
        main.event.ik.command.IkScriptCommand.OpenTips("tips_2200");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "confident", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-691.97), 1.46, (-904.39)]), lua.Table.create([(-6.32), 130.96, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var animationHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_05", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small", "npc_main_rival_m");
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_06", "main_02_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_10", "main_02_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_f", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2040_talk_11", "main_02_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
