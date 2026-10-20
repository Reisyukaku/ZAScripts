package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAD6135EBFD8B2519")
@:expose("CAD6135EBFD8B2519")
class Ev_sys_rest1_court extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var firstRound:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("0" == firstRound)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_02", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_02");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_tourist_f_01", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_tourist_f_01");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_02", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_01_talk_07", "restaurant", "dyn_npc_waiter_m_02");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        var secondRound:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("1" == secondRound)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_02", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_02");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_operator_m_00", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_operator_m_00");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_02", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_01_talk_08", "restaurant", "dyn_npc_waiter_m_02");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        var finalRound:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("2" == finalRound)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 11.46, -0.98, -25.97, 96.32);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("event_battle_enemy_trainer_btr_rest1_2", 17.43, -1.0, -25.72, -99.55);
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_waiter_m_02", lua.Table.create([13.49, -0.98, -28.47]), 1.27, "npc_waiter_m_02");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_police_m_02", lua.Table.create([15.6, -0.98, -26.1]), -89.26, "npc_police_m_02");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([13.48, 1.57, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([13.48, 0.12, -20.81]), lua.Table.create([-3.39, -0.04, 0.0]), 40.0, 0, cameraEase);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_waiter_m_02", "Player", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_01_talk_09", "restaurant", "dyn_npc_waiter_m_02");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
