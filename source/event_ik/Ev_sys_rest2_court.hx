package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CA46C2629E4273184")
@:expose("CA46C2629E4273184")
class Ev_sys_rest2_court extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ((("0" == getEventModeResult)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waitress_f_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_veteran_m_03", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_veteran_m_03");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waitress_f_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_07", "restaurant", "dyn_npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType:Dynamic = main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType(7);
        };
        var eventParameters3:Dynamic = this.m_eventScriptParam;
        var getEventMode2:Dynamic = eventParameters3.f73EE8FEC;
        var getEventMode2Result:Dynamic = getEventMode2(eventParameters3);
        if ((("1" == getEventMode2Result)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waitress_f_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_schoolkids_m_02", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_schoolkids_m_02");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase2);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waitress_f_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_08", "restaurant", "dyn_npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType2:Dynamic = main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType2(7);
        };
        var eventParameters4:Dynamic = this.m_eventScriptParam;
        var getEventMode3:Dynamic = eventParameters4.f73EE8FEC;
        var getEventMode3Result:Dynamic = getEventMode3(eventParameters4);
        if ((("2" == getEventMode3Result)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waitress_f_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_battlegirl_f_00", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_battlegirl_f_00");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waitress_f_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_09", "restaurant", "dyn_npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType3:Dynamic = main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType3(7);
        };
        var eventParameters5:Dynamic = this.m_eventScriptParam;
        var getEventMode4:Dynamic = eventParameters5.f73EE8FEC;
        var getEventMode4Result:Dynamic = getEventMode4(eventParameters5);
        if ((("3" == getEventMode4Result)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waitress_f_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_jogger_f_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_jogger_f_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase4);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waitress_f_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_10", "restaurant", "dyn_npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType4:Dynamic = main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType4(7);
        };
        var eventParameters6:Dynamic = this.m_eventScriptParam;
        var getEventMode5:Dynamic = eventParameters6.f73EE8FEC;
        var getEventMode5Result:Dynamic = getEventMode5(eventParameters6);
        if ((("4" == getEventMode5Result)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waitress_f_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_backpacker_m_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_backpacker_m_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("event_battle_enemy_trainer_btr_rest2_1", 19.5, -1.0, -26.29, -75.35);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waitress_f_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_11", "restaurant", "dyn_npc_waitress_f_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType5:Dynamic = main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType5(7);
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
