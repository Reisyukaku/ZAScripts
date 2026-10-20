package event_ik;

import main.event.ik.command.IkScriptCommand;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7765C64DE6ED8001")
@:expose("C7765C64DE6ED8001")
class Ev_sub_039_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub039_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub039_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub039_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub039_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub039_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub039_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub039_001");
        var selection:Dynamic = 0;
        var hasType = main.event.ik.command.IkScriptCommand.IsTypeAtParty(2);
        if (hasType == false)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_039_002_talk_01", "sub_039", "npc_sub039_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            selection = 1;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub039_001", 174);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub039_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_039_010_talk_01", "sub_039", "npc_sub039_001");
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_039_010_select_01", "msg_Ev_sub_039_010_select_02"], 0, true, false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            if (selection == 0)
            {
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub039_001", 7);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub039_001", 491);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub039_001", "anger_mc");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_039_010_talk_03", "sub_039", "npc_sub039_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub039_001", "normal");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_039_010_talk_02", "sub_039", "npc_sub039_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        untyped this.m_resultParam = selection;
    }
}
