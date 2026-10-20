package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CD12EBF471C100383")
@:expose("CD12EBF471C100383")
class Ev_sub_020_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub020_001", "npc_pokemon_sub_020_001_01", "npc_pokemon_sub_020_002_01"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_LookAt_Obj("npc_sub020_001", "Player", "head");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_pokemon_sub_020_001_01", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_pokemon_sub_020_002_01", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub020_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_010_talk_01", "sub_020", "npc_sub020_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_020_010_select_01", "msg_Ev_sub_020_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub020_001", 6);
            IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub020_001", 72, null, 5.35);
            IkScriptCommand.SetFacialTemplate("npc_sub020_001", "rejoice_small_mc");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_010_talk_03", "sub_020", "npc_sub020_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub020_001", 175);
            IkScriptCommand.SetFacialTemplate("npc_sub020_001", "sad");
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_020_010_talk_02", "sub_020", "npc_sub020_001");
            IkScriptCommand.HideMessageWindow();
        }
        this.m_resultParam = selection;
    }
}
