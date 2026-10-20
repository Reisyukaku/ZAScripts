package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C11D185120E69DF48")
@:expose("C11D185120E69DF48")
class Ev_m10_9000 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_researcher"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_researcher", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_researcher", 71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.32, 0.05, -2.3, 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.33, 0.04, -1.1, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "serious", "npc_main_researcher");
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 0.45, 0.05, -0.36, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([3.75, 1.03, 2.16]), lua.Table.create([0.0, 54.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.65);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([0.22, 1.37, 0.72]), lua.Table.create([0.0, 61.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-3.72, 1.36, 2.91]));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_FIST_TABLE_THREE");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.7, lua.Table.create([1.32, 1.36, 0.56]), lua.Table.create([0.0, 61.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m10_9000_talk_01", "main_10_01", "npc_main_researcher", true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m10_9000_talk_02", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-4.49, 1.33, 0.3]), lua.Table.create([-14.18, 36.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9000_talk_03", "main_10_01", "npc_main_researcher");
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9000_talk_04", "main_10_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal", "npc_main_researcher");
    }
}
