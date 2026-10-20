package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C996F236A338FDC8F")
@:expose("C996F236A338FDC8F")
class Ev_sub_084_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["restaurant"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var wasOrdered = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_084_001");
        if (wasOrdered == false)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_t1_i004d_0001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1_i004d_0001", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_talk_01", "restaurant", "npc_t1_i004d_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_sub_talk_01", "restaurant", "npc_t1_i004d_0001");
        var selection:Dynamic = 1;
        while (selection == 1)
        {
            selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_restaurant_01_select_01", "msg_restaurant_01_select_02", "msg_restaurant_01_select_03"], 0, true, false);
            if (selection == 0)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_talk_03", "restaurant", "npc_t1_i004d_0001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                if (wasOrdered == false)
                {
                    main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0084");
                }
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                m_resultParam = 1;
            }
            else if (selection == 1)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_talk_05", "restaurant", "npc_t1_i004d_0001");
            }
            else if (selection == 2)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_restaurant_04_talk_06", "restaurant", "npc_t1_i004d_0001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            }
        }
    }
}
