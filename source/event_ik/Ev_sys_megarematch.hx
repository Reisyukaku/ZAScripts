package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C0E14B526E65D8E8C")
@:expose("C0E14B526E65D8E8C")
class Ev_sys_megarematch extends main.event.ik.base.BaseSystemEvent
{
    @:hashAbi("S81E0610BF8B9337C")
    public static var S81E0610BF8B9337C:Dynamic = ["msg_megarematch_select_00", "msg_megarematch_select_01", "msg_megarematch_select_02", "msg_megarematch_select_03", "msg_megarematch_select_05", "msg_megarematch_select_06", "msg_megarematch_select_07", "msg_megarematch_select_08", "msg_megarematch_select_09", "msg_megarematch_select_10", "msg_megarematch_select_11", "msg_megarematch_select_12", "msg_megarematch_select_13", "msg_megarematch_select_14", "msg_megarematch_select_15", "msg_megarematch_select_16", "msg_megarematch_select_04"];

    @:hashAbi("SD0F61B3481E43C08")
    public static var SD0F61B3481E43C08:Dynamic = ["spn_boss_0359_sim", "spn_boss_0080_sim", "spn_boss_0323_sim", "spn_boss_0071_sim", "spn_boss_0015_sim", "spn_boss_0701_sim", "spn_boss_0354_sim", "spn_boss_0181_sim", "spn_boss_0689_sim", "spn_boss_0303_sim", "spn_boss_0478_sim", "spn_boss_0334_sim", "spn_boss_0003_sim", "spn_boss_0149_sim", "spn_boss_0248_sim", "spn_boss_0121_sim", ""];

    public function new()
    {
        super();
    }

    public static function S1463948047021356():Dynamic
    {
        return main.event.ik.command.IkScriptCommand.ShowContextMenu(event_ik.Ev_sys_megarematch.S81E0610BF8B9337C, 0, true, false);
    }

    public static function S062729EC443620C2(?arg0:Dynamic):Dynamic
    {
        return untyped event_ik.Ev_sys_megarematch.S81E0610BF8B9337C[arg0];
    }

    public static function S34AD86B7E5BB1526(?arg0:Dynamic):Dynamic
    {
        return untyped event_ik.Ev_sys_megarematch.SD0F61B3481E43C08[arg0];
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.FBA1C1BF976296FD5();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_main_secretary", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_secretary", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_secretary", "Player", "head");
        // Index 16 is the final "quit" entry of the boss menu.
        var selection:Dynamic = 0;
        var choosing = true;
        while (choosing)
        {
            lua.abi.Host.setGlobal("_hx_do_first_1", false);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_01", "megarematch", "npc_main_secretary");
            selection = S1463948047021356();
            if (selection != 16)
            {
                // Both helpers forward all of their results.
                main.event.ik.command.IkScriptCommand.SetWordSet(2, "megarematch", S062729EC443620C2(selection));
                var bestRecord:Dynamic = main.event.ik.command.IkScriptCommand.S22BBB0D49F41B44B(S34AD86B7E5BB1526(selection));
                if (bestRecord == 0)
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_03", "megarematch", "npc_main_secretary");
                }
                else
                {
                    var recordDigits:Dynamic = main.event.ik.command.IkScriptCommand.S9315000AFFA1ADE9(bestRecord);
                    main.event.ik.command.IkScriptCommand.WordSet_Number(3, recordDigits[0], 2, 2);
                    main.event.ik.command.IkScriptCommand.WordSet_Number(4, recordDigits[1], 2, 2);
                    main.event.ik.command.IkScriptCommand.WordSet_Number(5, recordDigits[2], 2, 2);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_04", "megarematch", "npc_main_secretary");
                }
                var confirmation:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_megarematch_select_17", "msg_megarematch_select_18"], 0, true, false);
                if (confirmation == 0)
                {
                    choosing = false;
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
            }
            else
            {
                choosing = false;
            }
        }
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        var returnPartner = true;
        switch (selection)
        {
            case 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15:
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_SILENCE");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            case 16:
                returnPartner = false;
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_09", "megarematch", "npc_main_secretary");
            default:
        }
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (returnPartner)
        {
            main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
            main.event.ik.command.IkScriptCommand.Suspend();
        }
        this.m_resultParam = selection;
    }
}
