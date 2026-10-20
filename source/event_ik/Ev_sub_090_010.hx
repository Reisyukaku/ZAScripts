package event_ik;

import main.event.ik.base.BaseSubQuest;
import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CC9242871DE235940")
@:expose("CC9242871DE235940")
class Ev_sub_090_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = ["npc_sub089_001", "npc_pokemon_sub090_001", "npc_pokemon_sub090_002", "npc_pokemon_sub090_003", "npc_pokemon_sub090_004", "npc_pokemon_sub090_005"];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.FObj_Set_Animation("Player", 1);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub089_001", "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub089_001");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub089_001", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_sub089_001", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_1", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_2", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_3", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_4", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub090_5", "Player", "head");
        IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub089_001");
        IkScriptCommand.Wait_FObj_Action();
        IkScriptCommand.S522136910C73A819("Player");
        IkScriptCommand.S522136910C73A819("npc_sub089_001");
        IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_010_talk_01", "sub_090", "npc_sub089_001");
        var selection = IkScriptCommand.ShowContextMenu(["msg_Ev_sub_090_010_select_01", "msg_Ev_sub_090_010_select_02"], 0, true, false);
        if (0 == selection)
        {
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 20);
            IkScriptCommand.ShowMessage(1, "msg_Ev_sub_090_010_talk_03", "sub_090", "npc_sub089_001");
            IkScriptCommand.HideMessageWindow();
            SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            IkScriptCommand.FadeOutType(7);
        }
        else
        {
            IkScriptCommand.FObj_Set_Animation("npc_sub089_001", 174);
            IkScriptCommand.ShowMessage(0, "msg_Ev_sub_090_010_talk_02", "sub_090", "npc_sub089_001");
            IkScriptCommand.HideMessageWindow();
        }
        this.m_resultParam = selection;
    }
}
