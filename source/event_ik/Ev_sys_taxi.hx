package event_ik;

import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CB04D535264887E5C")
@:expose("CB04D535264887E5C")
class Ev_sys_taxi extends main.event.ik.base.BaseSystemEvent
{
    @:abiSlot(11)
    public var fare:Dynamic;

    @:abiSlot(12)
    public var MENU_CANCEL:Dynamic;

    @:abiSlot(13)
    public var driverName:Dynamic;

    @:abiSlot(14)
    public var hasArrived:Dynamic;

    public function new()
    {
        hasArrived = false;
        driverName = "";
        MENU_CANCEL = 999;
        fare = 710;
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        Participants = [];
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        IkScriptCommand.FObj_Reset_Facial("Player");
        IkScriptCommand.FObj_Reset_Animation_Base("Player");
        if (hasArrived == false)
        {
            F54EBD95267AC81A8();
        }
        return true;
    }

    public function F7F8C7D974AA48F93(?name:Dynamic):Dynamic
    {
        var templateId = cast(IkScriptCommand.GetNpcObjectTemplateId(name), Int);
        if (templateId >= 84 && templateId <= 86)
        {
            return 0;
        }
        if (templateId >= 88 && templateId <= 91)
        {
            return 1;
        }
        return 2;
    }

    @:hashAbi("FA1D08DAE52DE54C7")
    public function open_destination_category_menu():Dynamic
    {
        var choices:Array<Dynamic> = [];
        var count:Int = IkScriptCommand.GetTaxiDestinationCategoryDataSize();
        for (index in 0...count)
        {
            choices[index] = IkScriptCommand.GetTaxiDestinationCategoryName(index);
        }
        choices[count] = "msg_taxi_select_02";
        var selection = IkScriptCommand.ShowContextMenu(choices, 0, true, false, null, null, "taxi");
        IkScriptCommand.HideMessageWindow();
        if (selection == count)
        {
            selection = MENU_CANCEL;
        }
        return selection;
    }

    @:hashAbi("FBAC515BAF0CDCB84")
    public function open_destination_target_menu(?category:Dynamic):Dynamic
    {
        var choices:Array<Dynamic> = [];
        var count:Int = IkScriptCommand.GetTaxiDestinationTargetDataSize(category);
        for (index in 0...count)
        {
            choices[index] = IkScriptCommand.GetTaxiDestinationTargetName(category, index);
        }
        choices[count] = "msg_taxi_select_01_01_07";
        var selection = IkScriptCommand.ShowContextMenu(choices, 0, true, false, null, null, "taxi");
        IkScriptCommand.HideMessageWindow();
        if (selection == count)
        {
            selection = MENU_CANCEL;
        }
        return selection;
    }

    @:hashAbi("F9FDD60DD99EFA0E7")
    public function Chat_with_the_driver(?driverType:Dynamic):Dynamic
    {
        var chatCount:StdTypes.Int = main.event.ik.command.IkScriptCommand.SB4FAA7B2386C5D07(driverType);
        var chat:StdTypes.Int = 0;
        var random:cppbindings.C1A00019C = cppbindings.C1A00019C.f101D811F();
        {
            random.f8C8B6BB6();
        };
        var rides:Dynamic = main.event.ik.command.IkScriptCommand.GetTaxirideCount();
        if (((rides < 0) || (rides > 0))) {
            chat = random.fDAAAA586((chatCount - 1));
        };
        var lineCount:StdTypes.Int = main.event.ik.command.IkScriptCommand.S6EE12559EC0ED01F(driverType, chat);
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = lineCount;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var label:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.SFD08022F733C742C(driverType, chat, index);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, label, "taxi");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        main.event.ik.command.IkScriptCommand.Suspend();
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.FBA1C1BF976296FD5();
        this.driverName = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        var driverType:StdTypes.Int = this.F7F8C7D974AA48F93(this.driverName);
        var greeting:String = " ";
        var departing:String = " ";
        var destinationPrompt:String = " ";
        var arrival:String = " ";
        var insufficientMoney:String = " ";
        var goodbye:String = " ";
        if ((driverType == 0)) {
            greeting = "msg_taxi_01";
            departing = "msg_taxi_01_start";
            destinationPrompt = "msg_taxi_select_01_check_02";
            arrival = "msg_taxi_01_stop_02";
            insufficientMoney = "msg_taxi_01_stop_04";
            goodbye = "msg_taxi_01_stop_03";
        } else {
            if ((driverType == 1)) {
                greeting = "msg_taxi_07";
                departing = "msg_taxi_02_start";
                destinationPrompt = "msg_taxi_select_01_check_03";
                arrival = "msg_taxi_02_stop_02";
                insufficientMoney = "msg_taxi_02_stop_04";
                goodbye = "msg_taxi_02_stop_03";
            } else {
                if ((driverType == 2)) {
                    greeting = "msg_taxi_08";
                    departing = "msg_taxi_z_01_start";
                    destinationPrompt = "msg_taxi_select_01_check_01";
                    arrival = "msg_taxi_z_stop_02";
                    insufficientMoney = "msg_taxi_z_stop_04";
                    goodbye = "msg_taxi_z_stop_03";
                };
            };
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(this.driverName, "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", this.driverName);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", this.driverName, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.driverName, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var resource:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/taxi");
        main.event.ik.command.TextResourceManager.LoadTextResource(resource);
        this.Await(function():Dynamic {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(resource);
        });
        main.event.ik.command.IkScriptCommand.ShowMessage(0, greeting, "taxi", this.driverName);
        main.event.ik.command.IkScriptCommand.S00955FA08523FC6C();
        main.event.ik.command.IkScriptCommand.Suspend();
        var selecting:StdTypes.Bool = true;
        while (selecting) {
            var category:StdTypes.Null<Dynamic> = this.open_destination_category_menu();
            if ((category == this.MENU_CANCEL)) {
                selecting = false;
                continue;
            };
            main.event.ik.command.IkScriptCommand.ShowMessage(0, destinationPrompt, "taxi", this.driverName);
            var destination:StdTypes.Null<Dynamic> = this.open_destination_target_menu(category);
            if ((destination == this.MENU_CANCEL)) {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, greeting, "taxi", this.driverName);
                continue;
            };
            cppbindings.CDDCCFBA7.f1B77253E("taxi_cnt", 1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, departing, "taxi", this.driverName);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FIELD_VOL_ON");
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_START_LOOP");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            this.Chat_with_the_driver(driverType);
            this.hasArrived = false;
            var targetName:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetTaxiDestinationTargetName(category, destination);
            if (lua.abi.Host.truthy(main.event.ik.command.IkScriptCommand.GetTaxiDestinationJumpPointName(targetName))) {
                var area:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetTaxiJump_areaName();
                var position:lua.Table<Int, Float> = main.event.ik.command.IkScriptCommand.GetTaxiJump_position();
                var yaw:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.GetTaxiJump_yaw();
                main.event.ik.command.IkScriptCommand.S497EC645A7096CF3(area, (cast position)[1], (cast position)[2], (cast position)[3], 0, yaw, 0);
                this.hasArrived = true;
            };
            if ((this.hasArrived == true)) {
                ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END");
                var place:String = main.event.ik.command.IkScriptCommand.SF9F1DDBC2CC5E1F0(targetName);
                if ((place == "PLACENAME_wild_a0103_w01")) {
                    place = "PLACENAME_veil";
                } else {
                    if ((place == "PLACENAME_wild_a0403_w01")) {
                        place = "PLACENAME_rouge";
                    };
                };
                main.event.ik.command.IkScriptCommand.SetWordSet(2, "place_name_indirect", place);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, arrival, "taxi");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var money:Dynamic = main.event.ik.command.IkScriptCommand.GetCurrentMoney();
                var currentFare:StdTypes.Int = this.fare;
                var moneyIsNegative:StdTypes.Bool = (money < 0);
                var canPay:StdTypes.Bool = (if ((moneyIsNegative != (currentFare < 0))) {
                    moneyIsNegative;
                } else {
                    money >= currentFare;
                });
                if (canPay) {
                    main.event.ik.command.IkScriptCommand.S7A3F143B7E651BA6(-this.fare, false);
                    main.event.ik.command.IkScriptCommand.Suspend();
                } else {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, insufficientMoney, "taxi");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Suspend();
                    if (((money < 0) || (money > 0))) {
                        main.event.ik.command.IkScriptCommand.S7A3F143B7E651BA6(-money, false);
                        main.event.ik.command.IkScriptCommand.Suspend();
                    };
                };
                ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TAXI_END_AFTER");
                main.event.ik.command.IkScriptCommand.UpdaateTaxirideCount();
                selecting = false;
            };
        };
        if ((this.hasArrived == true)) {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, goodbye, "taxi");
        } else {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, goodbye, "taxi", this.driverName);
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.TextResourceManager.UnloadTextResource(resource);
    }
}
