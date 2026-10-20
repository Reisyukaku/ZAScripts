package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C2134F2A3F32272B7")
@:expose("C2134F2A3F32272B7")
class Ev_sub_121_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub121_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub121_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub121_001");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub121_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub121_001", "head");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub121_001");
        IkScriptCommand.SetFacialTemplate("npc_sub121_001", "serious");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_121_talk_07", "sub_121", "npc_sub121_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_121_select_01", "msg_Ev_sub_121_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub121_001", 3);
            IkScriptCommand.SetFacialTemplate("npc_sub121_001", "confident");
            IkScriptCommand.FObj_Set_Animation("npc_sub121_001", 175);
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_121_talk_09", "sub_121", "npc_sub121_001");
            IkScriptCommand.Wait_FObj_Action();
            IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub121_001", 32, null, 3.85);
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_121_talk_10", "sub_121", "npc_sub121_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.SetFacialTemplate("npc_sub121_001", "irritation");
            IkScriptCommand.FObj_Set_Animation("npc_sub121_001", 175);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_121_talk_08", "sub_121", "npc_sub121_001");
            IkScriptCommand.HideMessageWindow();
        }
        this.m_resultParam = selection;
    }
}
