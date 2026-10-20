package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C73B8EED48F4CE9C6")
@:expose("C73B8EED48F4CE9C6")
class Ev_sub_041_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub041_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.SetFacialTemplate("npc_sub041_001", "rejoice_big_mc");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub041_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub041_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub041_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub041_001", "Player", "head");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub041_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_041_010_talk_01", "sub_041", "npc_sub041_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_041_010_select_01", "msg_Ev_sub_041_010_select_02"], 0, true, false);
        IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub041_001", 3);
            IkScriptCommand.FObj_Set_Animation("npc_sub041_001", 174);
            IkScriptCommand.SetFacialTemplate("npc_sub041_001", "unique");
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_041_010_talk_03", "sub_041");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub041_001", 175);
            IkScriptCommand.SetFacialTemplate("npc_sub041_001", "anger");
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_041_010_talk_02", "sub_041");
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_FObj_Action();
        }
        this.m_resultParam = selection;
    }
}
