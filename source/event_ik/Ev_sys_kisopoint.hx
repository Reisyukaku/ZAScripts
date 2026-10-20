package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CFE81B5DE0AD3BA4C")
@:expose("CFE81B5DE0AD3BA4C")
class Ev_sys_kisopoint extends BaseEvent
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    public function new()
    {
        this.slot8 = "npc_kisoreset_01";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = [slot8];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var npcName:Dynamic = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(this.slot8, "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal_noColCheck("Player", this.slot8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var textResourcePath:Dynamic = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/reset");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        main.event.ik.command.IkScriptCommand.WordSet_Number(2, 5);
        if (!main.event.ik.command.IkScriptCommand.GetFlagValue("flag_reset_kisopoint_first"))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_01", "reset", npcName);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_02", "reset", npcName);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        var running = true;
        while (running)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_05", "reset", npcName);
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_reset_select_01", "msg_reset_select_03", "msg_reset_select_02"], 0, true, false, null, null, "reset");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            switch (selection)
            {
                case 0:
                    var shardCount:UInt = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_MEGAKAKERA");
                    if (shardCount >= 5)
                    {
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_08", "reset", npcName);
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
                        var pokemon:Dynamic = main.event.ik.command.IkScriptCommand.S007A70B0AFF2E6D0(0);
                        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                        if (pokemon != null)
                        {
                            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                            main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(3, pokemon);
                            if (pokemon.fA041A35C() == 0)
                            {
                                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_10", "reset", npcName);
                                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                            }
                            else
                            {
                                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_09", "reset", npcName);
                                var confirmation:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_reset_select_07", "msg_reset_select_08"], null, true, null, null, null, "reset");
                                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                if (confirmation == 0)
                                {
                                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                                    main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template(this.slot8, 6);
                                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_11", "reset", npcName);
                                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 2);
                                    main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "serious");
                                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_KISOPOINT_NPC");
                                    main.event.ik.command.IkScriptCommand.Fade_Out("White", 2.5);
                                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_12", "reset", npcName);
                                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                                    // Clear the effort values of all six stats.
                                    for (powerId in 0...cast(6, Int))
                                    {
                                        pokemon.f6DA17C62(cast(powerId, Int), 0);
                                    }
                                    var boxSelection:Dynamic = cppbindings.C56DE81E7.f0CD8FF74();
                                    if (!boxSelection.f32F564D5())
                                    {
                                        main.event.ik.command.BoxSingleSelectCommand.OverrideSelectBoxPokemon(pokemon);
                                    }
                                    main.event.ik.command.IkScriptCommand.ModifyItemNum("ITEMID_MEGAKAKERA", -5);
                                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
                                    main.event.ik.command.IkScriptCommand.Camera_Easy_Normal_noColCheck("Player", this.slot8);
                                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                                    main.event.ik.command.IkScriptCommand.Fade_In("White", 2.0);
                                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_reset_talk_13", "reset", npcName);
                                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                    main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal");
                                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 1);
                                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_14", "reset", npcName);
                                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                                }
                                running = false;
                            }
                        }
                    }
                    else
                    {
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_07", "reset", npcName);
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        running = false;
                    }
                case 1:
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_06", "reset", npcName);
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                case 2:
                    running = false;
                default:
                    running = false;
            }
        }
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_reset_talk_15", "reset", npcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
        main.event.ik.command.IkScriptCommand.SetFlagValue("flag_reset_kisopoint_first", true);
    }
}
