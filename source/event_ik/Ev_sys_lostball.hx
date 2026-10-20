package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C8D8642B922DF34B7")
@:expose("C8D8642B922DF34B7")
class Ev_sys_lostball extends main.event.ik.base.BaseSystemEvent
{
    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var slot14:Dynamic;

    public function new()
    {
        this.slot14 = 50;
        this.slot13 = 999;
        this.slot12 = 99999;
        this.slot11 = "npc_lostball_01";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.slot11 = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        this.FBA1C1BF976296FD5(this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(this.slot11, "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", this.slot11, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/lostball");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        if (main.event.ik.command.IkScriptCommand.S1AF0C501B61D452B() == false)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_01", "lostball", this.slot11);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_03", "lostball", this.slot11);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        var ballsRemain = false;
        var nothingToGive = false;
        var listCount:UInt = main.event.ik.command.IkScriptCommand.GetLostBallListMax();
        if (listCount > 0)
        {
            var ballTotal:UInt = main.event.ik.command.IkScriptCommand.GetLostBallItemBallMax();
            if (ballTotal > (this.slot12:UInt))
            {
                ballTotal = this.slot12;
            }
            main.event.ik.command.IkScriptCommand.WordSet_Number(0, ballTotal);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_04", "lostball", this.slot11);
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_lostball_select_01", "msg_lostball_select_02", "msg_lostball_select_03"], 0, true, false, null, null, "lostball");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            switch (selection)
            {
                case 0:
                    var owned:Dynamic = 0;
                    var given:UInt = 0;
                    var kinds = 0;
                    var notFound = false;
                    if (listCount == 1)
                    {
                        var ballName:Dynamic = "";
                        var searching = true;
                        var index:UInt = 0;
                        while (searching)
                        {
                            var data:Dynamic = main.event.ik.command.IkScriptCommand.GetLostBallItemData(index);
                            if (data.f1BE9B3B8() != 0)
                            {
                                ballName = main.event.ik.command.IkScriptCommand.ItemIdtoString(data.f1BE9B3B8());
                                searching = false;
                            }
                            else
                            {
                                index++;
                                if (index > (this.slot14:UInt))
                                {
                                    searching = false;
                                    notFound = true;
                                }
                            }
                        }
                        owned = main.event.ik.command.IkScriptCommand.GetSelectItemCount(ballName);
                        if ((untyped owned >= this.slot13) || notFound == true)
                        {
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_09", "lostball", this.slot11);
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            nothingToGive = true;
                        }
                        else
                        {
                            var npcAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 74);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                            // Fill up to the per-ball cap, limited by what is waiting.
                            given = untyped this.slot13 - owned;
                            if (given >= ballTotal)
                            {
                                given = ballTotal;
                                ballsRemain = false;
                            }
                            else
                            {
                                ballsRemain = true;
                            }
                            cppbindings.CDDCCFBA7.f1B77253E("lostball_cnt", 1);
                            main.event.ik.command.IkScriptCommand.WordSet_Number(0, given);
                            main.event.ik.command.IkScriptCommand.WordSet_Name_Item(1, ballName, given);
                            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_S_ITEM_GET_EVENT");
                            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_lostball_06", "lostball", this.slot11);
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcAnimation);
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
                        }
                    }
                    else
                    {
                        var ballName:Dynamic = "";
                        var searching = true;
                        var index:UInt = 0;
                        var found:UInt = 0;
                        while (searching)
                        {
                            var data:Dynamic = main.event.ik.command.IkScriptCommand.GetLostBallItemData(index);
                            if (data.f1BE9B3B8() != 0)
                            {
                                ballName = main.event.ik.command.IkScriptCommand.ItemIdtoString(data.f1BE9B3B8());
                                owned = main.event.ik.command.IkScriptCommand.GetSelectItemCount(ballName);
                                if (untyped owned < this.slot13)
                                {
                                    owned = untyped this.slot13 - owned;
                                    if ((owned:UInt) > (data.fCCD8B2EB():UInt))
                                    {
                                        given = untyped given + data.fCCD8B2EB();
                                    }
                                    else
                                    {
                                        given = untyped given + owned;
                                    }
                                    main.event.ik.command.IkScriptCommand.WordSet_Name_Item(1, ballName, given);
                                    kinds++;
                                }
                                found++;
                                if (found >= listCount)
                                {
                                    searching = false;
                                }
                            }
                            index++;
                            if (index > (this.slot14:UInt))
                            {
                                searching = false;
                            }
                        }
                        if (given == 0)
                        {
                            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_09", "lostball", this.slot11);
                            main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            nothingToGive = true;
                        }
                        else
                        {
                            cppbindings.CDDCCFBA7.f1B77253E("lostball_cnt", 1);
                            var npcAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 74);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                            var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
                            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                            main.event.ik.command.IkScriptCommand.WordSet_Number(0, given);
                            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_S_ITEM_GET_EVENT");
                            if (kinds > 1)
                            {
                                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_lostball_07", "lostball", this.slot11);
                                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            }
                            else
                            {
                                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_lostball_06", "lostball", this.slot11);
                                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            }
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcAnimation);
                            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
                        }
                        ballsRemain = !(given >= ballTotal);
                    }
                    main.event.ik.command.IkScriptCommand.RegisterLostBallItemData();
                case 1:
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_02", "lostball", this.slot11);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                case 2:
                default:
            }
        }
        else if (main.event.ik.command.IkScriptCommand.S1AF0C501B61D452B() == true)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_05", "lostball", this.slot11);
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_lostball_select_02", "msg_lostball_select_03"], 0, true, false, null, null, "lostball");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            switch (selection)
            {
                case 0:
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_02", "lostball", this.slot11);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                case 1:
                default:
            }
        }
        if (nothingToGive == false)
        {
            if (ballsRemain == true)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_10", "lostball", this.slot11);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_lostball_08", "lostball", this.slot11);
            }
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        if (main.event.ik.command.IkScriptCommand.S1AF0C501B61D452B() == false)
        {
            main.event.ik.command.IkScriptCommand.SC2ED36ECAB02EF7D(true);
        }
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
