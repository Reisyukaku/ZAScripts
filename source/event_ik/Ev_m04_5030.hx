package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6FB6335127006E34")
@:expose("C6FB6335127006E34")
class Ev_m04_5030 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_ga_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        var positionHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 26.31, 0.01, -19.12, 89.63);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_ga_boss", 70));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 27.32, 0.03, -16.19, -92.43));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle1);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PLAYING_RETRO_GAMES");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([27.63, 1.16, -18.92]), lua.Table.create([-7.39, -160.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([26.98, 1.16, -18.7]), lua.Table.create([-7.39, -160.83, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_PLAYING_HIGH_SCORE");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_5030_talk_01", "main_04_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ga_boss", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([26.36, 0.96, -16.53]), lua.Table.create([-8.86, -119.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([26.36, 1.16, -16.53]), lua.Table.create([-8.86, -119.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var positionHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.29, 0.03, -17.24, -55.32);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5030_talk_02", "main_04_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([26.12, 1.03, -16.25]), lua.Table.create([0.79, -87.9, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([26.11, 1.03, -16.43]), lua.Table.create([0.79, -87.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ga_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5030_talk_03", "main_04_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_ga_boss", true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 1));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 28.33, 0.02, -20.11, -24.37);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ga_boss", 27.75, 0.01, -19.23, 153.06);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([27.7, 1.47, -19.08]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([28.01, 2.08, -21.03]), lua.Table.create([-9.2, -175.27, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([28.01, 1.48, -21.03]), lua.Table.create([-9.2, -175.27, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.15);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_03_02");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5030_talk_04", "main_04_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 23);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5030_talk_05", "main_04_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ga_boss", 28));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5030_talk_06", "main_04_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_5030_talk_07", "main_04_01", "npc_main_ga_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ga_boss", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
