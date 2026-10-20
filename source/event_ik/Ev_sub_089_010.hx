package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE766040C95C01C72")
@:expose("CE766040C95C01C72")
class Ev_sub_089_010 extends BaseSubQuest
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    public function new()
    {
        this.slot8 = 99;
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        // The latest script queries these flags here without using the results.
        main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_red");
        main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_yellow");
        main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_orange");
        main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_blue");
        main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_white");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub089_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub089_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub089_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub089_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub089_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_01", "sub_089", "npc_sub089_001");
        var asking = true;
        var result:Dynamic = 0;
        while (asking)
        {
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            // Topics whose flag is already set (Lua-truthy) are dropped from a fresh list each pass.
            var choices = ["msg_Ev_sub_089_010_select_01", "msg_Ev_sub_089_010_select_02", "msg_Ev_sub_089_010_select_03", "msg_Ev_sub_089_010_select_04", "msg_Ev_sub_089_010_select_05", "msg_Ev_sub_089_010_select_06"];
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_red")))
            {
                choices.remove("msg_Ev_sub_089_010_select_01");
            }
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_yellow")))
            {
                choices.remove("msg_Ev_sub_089_010_select_02");
            }
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_orange")))
            {
                choices.remove("msg_Ev_sub_089_010_select_03");
            }
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_blue")))
            {
                choices.remove("msg_Ev_sub_089_010_select_04");
            }
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_089_010_white")))
            {
                choices.remove("msg_Ev_sub_089_010_select_05");
            }
            result = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, result, true, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            // Dispatch on the chosen label, since the indices shift as topics are removed.
            var chosen:Dynamic = untyped choices[result];
            if (chosen == "msg_Ev_sub_089_010_select_01")
            {
                result = this.F03F447BA2161CC59(10, result, "msg_Ev_sub_089_010_select_01");
            }
            else if (chosen == "msg_Ev_sub_089_010_select_02")
            {
                result = this.F03F447BA2161CC59(20, result, "msg_Ev_sub_089_010_select_02");
            }
            else if (chosen == "msg_Ev_sub_089_010_select_03")
            {
                result = this.F03F447BA2161CC59(30, result, "msg_Ev_sub_089_010_select_03");
            }
            else if (chosen == "msg_Ev_sub_089_010_select_04")
            {
                result = this.F03F447BA2161CC59(40, result, "msg_Ev_sub_089_010_select_04");
            }
            else if (chosen == "msg_Ev_sub_089_010_select_05")
            {
                result = this.F03F447BA2161CC59(50, result, "msg_Ev_sub_089_010_select_05");
            }
            else if (chosen == "msg_Ev_sub_089_010_select_06")
            {
                result = 60;
                ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            }
            // slot8 is read live each pass; a matching result asks again with the cursor reset.
            if (result != this.slot8)
            {
                asking = false;
            }
            else
            {
                result = 0;
            }
        }
        this.m_resultParam = result;
    }

    public function F03F447BA2161CC59(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic):Dynamic
    {
        // arg0: value returned when the topic is accepted; arg1: current result; arg2: topic label.
        var topicIndex = -1;
        switch (arg2)
        {
            case "msg_Ev_sub_089_010_select_01":
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_02", "sub_089", "npc_sub089_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                topicIndex = 0;
            case "msg_Ev_sub_089_010_select_02":
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_03", "sub_089", "npc_sub089_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                topicIndex = 1;
            case "msg_Ev_sub_089_010_select_03":
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_04", "sub_089", "npc_sub089_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                topicIndex = 2;
            // Topics 4 and 5 use talk_06 and talk_05 respectively in the latest script.
            case "msg_Ev_sub_089_010_select_04":
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_06", "sub_089", "npc_sub089_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                topicIndex = 3;
            case "msg_Ev_sub_089_010_select_05":
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_010_talk_05", "sub_089", "npc_sub089_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                topicIndex = 4;
            default:
        }
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        // An unknown topic still opens the menu, with the cursor on the first entry.
        var cursor = 0;
        if (topicIndex >= 0)
        {
            cursor = topicIndex;
        }
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.SF78A8CD440C5E9F0(669, cursor);
        if (selection == null)
        {
            arg1 = this.slot8;
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_001_talk_04", "sub_089", "npc_sub089_001");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        }
        else if (topicIndex >= 0)
        {
            if (selection.f0DE6FCA9() == 669)
            {
                // Only the entry matching this topic is accepted; any other entry leaves arg1 as it is.
                if (selection.f9E86AD53() == topicIndex)
                {
                    arg1 = arg0;
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub089_001", 3);
                }
            }
            else
            {
                arg1 = this.slot8;
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_089_001_talk_04", "sub_089", "npc_sub089_001");
                ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            }
        }
        return arg1;
    }
}
