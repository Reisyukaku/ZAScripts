package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C1562525ECF14507F")
@:expose("C1562525ECF14507F")
class Ev_sub_019_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub019_001", "npc_sub019_002"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_MUTE_T0");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub019_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub019_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub019_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub019_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "Player", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub019_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub019_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_010_talk_01", "sub_019", "npc_sub019_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_019_010_select_01", "msg_Ev_sub_019_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub019_001", 2);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_010_talk_03", "sub_019", "npc_sub019_001");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_010_talk_04", "sub_019", "npc_sub019_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub019_001", 174);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_010_talk_02", "sub_019", "npc_sub019_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        }
        this.m_resultParam = selection;
    }
}
