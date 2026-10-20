package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB9591480BD2A01E3")
@:expose("CB9591480BD2A01E3")
class Ev_sub_046_010 extends BaseSubQuest
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    public function new()
    {
        this.slot9 = "";
        this.slot8 = 999;
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub046_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub046_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub046_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub046_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub046_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub046_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub046_001");
        main.event.ik.command.IkScriptCommand.S00955FA08523FC6C();
        main.event.ik.command.IkScriptCommand.Suspend();
        var selection:Dynamic = 0;
        var choosing = true;
        while (choosing)
        {
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_001_talk_10", "sub_046", "npc_sub046_001");
            var destination:Dynamic = this.F16F22E9EC5ACB832();
            if (destination == 2)
            {
                selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_taxi_select_01_03_04", "msg_taxi_select_01_03_10"], 0, true, false, null, null, "taxi");
                if (selection == 0)
                {
                    choosing = false;
                }
            }
            else
            {
                if (destination == this.slot8)
                {
                    choosing = false;
                    selection = this.slot8;
                }
                else
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 175);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_001_talk_11", "sub_046", "npc_sub046_001");
                }
            }
        }
        if (selection == this.slot8)
        {
            main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
            main.event.ik.command.IkScriptCommand.Suspend();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 175);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "sad");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_001_talk_06", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 20);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "normal");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_001_talk_07", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub046_001", 174);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub046_001", "serious");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_001_talk_09", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_ON");
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_START_LOOP");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T1000");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var fare = 710;
            main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_01", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_02", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_03", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_04", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_05", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_06", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END_SUB_010_01");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_046_010_talk_07", "sub_046", "npc_sub046_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_08", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_START_LOOP_SUB_010");
            main.event.ik.command.IkScriptCommand.Wait_Time(3.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_09", "sub_046", "npc_sub046_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_046_010_talk_10", "sub_046", "npc_sub046_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END_SUB_010_02");
            main.event.ik.command.IkScriptCommand.Wait_Time(3.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_11", "sub_046", "npc_sub046_001");
            if (main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_046_010_select_03", "msg_Ev_sub_046_010_select_04"], 0, false, false) == 0)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_12", "sub_046", "npc_sub046_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END_SUB046_ARRIVE");
            }
            else
            {
                var money:UInt = main.event.ik.command.IkScriptCommand.GetCurrentMoney();
                if (money >= (fare:UInt))
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_13", "sub_046", "npc_sub046_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.S7A3F143B7E651BA6(-fare, false);
                    main.event.ik.command.IkScriptCommand.Suspend();
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END_SUB046_ARRIVE");
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                }
                else
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_046_010_talk_14", "sub_046", "npc_sub046_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    // Take whatever money remains.
                    if (money > 0)
                    {
                        main.event.ik.command.IkScriptCommand.S7A3F143B7E651BA6(-(money:Int), false);
                        main.event.ik.command.IkScriptCommand.Suspend();
                    }
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END_SUB046_ARRIVE");
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
                }
            }
        }
        main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
        main.event.ik.command.IkScriptCommand.Suspend();
        this.m_resultParam = selection;
    }

    public function F16F22E9EC5ACB832():Dynamic
    {
        var labels = new Array<Dynamic>();
        var count:Dynamic = main.event.ik.command.IkScriptCommand.GetTaxiDestinationCategoryDataSize();
        var index:Float = 0;
        while (index < count)
        {
            index = index + 1;
            var category = index - 1;
            untyped labels[category] = main.event.ik.command.IkScriptCommand.GetTaxiDestinationCategoryName(category);
        }
        untyped labels[count] = "msg_taxi_select_02";
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(labels, 0, true, false, null, null, "taxi");
        if (selection == count)
        {
            selection = slot8;
        }
        return selection;
    }
}
