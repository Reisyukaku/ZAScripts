package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C1725FE2EE09A09CC")
@:expose("C1725FE2EE09A09CC")
class Ev_sub_065_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub065_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub065_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub065_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub065_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub065_001", "Player", "head");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub065_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_010_talk_01", "sub_065", "npc_sub065_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_065_010_select_01", "msg_Ev_sub_065_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub065_001", 3);
            IkScriptCommand.SetFacialTemplate("npc_sub065_001", "rejoice_small_mc");
            IkScriptCommand.FObj_Set_Animation("npc_sub065_001", 174);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_010_talk_03", "sub_065", "npc_sub065_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_065_010_talk_02", "sub_065", "npc_sub065_001");
            IkScriptCommand.HideMessageWindow();
        }
        this.m_resultParam = selection;
    }
}
