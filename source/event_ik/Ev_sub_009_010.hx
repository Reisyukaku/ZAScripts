package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CAB0D25858132113A")
@:expose("CAB0D25858132113A")
class Ev_sub_009_010 extends BaseSubQuest
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
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub009_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub009_001");
        IkScriptCommand.SetFacialTemplate("npc_sub009_001", "sad", "npc_sub009_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub009_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_010_talk_01", "sub_009", "npc_sub009_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_009_010_select_01", "msg_Ev_sub_009_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub009_001");
            IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub009_001", 32, null, 3.85);
            IkScriptCommand.SetFacialTemplate("npc_sub009_001", "smile_bitter");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_010_talk_03", "sub_009", "npc_sub009_001");
            IkScriptCommand.SetFacialTemplate("npc_sub009_001", "serious");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_010_talk_04", "sub_009", "npc_sub009_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub009_001", 174);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_009_010_talk_02", "sub_009", "npc_sub009_001");
            IkScriptCommand.HideMessageWindow();
        }
        this.m_resultParam = selection;
    }
}
