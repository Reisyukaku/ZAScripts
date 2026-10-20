package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C4DC7D128E2979065")
@:expose("C4DC7D128E2979065")
class Ev_sys_megarematch_win extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 2.54, 0.61, 7.83, 27.84);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_secretary", 3.08, 0.6, 8.86, -152.16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_secretary", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_secretary", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 31);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_main_secretary");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_END_A");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var clearTime = main.event.ik.command.IkScriptCommand.S3A10238EE795CF4D();
        var clearTimeParts = main.event.ik.command.IkScriptCommand.S9315000AFFA1ADE9(clearTime);
        main.event.ik.command.IkScriptCommand.WordSet_Number(3, clearTimeParts[0], 2, 2);
        main.event.ik.command.IkScriptCommand.WordSet_Number(4, clearTimeParts[1], 2, 2);
        main.event.ik.command.IkScriptCommand.WordSet_Number(5, clearTimeParts[2], 2, 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_05", "megarematch", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_secretary");
        if (main.event.ik.command.IkScriptCommand.SA11A44C26A0DAC52() == true)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_06", "megarematch", "npc_main_secretary");
            main.event.ik.command.IkScriptCommand.SF782104EEB758EBB();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_07", "megarematch", "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        // Faster clears earn more candy.
        var candyCount = (untyped clearTime < 180) ? 3 : 1;
        main.event.ik.command.IkScriptCommand.AddItem(main.event.ik.command.IkScriptCommand.S6F661D1718C5D7E9("ITEMID_KEIKENTIAME_3"), candyCount);
        main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_KEIKENTIAME_3", candyCount);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var selection:Dynamic = 0;
        var running = true;
        while (running)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_02", "megarematch", "npc_main_secretary");
            selection = event_ik.Ev_sys_megarematch.S1463948047021356();
            if (selection != 16)
            {
                main.event.ik.command.IkScriptCommand.SetWordSet(2, "megarematch", event_ik.Ev_sys_megarematch.S062729EC443620C2(selection));
                var recordTime = main.event.ik.command.IkScriptCommand.S22BBB0D49F41B44B(event_ik.Ev_sys_megarematch.S34AD86B7E5BB1526(selection));
                if (recordTime == 0)
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_03", "megarematch", "npc_main_secretary");
                }
                else
                {
                    var recordTimeParts = main.event.ik.command.IkScriptCommand.S9315000AFFA1ADE9(recordTime);
                    main.event.ik.command.IkScriptCommand.WordSet_Number(3, recordTimeParts[0], 2, 2);
                    main.event.ik.command.IkScriptCommand.WordSet_Number(4, recordTimeParts[1], 2, 2);
                    main.event.ik.command.IkScriptCommand.WordSet_Number(5, recordTimeParts[2], 2, 2);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_secretary", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_04", "megarematch", "npc_main_secretary");
                }
                if (main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_megarematch_select_17", "msg_megarematch_select_18"], 0, true, false) == 0)
                {
                    running = false;
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
            }
            else
            {
                running = false;
            }
        }
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        switch (selection)
        {
            case 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15:
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BOSS_01_SILENCE");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            case 16:
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_megarematch_talk_09", "megarematch", "npc_main_secretary");
        }
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.m_resultParam = selection;
    }
}
