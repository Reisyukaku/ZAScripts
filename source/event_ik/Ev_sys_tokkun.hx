package event_ik;

import main.event.ik.command.IkScriptCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CD26CD8C6A3FE6348")
@:expose("CD26CD8C6A3FE6348")
class Ev_sys_tokkun extends main.event.ik.base.BaseSystemEvent
{
    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var POKEMON_BASE_LEVEL:Dynamic;

    public function new()
    {
        this.POKEMON_BASE_LEVEL = "";
        this.slot11 = 50;
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_tokkun_01"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.POKEMON_BASE_LEVEL = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        this.FBA1C1BF976296FD5(this.POKEMON_BASE_LEVEL);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_tokkun_01", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_tokkun_01");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_tokkun_01", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_tokkun_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/training");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        if (!lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetFlagValue("flag_tokkn_first")))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_01", "training", POKEMON_BASE_LEVEL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        var goldCaps = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_KINNOOUKAN");
        var silverCaps = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_GINNOOUKAN");
        if (goldCaps == 0 && silverCaps == 0)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_03", "training", POKEMON_BASE_LEVEL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            F88788E4CF0D59CA6();
        }
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_05", "training", this.POKEMON_BASE_LEVEL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
        main.event.ik.command.IkScriptCommand.SetFlagValue("flag_tokkn_first", true);
    }

    public function F88788E4CF0D59CA6():Dynamic
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_02", "training", POKEMON_BASE_LEVEL);
        var selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_training_select_01", "msg_training_select_02"], 0, true, false, null, null, "training");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (selection != 0)
        {
            return null;
        }
        F956844B828F101FC();
        return null;
    }

    public function F956844B828F101FC():Dynamic
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_04", "training", this.POKEMON_BASE_LEVEL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        var pokemon:Dynamic = main.event.ik.command.IkScriptCommand.SA44E9FAE3F0440A5(0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
        if ((pokemon == null)) {
            return null;
        };
        var level:StdTypes.Float = untyped (cast pokemon : Dynamic).fD2EF1BBB();
        main.event.ik.command.IkScriptCommand.SF0F9842ECEA3C1A4(2, pokemon);
        var requiredLevel:StdTypes.Float = this.slot11;
        var negative:StdTypes.Bool = (requiredLevel < 0);
        var tooLow:StdTypes.Bool = (if ((negative != (level < 0))) {
            negative;
        } else {
            requiredLevel > level;
        });
        if (tooLow) {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_06", "training", this.POKEMON_BASE_LEVEL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            this.F956844B828F101FC();
            return null;
        };
        if ((untyped (cast pokemon : Dynamic).fC3578C0C() == 6)) {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_07", "training", this.POKEMON_BASE_LEVEL);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            this.F956844B828F101FC();
            return null;
        };
        if (!lua.abi.Host.truthy(this.FC544F0F1AB8DFE47(pokemon))) {
            this.F956844B828F101FC();
            return null;
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_tokkun_01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_tokkun_01", 6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_tokkun_01", 2);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_tokkun_01", "serious");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_11", "training", this.POKEMON_BASE_LEVEL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TOKKUN_NPC");
        main.event.ik.command.IkScriptCommand.Fade_Out("White");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_tokkun_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_End(false);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.05);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_tokkun_01", 1);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_tokkun_01", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_13", "training", this.POKEMON_BASE_LEVEL);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        cppbindings.CDDCCFBA7.f1B77253E("training_cnt", 1);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessageAndContext("msg_training_talk_14", "training", this.POKEMON_BASE_LEVEL, ["msg_training_select_01", "msg_training_select_02"], null, null);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if ((selection == 0)) {
            var goldCaps:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_KINNOOUKAN");
            var silverCaps:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetSelectItemCount("ITEMID_GINNOOUKAN");
            if (((goldCaps == 0) && (silverCaps == 0))) {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_training_talk_03", "training", this.POKEMON_BASE_LEVEL);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            } else {
                this.F956844B828F101FC();
            };
        };
        return null;
    }

    public function FC544F0F1AB8DFE47(?pokemon:Dynamic):Dynamic
    {
        var goldCaps = IkScriptCommand.GetSelectItemCount("ITEMID_KINNOOUKAN");
        var silverCaps = IkScriptCommand.GetSelectItemCount("ITEMID_GINNOOUKAN");
        var choices = new Array<Dynamic>();
        choices.push(IkScriptCommand.CreateNumberText("msg_training_select_03", null, 3, goldCaps));
        choices.push(IkScriptCommand.CreateNumberText("msg_training_select_04", null, 4, silverCaps));
        choices.push(IkScriptCommand.CreatePlaneText("msg_training_select_05"));
        IkScriptCommand.ShowMessage(0, "msg_training_talk_08", "training", POKEMON_BASE_LEVEL);
        var selection:Dynamic = IkScriptCommand.ShowContextMenuWithTag(choices, null, true, null, null, null, "training");
        IkScriptCommand.HideMessageWindow();
        var continueTraining:Dynamic = false;
        if (selection == 0)
        {
            if (goldCaps == 0)
            {
                IkScriptCommand.ShowMessage(0, "msg_training_talk_15", "training", POKEMON_BASE_LEVEL);
                IkScriptCommand.HideMessageWindow();
                return FC544F0F1AB8DFE47(pokemon);
            }
            IkScriptCommand.ShowMessage(0, "msg_training_talk_09", "training", POKEMON_BASE_LEVEL);
            IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            continueTraining = IkScriptCommand.OpenAmazingTrainingUI(cast(0, Int), pokemon);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
        }
        else if (selection == 1)
        {
            if (silverCaps == 0)
            {
                IkScriptCommand.ShowMessage(0, "msg_training_talk_16", "training", POKEMON_BASE_LEVEL);
                IkScriptCommand.HideMessageWindow();
                return FC544F0F1AB8DFE47(pokemon);
            }
            IkScriptCommand.ShowMessage(0, "msg_training_talk_10", "training", POKEMON_BASE_LEVEL);
            IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            continueTraining = IkScriptCommand.OpenAmazingTrainingUI(cast(1, Int), pokemon);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
        }
        else
        {
            return false;
        }
        if (lua.abi.Host.truthy(continueTraining))
        {
            return FC544F0F1AB8DFE47(pokemon);
        }
        return !lua.abi.Host.truthy(continueTraining);
    }
}
