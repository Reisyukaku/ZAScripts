package event_ik;

import main.event.ik.base.BaseSubQuest;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CDE39557247AD4277")
@:expose("CDE39557247AD4277")
class Ev_sub_013_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub012_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub012_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub012_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub012_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub012_001");
        var npcAnimation = IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 20);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_001_talk_01", "sub_013", "npc_sub012_001");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.Wait_FObj_Action(npcAnimation);
        IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 32, null, 5.85);
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_001_talk_02", "sub_013", "npc_sub012_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_001_talk_03", "sub_013", "npc_sub012_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_001_talk_04", "sub_013", "npc_sub012_001");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 18);
        IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_001_talk_06", "sub_013", "npc_sub012_001");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.PlayQuestOrderUI("sub_0013");
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
    }
}
