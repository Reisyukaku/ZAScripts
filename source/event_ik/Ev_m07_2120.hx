package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C55E2B94D1910B86E")
@:expose("C55E2B94D1910B86E")
class Ev_m07_2120 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:String = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([16.33, 0.02, -17.14]), 0.0, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.32, 0.03, -17.14, 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_leader", 15.76, 0.01, -19.92, -0.13));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_pa_leader", false);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HOTEL_RICHISSIME_EV_CL");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.85, 1.27, -11.56]), lua.Table.create([1.04, 0.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 15.33, 0.03, -13.98, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", 16.33, 0.02, -13.92, 0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.84, 1.27, -12.59]), lua.Table.create([1.04, 0.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.9);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.71, 1.49, -13.1]), lua.Table.create([-8.32, -49.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -93.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 97.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_2120_talk_01", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_2120_talk_02", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_pa_leader", 15.76, 0.01, -16.63, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_pa_leader", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.76, 0.85, -21.83]), lua.Table.create([-4.6, -179.51, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.76, 1.25, -21.83]), lua.Table.create([-4.6, -179.51, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", -171.2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 168.38);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.34, 1.54, -15.77]), lua.Table.create([0.38, 37.03, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_2120_talk_03", "main_07_01", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.04, 0.03, -13.98, 168.38);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", 16.25, 0.02, -13.92, -171.18);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([17.41, 1.42, -12.26]), lua.Table.create([-5.15, 33.05, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_2120_talk_04", "main_07_01", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_2120_talk_05", "main_07_01", "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_2120_talk_06", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_2120_talk_07", "main_07_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 14.93, 0.03, -11.2, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_rival_m", 16.35, 0.02, -11.33, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_leader", "surprise");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.52, 0.5, -14.6]), lua.Table.create([20.03, 20.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([15.99, 1.35, -16.0]), lua.Table.create([20.03, 20.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m07_2120_talk_08", "main_07_01", "npc_main_pa_leader", false, true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait("npc_main_pa_leader");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_leader", "surprise");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.77, 1.49, -16.06]), lua.Table.create([12.48, 0.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([15.82, 0.8, -14.48]), lua.Table.create([12.48, 0.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_WILD_WHOOSH01");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage_NoWait(1, "msg_Ev_m07_2120_talk_09", "main_07_01", "npc_main_pa_leader", false, true);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.HideMessageWindow_NoWait();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_AREA_TRANSITION_ON");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
    }
}
