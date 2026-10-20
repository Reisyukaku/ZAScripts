package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C458BF7BB8446E11F")
@:expose("C458BF7BB8446E11F")
class Ev_sub_114_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub114_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var firstUpgradeComplete:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_complete_first_pluswaza_event");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub114_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub114_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub114_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub114_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub114_001");
        var selection:Dynamic = 0;
        if ((true == firstUpgradeComplete))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_010_talk_01", "sub_114", "npc_sub114_001");
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_114_010_select_01", "msg_Ev_sub_114_010_select_02", "msg_Ev_sub_114_010_select_03"], 0, true, false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            if ((0 == selection))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 11);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "serious");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_010_talk_03", "sub_114", "npc_sub114_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else if ((1 == selection))
            {
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            }
            else if ((2 == selection))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 174);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_010_talk_02", "sub_114", "npc_sub114_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_010_talk_05", "sub_114", "npc_sub114_001");
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_114_010_select_01", "msg_Ev_sub_114_010_select_03"], 0, true, false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            if ((0 == selection))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 11);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "serious");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_010_talk_03", "sub_114", "npc_sub114_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub114_001", 174);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub114_001", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_114_010_talk_02", "sub_114", "npc_sub114_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        untyped this.m_resultParam = selection;
    }
}
