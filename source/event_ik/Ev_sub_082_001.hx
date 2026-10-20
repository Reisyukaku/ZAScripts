package event_ik;

import main.event.ik.command.IkScriptCommand;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C679D2327766E7BDD")
@:expose("C679D2327766E7BDD")
class Ev_sub_082_001 extends BaseSubQuest
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
        var wasOrdered = IkScriptCommand.GetFlagValue("flag_Ev_sub_082_001");
        if (wasOrdered == false)
        {
            IkScriptCommand.FObj_Set_Animation("Player", 1);
            IkScriptCommand.FObj_LookAt_Obj("npc_t1_i004b_0001", "Player", "head");
            IkScriptCommand.FObj_LookAt_Obj("Player", "npc_t1_i004b_0001", "head");
            IkScriptCommand.Wait_FObj_Action();
        }
        IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_01", "restaurant", "npc_t1_i004b_0001");
        IkScriptCommand.ShowMessage(0, "msg_restaurant_02_sub_talk_01", "restaurant", "npc_t1_i004b_0001");
        var selection:Dynamic = 1;
        while (selection == 1)
        {
            selection = IkScriptCommand.ShowContextMenu(["msg_restaurant_01_select_01", "msg_restaurant_01_select_02", "msg_restaurant_01_select_03"], 0, true, false);
            if (selection == 0)
            {
                IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_03", "restaurant", "npc_t1_i004b_0001");
                IkScriptCommand.HideMessageWindow();
                if (wasOrdered == false)
                {
                    IkScriptCommand.PlayQuestOrderUI("sub_0082");
                }
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                IkScriptCommand.Wait_Fade();
                m_resultParam = 1;
            }
            else if (selection == 1)
            {
                IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_05", "restaurant", "npc_t1_i004b_0001");
            }
            else if (selection == 2)
            {
                IkScriptCommand.ShowMessage(0, "msg_restaurant_02_talk_06", "restaurant", "npc_t1_i004b_0001");
                IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            }
        }
    }
}
