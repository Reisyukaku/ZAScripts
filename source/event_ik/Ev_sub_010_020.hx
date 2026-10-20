package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C0397F633A3CE1B93")
@:expose("C0397F633A3CE1B93")
class Ev_sub_010_020 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub010_001", "npc_sub010_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -731.01, 5.23, -625.23, 63.98);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_sub010_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_sub010_002", "Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-732.27, 7.27, -624.72]), lua.Table.create([-8.65, -85.0, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-732.27, 6.72, -624.72]), lua.Table.create([-8.65, -85.0, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 22);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_020_talk_01", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-730.26, 6.84, -624.07]), lua.Table.create([0.0, -93.76, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_020_talk_02", "sub_010", "npc_sub010_002");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_020_talk_03", "sub_010", "npc_sub010_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_002", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_002", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("Player", 0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub010_001", 6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_010_020_talk_04", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub010_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub010_001", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_010_020_talk_05", "sub_010", "npc_sub010_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub010_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub010_002");
    }
}
