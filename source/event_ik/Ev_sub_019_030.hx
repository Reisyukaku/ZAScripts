package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C155BE65ECF0F2D4D")
@:expose("C155BE65ECF0F2D4D")
class Ev_sub_019_030 extends BaseSubQuest
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
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub019_002", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub019_002");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub019_002", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub019_002", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub019_001", "Player", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub019_002");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub019_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_030_talk_01", "sub_019", "npc_sub019_002");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_019_030_select_01", "msg_Ev_sub_019_030_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub019_002", 32, null, 5.85);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_030_talk_03", "sub_019", "npc_sub019_002");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_030_talk_04", "sub_019", "npc_sub019_002");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_019_030_talk_02", "sub_019", "npc_sub019_002");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
        }
        this.m_resultParam = selection;
    }
}
