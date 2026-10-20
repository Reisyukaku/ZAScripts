package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CB94F2280BD21C528")
@:expose("CB94F2280BD21C528")
class Ev_sub_046_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub046_001"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T500");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub046_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub046_001");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub046_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub046_001", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub046_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub046_001");
        IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 174);
        IkScriptCommand.SetFacialTemplate("npc_sub046_001", "anger_mc");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_020_talk_09", "sub_046", "npc_sub046_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_046_020_select_01", "msg_Ev_sub_046_020_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub046_001", 6);
            IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 491);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_020_talk_04", "sub_046", "npc_sub046_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 175);
            IkScriptCommand.SetFacialTemplate("npc_sub046_001", "sad");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_020_talk_05", "sub_046", "npc_sub046_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000");
            IkScriptCommand.Wait_FObj_Action();
        }
        this.m_resultParam = selection;
    }
}
