package event_ik;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;

@:keep
@:chunk("event_ik")
@:hashAbi("CF567FB9AA3AE1575")
@:expose("CF567FB9AA3AE1575")
class Ev_sys_salon extends main.event.ik.base.BaseSystemEvent
{
    @:abiSlot(11)
    public var kTorimianPos:Dynamic;

    @:abiSlot(12)
    public var kTorimianDegree:Dynamic;

    @:abiSlot(13)
    public var levelupQuestName1:Dynamic;

    @:abiSlot(14)
    public var levelupQuestName2:Dynamic;

    @:abiSlot(15)
    public var kMstxt:Dynamic;

    @:abiSlot(16)
    public var slot16:Dynamic;

    @:abiSlot(17)
    public var talkNpcName:Dynamic;

    @:abiSlot(18)
    public var kTorimianNpcId:Dynamic;

    @:abiSlot(19)
    public var partnerPoke:Dynamic;

    @:abiSlot(20)
    public var slot20:Dynamic;

    public function new()
    {
        this.slot20 = "";
        this.partnerPoke = null;
        this.kTorimianNpcId = "TorimianCutEvent_Pokemon";
        this.talkNpcName = "msg_torimian_select_no";
        this.slot16 = "msg_torimian_select_yes";
        this.kMstxt = "change_torimian_scr";
        this.levelupQuestName2 = "SYS_WORK_QUEST_32";
        this.levelupQuestName1 = "SYS_WORK_QUEST_33";
        this.kTorimianDegree = 136.77;
        this.kTorimianPos = lua.Table.create([0, 0, 0]);
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub031_001", "npc_pokemon_sub031_1"]);
        return null;
    }

    @:hashAbi("F3410841307CDF63D")
    public function StartCameraMove():Dynamic
    {
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon()))
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-819.01, 7.81, -525.74]), lua.Table.create([-14.44, -178.79, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(2, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-818.99, 7.42, -524.79]), lua.Table.create([-14.44, -178.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.FBA1C1BF976296FD5();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub031_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub031_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub031_001", "Player", "head");
        var position:lua.Table<Int, Float> = (cast this.kTorimianPos);
        var lengthSquared:StdTypes.Float = cppbindings.C7A48E3FC.fBD92E0EC((cast position)[1], (cast position)[2], (cast position)[3]);
        if ((lengthSquared <= 0.01)) {
            main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
            this.kTorimianPos = lua.Table.create([-819.03, 6.12, -521.57]);
        };
        this.slot20 = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath(("script/" + Std.string(this.kMstxt)));
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await(function():Dynamic {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        var questResourcePath:String = "";
        if ((main.event.ik.command.IkScriptCommand.GetWorkValue(this.levelupQuestName1) == 10)) {
            questResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/sub_033");
            main.event.ik.command.TextResourceManager.LoadTextResource(questResourcePath);
            this.Await(function():Dynamic {
                return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
            });
        } else {
            if ((main.event.ik.command.IkScriptCommand.GetWorkValue(this.levelupQuestName2) == 10)) {
                questResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/sub_032");
                main.event.ik.command.TextResourceManager.LoadTextResource(questResourcePath);
                this.Await(function():Dynamic {
                    return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
                });
            };
        };
        this.ConfirmCut();
        main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
        if ((questResourcePath != "")) {
            main.event.ik.command.TextResourceManager.UnloadTextResource(questResourcePath);
        };
    }

    @:hashAbi("F005F73ADAA24DD75")
    public function ConfirmCut():Dynamic
    {
        cppbindings.C56DE81E7.f3CE87C91();
        var choices = new Array<Dynamic>();
        if (lua.abi.Host.truthy(IsRunningSubQuest()))
        {
            choices.push("msg_torimian_select_12");
        }
        choices.push(slot16);
        choices.push(talkNpcName);
        var selection:Dynamic = IkScriptCommand.ShowMessageAndContext("msg_torimian_badgirl_01", kMstxt, slot20, choices);
        if (choices[selection] == slot16)
        {
            var money:Float = cppbindings.C56DE81E7.fD88A4F2D();
            if (money >= 0 && money < 500)
            {
                IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_02", kMstxt, slot20);
                IkScriptCommand.HideMessageWindow();
                return null;
            }
            if (IkScriptCommand.GetSelectPokemonCount_All(cast(676, Int)) == 0)
            {
                IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_03", kMstxt, slot20);
                IkScriptCommand.HideMessageWindow();
                return null;
            }
            IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_04", kMstxt, slot20);
            IkScriptCommand.HideMessageWindow();
            SelectTorimian();
        }
        else if (choices[selection] == talkNpcName)
        {
            IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_10", kMstxt, slot20);
            IkScriptCommand.HideMessageWindow();
        }
        else
        {
            var label = "";
            var text = "";
            if (IkScriptCommand.GetWorkValue(levelupQuestName1) == 10)
            {
                label = "msg_Ev_sub_033_001_talk_06";
                text = "sub_033";
            }
            else if (IkScriptCommand.GetWorkValue(levelupQuestName2) == 10)
            {
                label = "msg_Ev_sub_032_002_talk_01";
                text = "sub_032";
            }
            IkScriptCommand.ShowMessage(0, label, text, slot20);
            IkScriptCommand.HideMessageWindow();
        }
        return null;
    }

    @:hashAbi("FC0DDDFAB8B157B6C")
    public function SelectTorimian():Dynamic
    {
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        DestroyMoneyUIWithWait();
        var filter:Dynamic = cppbindings.CA5FF45E2.f5B6373D5();
        filter.f8ABF57B0(676);
        var selected:Dynamic = main.event.ik.command.BoxSingleSelectCommand.StartBoxSingleSelectMode(filter, 8);
        if (selected == null)
        {
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_10", kMstxt, slot20);
            IkScriptCommand.HideMessageWindow();
            return null;
        }
        if (selected.f0DE6FCA9() != 676)
        {
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
            IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_14", kMstxt, slot20);
            IkScriptCommand.HideMessageWindow();
            return null;
        }
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
        IkScriptCommand.Wait_Time(0.2);
        IkScriptCommand.Fade_Out("transition_fade_inout", 0.3);
        IkScriptCommand.Wait_Fade();
        var player:Dynamic = IkScriptCommand.GetCharacterAccessorEvent("Player");
        partnerPoke = player.f4F420785();
        if (partnerPoke != null)
        {
            IkScriptCommand.FObj_Set_Visibility(partnerPoke.fE9C29DA1(), false);
        }
        IkScriptCommand.FObj_Set_Visibility("Player", false);
        cppbindings.C56DE81E7.f3CE87C91();
        CreateTorimian(selected);
        IkScriptCommand.Wait_CreateCharacter();
        StartCameraMove();
        IkScriptCommand.Fade_In("transition_fade_inout", 0.3);
        IkScriptCommand.Wait_Fade();
        SelectCutHair(selected);
        return null;
    }

    @:hashAbi("FCEC48EBD375B90A3")
    public function SelectCutHair(?basePokemonParam:Dynamic):Dynamic
    {
        var formIds:Array<Dynamic> = [1, 2, 3];
        var labels:Array<String> = ["msg_torimian_select_01", "msg_torimian_select_02", "msg_torimian_select_03"];
        if (lua.abi.Host.truthy(this.IsCompelteQuest(this.levelupQuestName2))) {
            labels.push("msg_torimian_select_04");
            labels.push("msg_torimian_select_05");
            labels.push("msg_torimian_select_06");
            formIds.push(4);
            formIds.push(5);
            formIds.push(6);
        };
        if (lua.abi.Host.truthy(this.IsCompelteQuest(this.levelupQuestName1))) {
            labels.push("msg_torimian_select_07");
            labels.push("msg_torimian_select_08");
            labels.push("msg_torimian_select_09");
            formIds.push(7);
            formIds.push(8);
            formIds.push(9);
        };
        labels.push("msg_torimian_select_10");
        formIds.push(0);
        labels.push("msg_torimian_select_11");
        formIds.push(0);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessageAndContext("msg_torimian_badgirl_05", this.kMstxt, this.slot20, labels);
        var selectedLabel:String = labels[selection];
        var selectedForm:Dynamic = formIds[selection];
        if ((selectedLabel == "msg_torimian_select_11")) {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_10", this.kMstxt, this.slot20);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            this.FinalizeAtAfterCreateTorimian();
            return null;
        };
        if ((selectedLabel == "msg_torimian_select_10")) {
            if (!lua.abi.Host.truthy(this.ConfirmRevertHair())) {
                this.SelectCutHair(basePokemonParam);
                return null;
            };
        } else {
            if ((untyped (cast basePokemonParam : Dynamic).f9E86AD53() == selectedForm)) {
                if (!lua.abi.Host.truthy(this.ConfirmKeepHair(selectedLabel))) {
                    this.SelectCutHair(basePokemonParam);
                    return null;
                };
            };
        };
        cppbindings.CDDCCFBA7.f1B77253E("triming_cnt", 1);
        cppbindings.C56DE81E7.f5CE9D7D8(-500, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_06", this.kMstxt, this.slot20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_07", this.kMstxt, this.slot20);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter(this.kTorimianNpcId);
        cppbindings.C56DE81E7.f1DED6F54(basePokemonParam, selectedForm);
        var currentSelection:Dynamic = cppbindings.C56DE81E7.f0CD8FF74();
        if (!lua.abi.Host.truthy(untyped (cast currentSelection : Dynamic).f32F564D5())) {
            main.event.ik.command.BoxSingleSelectCommand.OverrideSelectBoxPokemon(basePokemonParam);
        };
        this.Suspend();
        this.CreateTorimian(basePokemonParam);
        if ((this.partnerPoke != null)) {
            var partnerParameter:Dynamic = untyped (cast this.partnerPoke : Dynamic).f1F5887DF();
            if ((basePokemonParam == partnerParameter)) {
                main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
                this.partnerPoke = null;
            };
        };
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CUT_HAIR");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_08", this.kMstxt, this.slot20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_09", this.kMstxt, this.slot20);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.fC65E3809())) {
            this.Suspend();
        };
        if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon())) {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-819.01, 8.11, -525.76]), lua.Table.create([-14.43, -178.79, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-819.0, 7.93, -525.07]), lua.Table.create([-14.43, -178.79, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        } else {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-818.95, 7.57, -525.34]), lua.Table.create([-14.44, -178.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-818.99, 7.42, -524.79]), lua.Table.create([-14.44, -178.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        };
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.kTorimianNpcId, 20);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_torimian_badgirl_10", this.kMstxt, this.slot20);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        this.FinalizeAtAfterCreateTorimian();
        return null;
    }

    @:hashAbi("F6E397997CF3BBBF6")
    public function ConfirmKeepHair(?selectLabel:Dynamic):Dynamic
    {
        main.event.ik.command.IkScriptCommand.SetWordSet(0, kMstxt, selectLabel);
        return 0 == main.event.ik.command.IkScriptCommand.ShowMessageAndContext("msg_torimian_badgirl_11", kMstxt, slot20, [slot16, talkNpcName]);
    }

    @:hashAbi("F0AA9A5302E5D702D")
    public function ConfirmRevertHair():Dynamic
    {
        return 0 == main.event.ik.command.IkScriptCommand.ShowMessageAndContext("msg_torimian_badgirl_12", kMstxt, slot20, [slot16, talkNpcName]);
    }

    @:hashAbi("F6D64EDFDEAECCF02")
    public function IsCompelteQuest(?questWorkName:Dynamic):Dynamic
    {
        if ((("" == questWorkName)))
        {
            return true;
        };
        return (untyped (255 == main.event.ik.command.IkScriptCommand.GetWorkValue(questWorkName)));
    }

    @:hashAbi("FCC61FAE677FDE988")
    public function IsRunningSubQuest():Dynamic
    {
        if (main.event.ik.command.IkScriptCommand.GetWorkValue(levelupQuestName1) == 10)
        {
            return true;
        }
        return main.event.ik.command.IkScriptCommand.GetWorkValue(levelupQuestName2) == 10;
    }

    @:hashAbi("F548DC971AB35601C")
    @:analyzer(no_local_dce)
    public function CreateTorimian(?basePokemonParam:Dynamic):Dynamic
    {
        var scale:Float = basePokemonParam.f1E57BACE();
        var unsignedScale:Float = scale < 0 ? 4294967296.0 + scale : scale + 0.0;
        var diagnosticScale = Math.sin(((unsignedScale / 255.0) * Math.PI) - (Math.PI / 2.0));
        var isOybn = main.event.ik.command.IkScriptCommand.IsOybnForSingleSelectPokemon();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(kTorimianNpcId, kTorimianPos, kTorimianDegree, basePokemonParam.f0DE6FCA9(), basePokemonParam.f9E86AD53(), basePokemonParam.fB31DF589(), null, null, true, basePokemonParam.fA284DF88(), basePokemonParam.f1E57BACE(), isOybn, false);
        return null;
    }

    @:hashAbi("FCA321A0427BCA0F9")
    public function FinalizeAtAfterCreateTorimian():Dynamic
    {
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        if (partnerPoke != null)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(partnerPoke.fE9C29DA1(), true);
        }
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_End(false);
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter(kTorimianNpcId);
        DestroyMoneyUIWithWait();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        return null;
    }

    @:hashAbi("F6C68672BF84F92E4")
    public function DestroyMoneyUIWithWait():Dynamic
    {
        main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
        while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.fC65E3809()))
        {
            Suspend();
        }
        return null;
    }
}
