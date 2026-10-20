package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C110C4BA291D85F5E")
@:expose("C110C4BA291D85F5E")
class Ev_m02_1045 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_researcher"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_MENU_INIT");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -5.31, 0.06, 2.36, -172.83);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_researcher", -5.32, 0.049, 1.01, 6.62);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.87, 1.45, 1.75]), lua.Table.create([3.89, 34.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1045_talk_01", "main_02_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1045_talk_02", "main_02_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-4.25, 1.54, 3.26]), lua.Table.create([-10.58, 38.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1045_talk_03", "main_02_01", "npc_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1045_talk_04", "main_02_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1045_talk_05", "main_02_01", "npc_main_researcher");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small");
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 29);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_1045_talk_06", "main_02_01", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_researcher"));
    }
}
