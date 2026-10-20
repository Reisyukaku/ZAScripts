package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1BC6ED24C3E534CE")
@:expose("C1BC6ED24C3E534CE")
class Ev_sub_088_011 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_pa_boss", "npc_main_pa_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var flagValue:Dynamic = null;
        flagValue = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_088_011");
        if (false == flagValue)
        {
            flagValue = "line01";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", flagValue);
            this.Await((function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(flagValue);
            }));
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_pa_leader", lua.Table.create([14.95, 0.02, -10.76]), 170.5, "npc_main_pa_leader");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("t1_i012_2_mob_05", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 18.98, 0.04, -12.14, 101.39);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_boss", 19.71, 0.02, -10.95, -147.43);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([23.23, 1.98, -12.05]), lua.Table.create([12.64, -90.07, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(flagValue);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([18.85, 0.74, -12.05]), lua.Table.create([12.64, -90.07, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(18, Int))));
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MSBC_WHOOSH01");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_088_010_talk_10", "sub_088", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FadeEffect(flagValue);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([18.4, 1.17, -11.77]), lua.Table.create([10.89, -103.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([18.4, 0.93, -11.77]), lua.Table.create([10.89, -103.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_13", "sub_088", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_14", "sub_088", "npc_main_pa_boss");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_15", "sub_088", "npc_main_pa_boss");
            var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_088_010_select_05", "msg_Ev_sub_088_010_select_06"]), 0, true, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (0 == selection)
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "rejoice_small_mc");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_16", "sub_088", "npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
            else
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_17", "sub_088", "npc_main_pa_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_pa_boss", "normal");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.7, 0.03, -13.98, 6.85);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_pa_leader", 21.09, 0.02, -8.85, -105.38);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_pa_leader");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.77, 0.03, -13.93, 8.35);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_leader", 20.63, 0.02, -9.3, -110.05);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_boss", 15.67, 0.02, -10.21, -173.5);
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([18.73, 2.87, -12.06]);
            var cameraVector2:Dynamic = lua.Table.create([-0.81, -89.99, 0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int)));
            cameraMoveAngle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("t1_i012_2_mob_05", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.77, 0.03, -13.93, 8.35);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_leader", 20.63, 0.02, -8.99, -115.05);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_pa_boss", 15.67, 0.02, -10.21, -173.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_pa_boss", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_pa_boss", "Player", "head");
            var cameraVector3:Dynamic = lua.Table.create([18.73, 2.87, -12.06]);
            var cameraVector4:Dynamic = lua.Table.create([-0.81, -89.99, 0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            flagValue = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            flagValue();
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_18", "sub_088", "npc_main_pa_boss");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_MSBC_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([11.16, 1.01, -12.06]), lua.Table.create([-0.81, -89.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(9, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        flagValue = 0;
        flagValue = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_088_010_select_07", "msg_Ev_sub_088_010_select_08"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == flagValue)
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        untyped this.m_resultParam = flagValue;
    }
}
