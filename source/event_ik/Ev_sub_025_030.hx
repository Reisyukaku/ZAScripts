package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C915CB763D4165372")
@:expose("C915CB763D4165372")
class Ev_sub_025_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = ([]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub025_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub025_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub025_002", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub025_002");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub025_002");
        var result:Dynamic = 1;
        var partyCount:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        if (partyCount < 0 || partyCount > 1)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_030_talk_03", "sub_025", "npc_sub025_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_030_talk_01", "sub_025", "npc_sub025_002");
            result = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_025_030_select_01", "msg_Ev_sub_025_030_select_02"], 0, true, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if (0 == result)
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub025_002", "anger_mc");
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub025_002", 3);
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_025_030_talk_04", "sub_025", "npc_sub025_002");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_025_030_talk_02", "sub_025", "npc_sub025_002");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        m_resultParam = result;
    }
}
