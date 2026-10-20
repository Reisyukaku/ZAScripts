package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC621B8AB84FC3A18")
@:expose("CC621B8AB84FC3A18")
class Ev_m02_2020 extends BaseMainScenario
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
        var playerPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -666.53, 0.01, -881.72, -143.6);
        var rivalPlacement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -667.51, 0.0, -883.08, 35.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerPlacement);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(rivalPlacement);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-665.01, 1.42, -881.29]), lua.Table.create([-3.94, 65.12, 0.0]), 30.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2020_talk_01", "main_02_01", "npc_main_rival_m");
        var choices:Dynamic = (["msg_Ev_m02_2020_select_01", "msg_Ev_m02_2020_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((1 == selection)))
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 19));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "lose", "npc_main_rival_m");
            var declineAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 19);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2020_talk_02", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(declineAnimation);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "rejoice_small", "npc_main_rival_m");
            var agreeAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2020_talk_03", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(agreeAnimation);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("AREA_NIGHTTIME");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_rival_m", "normal", "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("npc_main_rival_m", 1));
        untyped this.m_resultParam = selection;
    }
}
