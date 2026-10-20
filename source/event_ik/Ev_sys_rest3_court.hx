package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCCE1CD564F9513FB")
@:expose("CCCE1CD564F9513FB")
class Ev_sys_rest3_court extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var eventParameters:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = untyped getEventMode(untyped eventParameters);
        var cameraEaseAfterBranch:Dynamic = null;
        if (("0" == getEventModeResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_police_f_02", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_police_f_02");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_07", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType(7);
            cameraEaseAfterBranch = cameraEase;
        }
        else
        {
            cameraEaseAfterBranch = null;
        };
        var eventParameters2:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode2:Dynamic = untyped eventParameters2.f73EE8FEC;
        var getEventModeResult2:Dynamic = untyped getEventMode2(untyped eventParameters2);
        var cameraEaseAfterBranch2:Dynamic = null;
        if (("1" == getEventModeResult2))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_tourist_m_03", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_tourist_m_03");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase2:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase2);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_08", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType2(7);
            cameraEaseAfterBranch2 = cameraEase2;
        }
        else
        {
            cameraEaseAfterBranch2 = cameraEaseAfterBranch;
        };
        var eventParameters3:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode3:Dynamic = untyped eventParameters3.f73EE8FEC;
        var getEventModeResult3:Dynamic = untyped getEventMode3(untyped eventParameters3);
        if (("2" == getEventModeResult3))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sleeves_02", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_sleeves_02");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase3:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_09", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType3(7);
        }
        else
        {
        };
        var eventParameters4:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode4:Dynamic = untyped eventParameters4.f73EE8FEC;
        var getEventModeResult4:Dynamic = untyped getEventMode4(untyped eventParameters4);
        if (("3" == getEventModeResult4))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_elite_m_02", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_elite_m_02");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase4:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase4);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_10", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType4(7);
        }
        else
        {
        };
        var eventParameters5:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode5:Dynamic = untyped eventParameters5.f73EE8FEC;
        var getEventModeResult5:Dynamic = untyped getEventMode5(untyped eventParameters5);
        if (("4" == getEventModeResult5))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_boy_m_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_boy_m_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase5:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase5);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_11", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType5:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType5(7);
        }
        else
        {
        };
        var eventParameters6:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode6:Dynamic = untyped eventParameters6.f73EE8FEC;
        var getEventModeResult6:Dynamic = untyped getEventMode6(untyped eventParameters6);
        if (("5" == getEventModeResult6))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_occult_f_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_occult_f_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase6:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase6);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_12", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType6:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType6(7);
        }
        else
        {
        };
        var eventParameters7:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode7:Dynamic = untyped eventParameters7.f73EE8FEC;
        var getEventModeResult7:Dynamic = untyped getEventMode7(untyped eventParameters7);
        if (("6" == getEventModeResult7))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_elite_f_02", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_elite_f_02");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase7:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase7);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_13", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType7:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType7(7);
        }
        else
        {
        };
        var eventParameters8:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode8:Dynamic = untyped eventParameters8.f73EE8FEC;
        var getEventModeResult8:Dynamic = untyped getEventMode8(untyped eventParameters8);
        if (("7" == getEventModeResult8))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_artist_f_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_artist_f_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase8:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase8);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_14", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType8:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType8(7);
        }
        else
        {
        };
        var eventParameters9:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode9:Dynamic = untyped eventParameters9.f73EE8FEC;
        var getEventModeResult9:Dynamic = untyped getEventMode9(untyped eventParameters9);
        if (("8" == getEventModeResult9))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_girl_f_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_girl_f_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase9:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase9);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_15", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType9:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType9(7);
        }
        else
        {
        };
        var eventParameters10:Dynamic = untyped this.m_eventScriptParam;
        var getEventMode10:Dynamic = untyped eventParameters10.f73EE8FEC;
        var getEventModeResult10:Dynamic = untyped getEventMode10(untyped eventParameters10);
        if (("9" == getEventModeResult10))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_00", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_businessman_m_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_businessman_m_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase10:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase10);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_00", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_03_talk_16", "restaurant", "dyn_npc_waiter_m_00");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType10:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType10(7);
        }
        else
        {
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
