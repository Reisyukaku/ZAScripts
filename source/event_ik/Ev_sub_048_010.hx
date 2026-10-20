package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C67B94A7249E739BD")
@:expose("C67B94A7249E739BD")
class Ev_sub_048_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub048_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub048_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub048_001", "head");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub048_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_048_010_talk_01", "sub_048", "npc_sub048_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_048_010_select_01", "msg_Ev_sub_048_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub048_001", 72, null, 5.35);
            IkScriptCommand.SetFacialTemplate("npc_sub048_001", "serious");
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_048_010_talk_03", "sub_048", "npc_sub048_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub048_001", 174);
            IkScriptCommand.SetFacialTemplate("npc_sub048_001", "serious");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_048_010_talk_02", "sub_048", "npc_sub048_001");
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_FObj_Action();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        }
        this.m_resultParam = selection;
    }
}
