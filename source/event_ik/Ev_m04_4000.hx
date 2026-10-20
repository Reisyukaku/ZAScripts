package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CBB02B948342F47BE")
@:expose("CBB02B948342F47BE")
class Ev_m04_4000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_friend_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M4DB_T1000");
        var positionHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-118.11), 0.01, (-392.2), 74.93);
        var positionHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", (-116.34), 0.0, (-391.64), (-123.13));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-119.55), 1.32, (-391.46)]), lua.Table.create([(-5.44), (-73.98), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_friend_m", 32, null, 2.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4000_talk_01", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(animationHandle3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_friend_m");
        var turnHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", 69.37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([(-119.55), 1.32, (-391.46)]), lua.Table.create([(-3.11), (-80.95), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle4);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-97.17), 3.24, (-381.76)]), lua.Table.create([(-10.45), (-42.9), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([(-95.81), 2.87, (-383.23)]), lua.Table.create([(-10.45), (-42.9), 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4000_talk_02", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-117.44), 1.09, (-391.64)]), lua.Table.create([11.68, (-81.06), (-0.0)]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "rejoice_small", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "Player", "head");
        var turnHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_friend_m", (-123.13));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4000_talk_03", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "serious", "npc_main_friend_m");
        var animationHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4000_talk_04", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([(-119.55), 1.32, (-391.46)]), lua.Table.create([(-5.44), (-73.98), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 1));
        var animationHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_m", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle8 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4000_talk_05", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle7);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "serious", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_main_friend_m", 32, null, 2.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4000_talk_06", "main_04_01", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_m", "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Ang("npc_main_friend_m", (-106.0)));
    }
}
