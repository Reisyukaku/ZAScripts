package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5C4BBE999EFC8E43")
@:expose("C5C4BBE999EFC8E43")
class Ev_m02_0030 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M12DB_T1000");
        var playerPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -666.53, 0.01, -881.72, -143.6);
        var rivalPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -667.51, 0.0, -883.08, 35.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerPlacement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalPlacement);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-665.01, 1.42, -881.29]), lua.Table.create([-3.94, 65.12, 0.0]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var rivalAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0030_talk_01", "main_02_01", "npc_main_rival_m");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m02_0030_select_01", "msg_Ev_m02_0030_select_02"]), 0, true, false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalAnimation);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            var rivalReaction = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0030_talk_03", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalReaction);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "smile_bitter", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0030_talk_02", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_rival_m", 1));
        untyped this.m_resultParam = selection;
    }
}
