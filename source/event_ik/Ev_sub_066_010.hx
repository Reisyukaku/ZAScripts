package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C8DB7A9FEAFA147A1")
@:expose("C8DB7A9FEAFA147A1")
class Ev_sub_066_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub066_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub066_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub066_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub066_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub066_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub066_001");
        var result:Dynamic = 0;
        var hasType = main.event.ik.command.IkScriptCommand.IsTypeAtParty(7);
        if (((false == hasType)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub066_001", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_066_010_talk_01", "sub_066", "npc_sub066_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            result = 1;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_066_010_talk_02", "sub_066", "npc_sub066_001");
            var choices = (["msg_Ev_sub_066_010_select_01", "msg_Ev_sub_066_010_select_02"]);
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
            result = selection;
            if (((0 == result)))
            {
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub066_001", 174);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub066_001", 3);
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub066_001", "unique2");
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_066_010_talk_04", "sub_066");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub066_001", 175);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_066_010_talk_03", "sub_066", "npc_sub066_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            };
        };
        untyped this.m_resultParam = result;
    }
}
