package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C44B4F424EC3025FC")
@:expose("C44B4F424EC3025FC")
class Ev_m06_2510 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m", "npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -625.85, 0.15, -196.63, 102.37);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_friend_m", -626.35, 0.0, -194.72, 146.47);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -624.59, 0.15, -197.22, -56.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -623.08, 0.63, -196.79, -90.29);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_friend_m", "npc_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-626.74, 1.63, -195.18]), lua.Table.create([-6.95, -41.79, -0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var explanationAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 14);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2510_talk_01", "main_06_01", "npc_main_ju_leader");
        var choices = (["msg_Ev_m06_2510_select_01", "msg_Ev_m06_2510_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(explanationAnimation);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ju_leader");
            var cameraPosition = lua.Table.create([-625.19, 0.67, -195.74]);
            var cameraAngle = lua.Table.create([15.02, -43.92, 0.0]);
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, cameraPosition, cameraAngle, 50.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_leader", "anger", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 24);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_syandera", 37);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2510_talk_03", "main_06_01", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_ju_leader", "normal", "npc_main_ju_leader");
            var resetAnimation = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ju_leader");
            var pokemonPlacement = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -623.7, 0.79, -196.74, -92.79);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimation);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pokemonPlacement);
        }
        else
        {
            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(explanationAnimation);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 22);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2510_talk_02", "main_06_01", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var resetAnimation = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_ju_leader");
            var pokemonPlacement = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -623.7, 0.8, -196.74, -92.79);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimation);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pokemonPlacement);
        };
        untyped this.m_resultParam = selection;
    }
}
