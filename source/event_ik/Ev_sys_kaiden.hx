package event_ik;

import main.event.ik.command.IkScriptCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CEEDA517F9C5EE072")
@:expose("CEEDA517F9C5EE072")
class Ev_sys_kaiden extends main.event.ik.base.BaseSystemEvent
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
        this.slot14 = "";
        this.slot13 = "ITEMID_KAIDENNOTANE";
        this.slot12 = "flag_complete_first_pluswaza_event";
        this.slot11 = "moveplus";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_kaiden_01"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        FBA1C1BF976296FD5();
        if (main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_114") == 10)
        {
            slot14 = "npc_sub114_001";
        }
        else
        {
            slot14 = "npc_kaiden_01";
        }
        if (main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE") == 51200)
        {
            slot14 = "npc_main05_0001";
        }
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(slot14, "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", slot14);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", slot14, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(slot14, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_114") == 10)
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/" + Std.string(slot11));
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        if (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue(slot12)))
        {
            FirstPlusWazaSequence();
            main.event.ik.command.IkScriptCommand.SetFlagValue(slot12, true);
        }
        ConfirmEvolutionPlusWaza("msg_move_01");
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }

    @:hashAbi("F6FD5DDCE1500EF85")
    public function FirstPlusWazaSequence():Dynamic
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_move_event_01", this.slot11, this.slot14);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot14, "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_move_event_02", this.slot11, this.slot14);
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_move_event_select_01", "msg_move_event_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot14, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_move_event_03", this.slot11, this.slot14);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot14, "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_move_event_04", this.slot11, this.slot14);
        return null;
    }

    @:hashAbi("F772868BCA19EAF15")
    public function ConfirmEvolutionPlusWaza(?messageLabel:Dynamic):Dynamic
    {
        var selection:Dynamic = IkScriptCommand.ShowMessageAndContext(messageLabel, slot11, slot14, ["msg_move_select_01", "msg_move_select_02"]);
        if (selection == 0)
        {
            if (IkScriptCommand.GetSelectItemCount(slot13) == 0)
            {
                IkScriptCommand.ShowMessage(0, "msg_move_10", slot11, slot14);
                IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FINISH");
                return null;
            }
            IkScriptCommand.ShowMessage(0, "msg_move_02", slot11, slot14);
            IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var pokemon:Dynamic = main.event.ik.command.BoxSingleSelectCommand.StartBoxSingleSelectMode(null, 6);
            if (pokemon == null)
            {
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                IkScriptCommand.ShowMessage(0, "msg_move_12", slot11, slot14);
                IkScriptCommand.HideMessageWindow();
                IkScriptCommand.Wait_FObj_Action();
                return null;
            }
            WazaSelectSequence(pokemon);
        }
        else
        {
            IkScriptCommand.SetFacialTemplate(slot14, "rejoice_small_mc");
            IkScriptCommand.FObj_Set_Animation(slot14, 174);
            IkScriptCommand.ShowMessage(0, "msg_move_12", slot11, slot14);
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_FObj_Action();
            IkScriptCommand.SetFacialTemplate(slot14, "normal");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FINISH");
        }
        return null;
    }

    @:hashAbi("FB35AA59B27F5CD71")
    public function WazaSelectSequence(?param:Dynamic):Dynamic
    {
        var moves:Array<Dynamic> = GetCanConvertPlusWazaList(param);
        if (moves.length == 0)
        {
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
            IkScriptCommand.WordSet_Name_Mons(2, cast(param.f0DE6FCA9(), Int));
            IkScriptCommand.ShowMessage(0, "msg_move_11", slot11, slot14);
            IkScriptCommand.HideMessageWindow();
            return null;
        }
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
        IkScriptCommand.ShowMessage(0, "msg_move_03", slot11, slot14);
        var choices = new Array<Dynamic>();
        for (move in moves)
        {
            choices.push(IkScriptCommand.CreateWazaText("msg_move_select_03", slot11, 3, move));
        }
        var selection:Dynamic = IkScriptCommand.ShowContextMenuWithTag(choices, null, null, null, null, null, slot11);
        IkScriptCommand.WordSet_Name_Mons(2, cast(param.f0DE6FCA9(), Int));
        IkScriptCommand.WordSet_Name_Waza(3, moves[selection]);
        IkScriptCommand.FObj_Set_Animation(slot14, 174);
        IkScriptCommand.ShowMessage(0, "msg_move_04", slot11, slot14);
        var confirmation:Dynamic = IkScriptCommand.ShowContextMenuWithTag([IkScriptCommand.CreatePlaneText("msg_move_select_04", slot11), IkScriptCommand.CreatePlaneText("msg_move_select_05", slot11)], null, true, null, null, null, slot11);
        if (confirmation == 0)
        {
            cppbindings.C56DE81E7.fB62C2794(slot13, -1);
            param.fD37510D4(moves[selection]);
            var currentSelection:Dynamic = cppbindings.C56DE81E7.f0CD8FF74();
            if (!lua.abi.Host.truthy(currentSelection.f32F564D5()))
            {
                main.event.ik.command.BoxSingleSelectCommand.OverrideSelectBoxPokemon(param);
            }
            IkScriptCommand.FObj_Set_Animation(slot14, 491);
            IkScriptCommand.SetFacialTemplate(slot14, "serious");
            IkScriptCommand.Wait_FObj_Action();
            IkScriptCommand.FObj_LookAt_End(slot14);
            IkScriptCommand.FObj_Set_Visibility("Player", false);
            IkScriptCommand.Camera_SetEasy_AnyAngle_Template(slot14, 6);
            IkScriptCommand.ShowMessage(0, "msg_move_06", slot11, slot14);
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.FObj_CloseEye(slot14);
            IkScriptCommand.Wait_Time(1.0);
            IkScriptCommand.SetFacialTemplate(slot14, "surprise");
            IkScriptCommand.Wait_Time(0.3);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_KAIDEN_NPC");
            IkScriptCommand.Fade_Out("White");
            IkScriptCommand.ShowMessage(1, "msg_move_07", slot11, slot14, false, true);
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.Wait_Fade();
            IkScriptCommand.FObj_LookAt_Obj(slot14, "Player", "head");
            IkScriptCommand.FObj_Set_Visibility("Player", true);
            IkScriptCommand.Camera_End(false);
            IkScriptCommand.Fade_In("White", 1.0);
            IkScriptCommand.Wait_Fade();
            IkScriptCommand.SetFacialTemplate(slot14, "normal");
            IkScriptCommand.FObj_Set_Animation(slot14, 1);
            IkScriptCommand.WordSet_Name_Mons(2, cast(param.f0DE6FCA9(), Int));
            IkScriptCommand.WordSet_Name_Waza(3, moves[selection]);
            IkScriptCommand.ShowMessage(2, "msg_move_08", slot11, slot14);
            IkScriptCommand.HideMessageWindow();
            ConfirmEvolutionPlusWaza("msg_move_09");
        }
        else
        {
            IkScriptCommand.ShowMessage(0, "msg_move_05", slot11, slot14);
            IkScriptCommand.ShowMessage(0, "msg_move_12", slot11, slot14);
            IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FINISH");
            IkScriptCommand.Wait_FObj_Action();
        }
        return null;
    }

    @:hashAbi("F6D3A29C822B0F7A3")
    public function GetCanConvertPlusWazaList(?param:Dynamic):Dynamic
    {
        var moves = new Array<Dynamic>();
        for (index in 0...4)
        {
            var move:Dynamic = param.f25921387(index);
            param.fAAA7845D(move);
            if (move != 0)
            {
                if (!lua.abi.Host.truthy(param.fAAA7845D(move)))
                {
                    moves.push(param.f25921387(index));
                }
            }
        }
        return moves;
    }
}
