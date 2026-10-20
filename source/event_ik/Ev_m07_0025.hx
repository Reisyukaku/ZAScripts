package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C0967973BD48D9678")
@:expose("C0967973BD48D9678")
class Ev_m07_0025 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([-541.14, 0.27, -806.12]), 22.54, "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -539.04, 0.28, -802.03, -73.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -540.43, 0.27, -802.05, 84.91);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-540.43, 1.77, -802.05]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_friend_f", lua.Table.create([-539.04, 1.75, -802.03]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "npc_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-538.34, 1.7, -803.04]), lua.Table.create([-4.82, 129.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 19);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0025_talk_01", "main_07_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_friend_m", -539.98, 0.27, -803.05, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-536.89, 1.77, -802.89]), lua.Table.create([-8.73, 108.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-537.06, 1.77, -803.39]), lua.Table.create([-8.73, 108.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0025_talk_02", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-538.57, 1.73, -803.18]), lua.Table.create([-6.08, 109.53, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0025_talk_03", "main_07_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var friendMaleAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0025_talk_04", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-537.95, 1.68, -802.91]), lua.Table.create([-5.82, 107.32, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var friendFemaleReset = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_f", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendFemaleReset);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_big_mc", "npc_main_friend_f");
        var friendFemaleExplanation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0025_talk_05", "main_07_01", "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendFemaleExplanation);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        var recoveryAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(recoveryAnimation);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendMaleAnimation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_friend_m", 32, null, 2.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0025_talk_06", "main_07_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
