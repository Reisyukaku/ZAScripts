package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C61160957653C7949")
@:expose("C61160957653C7949")
class Ev_sub_022_010 extends BaseSubQuest
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
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub022_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub022_001", "Player", "head");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub022_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub022_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub022_001");
        IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 174);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_010_talk_01", "sub_022", "npc_sub022_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_022_010_select_01", "msg_Ev_sub_022_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_FObj_Action();
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub022_001", 6);
            IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub022_001", 32, null, 3.72);
            IkScriptCommand.SetFacialTemplate("npc_sub022_001", "smile");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_010_talk_03", "sub_022", "npc_sub022_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.SetFacialTemplate("npc_sub022_001", "sad");
            IkScriptCommand.FObj_Set_Animation("npc_sub022_001", 175);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_022_010_talk_02", "sub_022", "npc_sub022_001");
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_FObj_Action();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        }
        this.m_resultParam = selection;
    }
}
