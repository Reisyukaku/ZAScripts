package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CE8F53B4D8C47A62E")
@:expose("CE8F53B4D8C47A62E")
class Ev_sub_070_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub070_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub070_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub070_001");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub070_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub070_001", "head");
        IkScriptCommand.SetFacialTemplate("npc_sub070_001", "serious", "npc_occult_f_00");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub070_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_070_010_talk_01", "sub_070", "npc_sub070_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_070_010_select_01", "msg_Ev_sub_070_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub070_001", 3);
            IkScriptCommand.SetFacialTemplate("npc_sub070_001", "surprise2");
            IkScriptCommand.Wait_Time(1.5);
            IkScriptCommand.FObj_Set_Animation("npc_sub070_001", 174);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_070_010_talk_03", "sub_070", "npc_sub070_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub070_001", 175);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_070_010_talk_02", "sub_070", "npc_sub070_001");
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_FObj_Action();
        }
        this.m_resultParam = selection;
    }
}
