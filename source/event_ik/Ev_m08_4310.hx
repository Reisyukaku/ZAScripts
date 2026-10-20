package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CD9F471415F9F6FC6")
@:expose("CD9F471415F9F6FC6")
class Ev_m08_4310 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -338.86, 0.01, -378.91, -132.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_f", -339.62, 0.0, -379.86, 30.41);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-339.62, 1.55, -379.86]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_nu_boss_f", lua.Table.create([-338.86, 1.42, -378.91]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "anger_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-337.76, 1.46, -378.83]), lua.Table.create([-5.29, 72.86, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "anger", "npc_main_nu_boss_f");
        var bossAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4310_talk_01", "main_08_01", "npc_main_nu_boss_f");
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m08_4310_select_01", "msg_Ev_m08_4310_select_02"]), 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossAnimation);
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "normal", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -341.23, 0.01, -375.26, 120.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_nu_boss_f", -336.04, 0.0, -379.14, -60.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_nu_boss_f", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_m", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_nu_boss_f", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-341.89, 1.94, -371.03]), lua.Table.create([-7.01, -22.96, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([-341.89, 1.41, -371.03]), lua.Table.create([-7.01, -22.96, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02_WEAK");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-336.61, 1.61, -378.55]), lua.Table.create([-8.33, -27.34, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 491);
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.5, lua.Table.create([-336.52, 1.61, -378.5]), lua.Table.create([-8.33, -27.34, -0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m08_4310_talk_03", "main_08_01", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_03");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_nu_boss_f", 1);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_nu_boss_f", "normal", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_nu_boss_f", 22);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m08_4310_talk_02", "main_08_01", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_nu_boss_f");
        };
        untyped this.m_resultParam = selection;
    }
}
