package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C4304DC35B8C865F2")
@:expose("C4304DC35B8C865F2")
class Ev_sub_038_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub038_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub038_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub038_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub038_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub038_001", "Player", "head");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub038_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_038_010_talk_01", "sub_038", "npc_sub038_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_038_010_select_01", "msg_Ev_sub_038_010_select_02"], 0, true, false);
        IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub038_001");
            IkScriptCommand.FObj_Set_Animation("npc_sub038_001", 174);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_038_010_talk_04", "sub_038", "npc_sub038_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_038_010_talk_02", "sub_038", "npc_sub038_001");
            IkScriptCommand.HideMessageWindow();
        }
        this.m_resultParam = selection;
    }
}
