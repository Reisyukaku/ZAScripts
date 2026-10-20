package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE72593CC6BDC48BE")
@:expose("CE72593CC6BDC48BE")
class Ev_sub_120_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 410.4, 2.41, 18.98, -0.4);
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_120_001_first");
        if (((false == flagValue))) {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([410.18, 5.19, 30.59]), lua.Table.create([2.59, -178.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_START_SERVER");
            main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t2_g02", "t2_g02_1_anime", "on", "trigger");
            main.event.ik.command.IkScriptCommand.OverrideAreaLight(2, "env_t2_g02_light", 0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([409.92, 3.7, 17.73]), lua.Table.create([2.59, -178.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(15, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_120_001_talk_01", "sub_120");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([411.22, 2.48, 19.61]), lua.Table.create([6.37, 57.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            var cameraEase:Dynamic = (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([410.36, 3.74, 20.09]), lua.Table.create([-0.0, 0.34, -0.0]), 40.0, 0, cameraEase);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_SCAN_POKEMON");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_sub_120_001_talk_02", "sub_120");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var waitTime:Dynamic = main.event.ik.command.IkScriptCommand.Wait_Time;
            waitTime(0.5);
        };
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([410.46, 2.58, 16.57]), lua.Table.create([12.93, -168.86, -10.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([409.43, 2.58, 16.77]), lua.Table.create([12.93, -168.86, -10.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_sub_120_001_talk_03", "sub_120");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_120_001_select_01", "msg_Ev_sub_120_001_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection))) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_120_PM150_VIBRATION01");
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Camera_Shake(3.0, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MYUUTUU", lua.Table.create([410.48, 2.41, 38.04]), 180.0, 150, 0, 0);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            cppbindings.C5090F7B8.f92941AC0("flag_lab_power_on_03", true);
            main.event.ik.command.IkScriptCommand.UpdateReplace();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MYUUTUU", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([409.67, 3.38, 38.65]), lua.Table.create([16.02, -48.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_HEARTBEAT");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Fade_In("White", 4.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([409.39, 3.21, 38.89]), lua.Table.create([16.02, -48.47, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([409.52, 3.66, 19.93]), lua.Table.create([-1.75, -48.76, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("Player");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_sub_120_001_talk_04", "sub_120");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_120_001_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([408.64, 3.08, 33.0]), lua.Table.create([2.82, -161.87, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([409.46, 3.21, 35.51]), lua.Table.create([2.82, -161.87, 30.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_sub_120_001_talk_05", "sub_120");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([410.03, 3.56, 18.9]), lua.Table.create([-7.27, -166.08, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase2:Dynamic = (main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, StdTypes.Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([409.75, 3.71, 17.78]), lua.Table.create([-7.27, -166.08, 0.0]), 40.0, 0, cameraEase2);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_S");
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.ShowMessage(6, "msg_Ev_sub_120_001_talk_06", "sub_120");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0120");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MYUUTUU", "head");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var waitTime2:Dynamic = main.event.ik.command.IkScriptCommand.Wait_Time;
            waitTime2(0.5);
        } else {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var waitTime3:Dynamic = main.event.ik.command.IkScriptCommand.Wait_Time;
            waitTime3(0.5);
        };
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        this.m_resultParam = selection;
    }
}
