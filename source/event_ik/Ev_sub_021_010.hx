package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C95C6FD8522361C54")
@:expose("C95C6FD8522361C54")
class Ev_sub_021_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub021_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub021_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub021_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub021_001", "Player", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub021_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub021_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_021_010_talk_01", "sub_021", "npc_sub021_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_021_010_select_01", "msg_Ev_sub_021_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub021_001", 32, null, 3.75);
            IkScriptCommand.SetFacialTemplate("npc_sub021_001", "anger");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_021_010_talk_03", "sub_021", "npc_sub021_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T3000");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub021_001", 174);
            IkScriptCommand.SetFacialTemplate("npc_sub021_001", "smile");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_021_010_talk_02", "sub_021", "npc_sub021_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T3000");
        }
        this.m_resultParam = selection;
    }
}
