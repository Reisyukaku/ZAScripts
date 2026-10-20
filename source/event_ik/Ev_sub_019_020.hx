package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1558605ECF0C13C4")
@:expose("C1558605ECF0C13C4")
class Ev_sub_019_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub019_001", "npc_sub019_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -210.58, 0.15, -426.42, 163.15);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub019_001", -210.2, 0.14, -428.21, 3.13);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub019_002", -209.28, 0.14, -427.81, -58.66);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-209.93, 2.09, -424.9]), lua.Table.create([-3.9, 3.51, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-209.93, 1.49, -424.9]), lua.Table.create([-3.9, 3.51, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_001", 22);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_020_talk_01", "sub_019", "npc_sub019_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "npc_sub019_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub019_002", "anger_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_020_talk_02", "sub_019", "npc_sub019_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-209.73, 1.44, -427.13]), lua.Table.create([11.74, -32.17, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(3, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub019_002");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_020_talk_04", "sub_019", "npc_sub019_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub019_002", 1);
    }
}
