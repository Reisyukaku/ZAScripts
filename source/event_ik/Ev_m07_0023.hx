package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C09679D3BD48DA0AA")
@:expose("C09679D3BD48DA0AA")
class Ev_m07_0023 extends BaseMainScenario
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
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -539.04, 0.28, -802.03, -70.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_f", -540.43, 0.27, -802.05, 84.91);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-540.43, 1.77, -802.05]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main_friend_f", lua.Table.create([-539.04, 1.75, -802.03]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-538.34, 1.7, -803.04]), lua.Table.create([-4.82, 129.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T500");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var friendAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0023_talk_01", "main_07_01", "npc_main_friend_f");
        var choices = ["msg_Ev_m07_0023_select_01", "msg_Ev_m07_0023_select_02"];
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendAnimation);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "battle", "npc_main_friend_f");
            var responseAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 491);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0023_talk_03", "main_07_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(responseAnimation);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 1));
        }
        else
        {
            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(friendAnimation);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "rejoice_small", "npc_main_friend_f");
            var responseAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_friend_f", 19);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_0023_talk_02", "main_07_01", "npc_main_friend_f");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(responseAnimation);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_friend_f", "normal", "npc_main_friend_f");
        };
        untyped this.m_resultParam = selection;
    }
}
