package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CEC8032ADECDC74B5")
@:expose("CEC8032ADECDC74B5")
class Ev_sub_040_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub040_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub040_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub040_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub040_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub040_001", "Player", "head");
        var rain:Dynamic = main.event.ik.command.IkScriptCommand.IsCheckWeather("rain");
        var storm:Dynamic = main.event.ik.command.IkScriptCommand.IsCheckWeather("storm");
        var selection:Dynamic = 0;
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub040_001");
        if (rain == false && storm == false)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_010_talk_01", "sub_040", "npc_sub040_001");
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_040_010_select_01", "msg_Ev_sub_040_010_select_02"], 0, true, false);
            if (((0 == selection)))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub040_001", 3);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 21);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_010_talk_05", "sub_040", "npc_sub040_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_010_talk_03", "sub_040", "npc_sub040_001");
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_010_talk_02", "sub_040", "npc_sub040_001");
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_040_010_select_03", "msg_Ev_sub_040_010_select_04"], 0, true, false);
            if (((0 == selection)))
            {
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub040_001", 3);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 20);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_040_010_talk_07", "sub_040", "npc_sub040_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                var reactionAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub040_001", 22);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_040_010_talk_04", "sub_040", "npc_sub040_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(reactionAnimation);
            };
        };
        untyped this.m_resultParam = selection;
    }
}
