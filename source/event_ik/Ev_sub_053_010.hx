package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CEF0F8B0D33A61E11")
@:expose("CEF0F8B0D33A61E11")
class Ev_sub_053_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub053_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub053_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub053_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub053_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub053_001", "Player", "head");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub053_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_053_010_talk_01", "sub_053", "npc_sub053_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_053_010_select_01", "msg_Ev_sub_053_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub053_001", 3);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_053_010_talk_03", "sub_053", "npc_sub053_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_053_010_talk_02", "sub_053", "npc_sub053_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        }
        this.m_resultParam = selection;
    }
}
