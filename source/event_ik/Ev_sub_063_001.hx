package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C4E4F9B1B680227B4")
@:expose("C4E4F9B1B680227B4")
class Ev_sub_063_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub063_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -393.45, -1.32, -803.51, 94.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub063_001", -391.98, -1.34, -803.51, -89.17);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub063_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub063_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub063_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub063_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-392.83, -0.75, -803.27]), lua.Table.create([11.94, -71.69, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([-392.83, -0.1, -803.27]), lua.Table.create([11.94, -71.69, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub063_001", 491);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_001_talk_01", "sub_063", "npc_sub063_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub063_001", "confident");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub063_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_001_talk_02", "sub_063", "npc_sub063_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-394.39, 0.01, -802.51]), lua.Table.create([-2.23, -55.07, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub063_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub063_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_001_talk_03", "sub_063", "npc_sub063_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub063_001", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub063_001", 33, null, 4.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_001_talk_04", "sub_063", "npc_sub063_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0063");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub063_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub063_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_063_001_talk_05", "sub_063", "npc_sub063_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub063_001", 1);
    }
}
