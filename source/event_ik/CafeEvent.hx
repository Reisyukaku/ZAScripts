package event_ik;

import main.event.ik.base.BaseEvent;
import main.event.ik.command.IkScriptCommand;
import cppbindings.Vector3Values as Vector3;
import cppbindings.C56DE81E7;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C3F97C0C63E0F98D5")
@:expose("C3F97C0C63E0F98D5")
class CafeEvent extends BaseEvent
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var mstxt:Dynamic;

    @:abiSlot(10)
    public var talkNpcName:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    @:abiSlot(13)
    public var favoriteTextLabel:Dynamic;

    @:abiSlot(14)
    public var lastOrderTextLabel:Dynamic;

    @:hashAbi("S7D14B1A96AFB8FD1")
    public static var S7D14B1A96AFB8FD1:Dynamic = 10;

    public function new()
    {
        lastOrderTextLabel = "msg_nuvoboss_select_04";
        favoriteTextLabel = "msg_nuvoboss_select_05";
        slot12 = false;
        slot11 = "TEMP_FLAG_CAFE_EVENT_PLAYING";
        talkNpcName = "";
        mstxt = "cafe";
        slot8 = [
            {
                hello_label: "msg_waitress_01",
                reselect_label: "msg_waitress_08",
                menu_select_cancel_label: "msg_waitress_select_04",
                cancel_label: "msg_waitress_02",
                money_lose_label: "msg_waitress_03",
                confirm_label: "msg_waitress_07",
                menu_pick_up_label: "msg_waitress_04",
                cooking_explan_label: "msg_waitress_05",
                exit_label: "msg_waitress_06",
                menu_type_list: ["msg_waitress_select_01", "msg_waitress_select_02", "msg_waitress_select_03"]
            },
            {
                hello_label: "msg_waiter_01",
                reselect_label: "msg_waiter_08",
                menu_select_cancel_label: "msg_waiter_select_04",
                cancel_label: "msg_waiter_02",
                money_lose_label: "msg_waiter_03",
                confirm_label: "msg_waiter_07",
                menu_pick_up_label: "msg_waiter_04",
                cooking_explan_label: "msg_waiter_05",
                exit_label: "msg_waiter_06",
                menu_type_list: ["msg_waiter_select_01", "msg_waiter_select_02", "msg_waiter_select_03"]
            },
            {
                hello_label: "msg_nuvoboss_01",
                reselect_label: "msg_nuvoboss_12",
                menu_select_cancel_label: "msg_nuvoboss_select_06",
                cancel_label: "msg_nuvoboss_02",
                money_lose_label: "msg_nuvoboss_03",
                confirm_label: "msg_nuvoboss_11",
                menu_pick_up_label: "msg_nuvoboss_04",
                cooking_explan_label: "",
                exit_label: "msg_nuvoboss_10",
                menu_type_list: ["msg_nuvoboss_select_01", "msg_nuvoboss_select_02", "msg_nuvoboss_select_03"]
            }
        ];
        super();
    }

    public static function SD1E173D038A8A741():Dynamic
    {
        var cafe:Dynamic = cppbindings.CBAEFF9C5.fF322986D("npc_main_nu_boss_f");
        var lastOrder = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_LAST_ORDER_INDEX");
        if (lastOrder == 0)
        {
            var favorite = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_FAVORITE_INDEX");
            if (favorite == 0)
            {
                var lineup:Dynamic = cafe.f8106ABD7();
                var item:Dynamic = lineup.fBE88ADCA(0, 0);
                return item.f28453960();
            }
        }
        var selection:Dynamic = SC9CCA1BF5A867490(SCAE0EF50F5A3328B(cafe));
        var lineup:Dynamic = cafe.f8106ABD7();
        var drinkType = selection.drinkType;
        if (drinkType == null)
        {
            drinkType = 0;
        }
        var item:Dynamic = lineup.fBE88ADCA(selection.menuIndex, drinkType);
        return item.f28453960();
    }

    public static function S9EA40BCD5253F83E(?arg0:Dynamic):Dynamic
    {
        return arg0.f5D4A3056() == 2;
    }

    public static function SCAE0EF50F5A3328B(?arg0:Dynamic):Dynamic
    {
        var mode = 0;
        if (lua.abi.Host.truthy(S9EA40BCD5253F83E(arg0)))
        {
            if (main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_LAST_ORDER_COUNT") != 0)
            {
                if (main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_FAVORITE_INDEX") != 0)
                {
                    mode = 2;
                }
                else
                {
                    mode = 1;
                }
            }
        }
        return mode;
    }

    public static function SB9A64EB32898651B(?arg0:Dynamic):Dynamic
    {
        var order:CafeOrder = arg0;
        var encoded:Float = order.drinkType * 10;
        encoded += order.menuIndex;
        var offset:Float = S7D14B1A96AFB8FD1;
        encoded += offset;
        var previous = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_LAST_ORDER_INDEX");
        if (previous != encoded)
        {
            cppbindings.C56DE81E7.f0EC8F36E("SYS_WORK_NUVO_CAFE_LAST_ORDER_COUNT", 1);
        }
        else
        {
            var count:Float = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_LAST_ORDER_COUNT");
            if (count != 5)
            {
                cppbindings.C56DE81E7.f0EC8F36E("SYS_WORK_NUVO_CAFE_LAST_ORDER_COUNT", count + 1);
            }
        }
        // Work callbacks can change the selected record or encoding offset.
        encoded = order.drinkType * 10;
        encoded += order.menuIndex;
        offset = S7D14B1A96AFB8FD1;
        encoded += offset;
        if (main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_LAST_ORDER_COUNT") == 5)
        {
            cppbindings.C56DE81E7.f0EC8F36E("SYS_WORK_NUVO_CAFE_FAVORITE_INDEX", encoded);
        }
        else
        {
            cppbindings.C56DE81E7.f0EC8F36E("SYS_WORK_NUVO_CAFE_LAST_ORDER_INDEX", encoded);
        }
        return null;
    }

    public static function SB813B84CBD506E19(?arg0:Dynamic, ?arg1:Dynamic):Dynamic
    {
        if (!lua.abi.Host.truthy(S9EA40BCD5253F83E(arg1)))
        {
            return null;
        }
        SB9A64EB32898651B(arg0);
        return null;
    }

    public static function SC9CCA1BF5A867490(?arg0:Dynamic):Dynamic
    {
        var encoded:Dynamic = null;
        if (arg0 == 1)
        {
            encoded = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_LAST_ORDER_INDEX");
        }
        else if (arg0 == 2)
        {
            encoded = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_NUVO_CAFE_FAVORITE_INDEX");
        }
        if (encoded == null)
        {
            return null;
        }
        var menuIndex:Float = encoded % 10;
        var value:Float = encoded;
        var offset:Float = S7D14B1A96AFB8FD1;
        var drinkType = cast(Std.int((value - offset) / 10), Int);
        return {menuIndex: menuIndex, drinkType: drinkType};
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.S3D047DB5B440735C();
        talkNpcName = main.event.ik.command.IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        var cafeData:Dynamic = cppbindings.CBAEFF9C5.fF322986D(talkNpcName);
        if (cafeData == null)
        {
            return;
        }
        var dialogTable = slot8;
        var clerkType = cafeData.f5D4A3056();
        var dialog:Dynamic = untyped dialogTable[clerkType];
        if (dialog == null)
        {
            cafeData.f5D4A3056();
            return;
        }
        cppbindings.C56DE81E7.fCEBCC709("Ev_global_cafe");
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/" + Std.string(mstxt));
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        cppbindings.C56DE81E7.f3CE87C91();
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(talkNpcName, "Player", "head");
        slot12 = "npc_A02_z01_04_0042" != talkNpcName;
        var returnToIdle = true;
        if (lua.abi.Host.truthy(slot12))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(talkNpcName, "Player");
        }
        main.event.ik.command.IkScriptCommand.ShowMessage(0, cafeData.fA5304998(), mstxt, talkNpcName);
        var selection:Dynamic = SelecteDrinkTypeSequence(dialog, cafeData, true);
        if (selection != null)
        {
            var lineup:Dynamic = cafeData.f8106ABD7();
            var drinkType:Dynamic = selection.drinkType;
            if (drinkType == null)
            {
                drinkType = 0;
            }
            var drinkData:Dynamic = lineup.fBE88ADCA(selection.menuIndex, drinkType);
            var price:Float = drinkData.fAEF0B3AF();
            var money:Float = cppbindings.C56DE81E7.fD88A4F2D();
            var negativePrice = price < 0;
            var insufficient = negativePrice != (money < 0) ? negativePrice : price > money;
            if (insufficient)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, dialog.money_lose_label, mstxt, talkNpcName);
                main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
            }
            else
            {
                SB813B84CBD506E19(selection, cafeData);
                BuyDrinkSequence(drinkData, dialog, cafeData);
                returnToIdle = false;
            }
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, dialog.cancel_label, mstxt, talkNpcName);
            main.event.ik.command.IkScriptCommand.DestoryMoneyUI();
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_OFF");
        }
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
        cppbindings.C56DE81E7.fD2281D7A("Ev_global_cafe");
        if (returnToIdle)
        {
            main.event.ik.command.IkScriptCommand.AddTagCommon(talkNpcName, "StandTalkNpcReturnLookAtAndTurn");
        }
    }

    @:hashAbi("FF682C96F89644936")
    public function GetHitRayPos(?startPos:Dynamic):Dynamic
    {
        var start:lua.Table<Int, Float> = startPos;
        var end:lua.Table<Int, Float> = ((lua.Table.create(([(cast start)[1], ((cast start)[2] + (-1)), (cast start)[3]] : Array<Float>))));
        var hit:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.TryGetHitRayPos(start, end);
        return (if ((hit == null)) {
            startPos;
        } else {
            hit;
        });
    }

    @:hashAbi("F11E7D6A8C52B3861")
    public function CreateFood(?snackData:Dynamic):Dynamic
    {
        var template:StdTypes.Null<cppbindings.C451059A3> = cppbindings.C451059A3.f5776B6C6("world/ik_obj_template/event/cafe_food_/cafe_food.trsot");
        while (!template.f900312E7()) {
            this.Suspend();
        };
        var scene:cppbindings.CA042DA13 = main.event.ik.EventScriptManager.GetSene();
        var snackObject:StdTypes.Null<cppbindings.C016374C1> = scene.f68159593("CafeSnack", template);
        while ((!snackObject.f9D8BC178() || !snackObject.f48F8C7FF())) {
            this.Suspend();
        };
        var data:CafeSnackData = snackData;
        var coordinates:cppbindings.Vec3 = data.fF5BA17DF().f33F016EA();
        var start:lua.Table<Int, Float> = ({
            var x:StdTypes.Float = coordinates.x;
            var y:StdTypes.Float = coordinates.y;
            var z:StdTypes.Float = coordinates.z;
            var vectorValues:lua.Table<Int, Float>;
            vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues);
        });
        var translation:lua.Table<Int, Float> = this.GetHitRayPos(start);
        var transform:cppbindings.C15286F25 = (cast snackObject);
        {
            {
                transform.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
            };
            translation;
        };
        var angle:StdTypes.Float = data.fF5BA17DF().fF355727A();
        {
            var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fFA44D7AF((((angle / 360.0) * 2) * lua.Math.pi), 0, 0);
            transform.f24032F87(rotation);
            rotation;
        };
        main.event.ik.command.IkScriptCommand.ChangeCharaCre(snackObject, data.f63D64F1D());
        data.f63D64F1D();
        return snackObject;
    }

    @:hashAbi("FFCE0596F89C21569")
    public function CreateDrink(?drinkData:Dynamic):Dynamic
    {
        var data:CafeDrinkData = drinkData;
        var templateName:String = "cafe_drink";
        if ((data.fFB8D1FE6().indexOf("ob0011_00") != -1)) {
            templateName = "cafe_drink_steam_cup";
        } else {
            if ((data.fFB8D1FE6().indexOf("ob0011_01") != -1)) {
                templateName = "cafe_drink_steam_pot";
            };
        };
        data.fFB8D1FE6();
        var template:StdTypes.Null<cppbindings.C451059A3> = cppbindings.C451059A3.f5776B6C6((((("world/ik_obj_template/event/" + templateName) + "_/") + templateName) + ".trsot"));
        while (!template.f900312E7()) {
            this.Suspend();
        };
        var scene:cppbindings.CA042DA13 = main.event.ik.EventScriptManager.GetSene();
        var drinkObject:StdTypes.Null<cppbindings.C016374C1> = scene.f68159593("CafeDrink", template);
        while ((!drinkObject.f9D8BC178() || !drinkObject.f48F8C7FF())) {
            this.Suspend();
        };
        var coordinates:cppbindings.Vec3 = data.f6EBFFFCA();
        var start:lua.Table<Int, Float> = ({
            var x:StdTypes.Float = coordinates.x;
            var y:StdTypes.Float = coordinates.y;
            var z:StdTypes.Float = coordinates.z;
            var vectorValues:lua.Table<Int, Float>;
            vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues);
        });
        var translation:lua.Table<Int, Float> = this.GetHitRayPos(start);
        var transform:cppbindings.C15286F25 = (cast drinkObject);
        {
            {
                transform.f8F2B0552((cast translation)[1], (cast translation)[2], (cast translation)[3]);
            };
            translation;
        };
        {
            var rotation:cppbindings.CD5675BA5 = cppbindings.CD5675BA5.fFA44D7AF((((data.fA2C72063() / 360.0) * 2) * lua.Math.pi), 0, 0);
            transform.f24032F87(rotation);
            rotation;
        };
        main.event.ik.command.IkScriptCommand.ChangeCharaCre(drinkObject, data.fFB8D1FE6());
        return drinkObject;
    }

    @:hashAbi("F24E9AC9B4C58C6DB")
    public function SelecteDrinkTypeSequence(?talk_data:Dynamic, ?cafeData:Dynamic, ?isFirst:Dynamic, ?isNuvoSpecialMessage:Dynamic):Dynamic
    {
        if (isNuvoSpecialMessage == null)
        {
            isNuvoSpecialMessage = false;
        }
        var nuvoState = SCAE0EF50F5A3328B(cafeData);
        var choices = new Array<Dynamic>();
        for (index in 0...3)
        {
            var lineup:Dynamic = cafeData.f8106ABD7();
            if (lua.abi.Host.truthy(lineup.f8CB47CA7(index, null, null, null, null)))
            {
                choices.push(talk_data.menu_type_list[index]);
            }
        }
        var specialIndex:Null<Int> = null;
        if (nuvoState == 1 || nuvoState == 2)
        {
            choices.push(nuvoState == 1 ? lastOrderTextLabel : favoriteTextLabel);
            specialIndex = choices.length - 1;
            if (!lua.abi.Host.truthy(isFirst) && lua.abi.Host.truthy(isNuvoSpecialMessage))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, talk_data.reselect_label, mstxt, talkNpcName);
            }
        }
        choices.push(talk_data.menu_select_cancel_label);
        var cancelIndex = choices.length - 1;
        var menuIndex:Dynamic;
        if (lua.abi.Host.truthy(isFirst))
        {
            menuIndex = main.event.ik.command.IkScriptCommand.ShowMessageAndContext(talk_data.hello_label, mstxt, talkNpcName, choices);
        }
        else
        {
            menuIndex = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, null, null, null, mstxt);
        }
        var selectedLabel:Dynamic;
        if (specialIndex != null && specialIndex == menuIndex)
        {
            selectedLabel = choices[cast(SC9CCA1BF5A867490(nuvoState).drinkType, Int)];
        }
        else
        {
            selectedLabel = choices[menuIndex];
        }
        while (menuIndex == null)
        {
            Suspend();
        }
        if (menuIndex != cancelIndex)
        {
            var menuTypes:Array<Dynamic> = talk_data.menu_type_list;
            if (menuTypes.indexOf(selectedLabel) == -1)
            {
                return null;
            }
            if (specialIndex != null && specialIndex == menuIndex && (nuvoState == 1 || nuvoState == 2))
            {
                var order:Dynamic = SC9CCA1BF5A867490(nuvoState);
                var lineup:Dynamic = cafeData.f8106ABD7();
                var drinkType:Dynamic = order.drinkType;
                if (drinkType == null)
                {
                    drinkType = 0;
                }
                if (lua.abi.Host.truthy(ConfirmMenuSequence(talk_data, lineup.fBE88ADCA(order.menuIndex, drinkType))))
                {
                    return order;
                }
                return SelecteDrinkTypeSequence(talk_data, cafeData, false, true);
            }
            var currentMenuTypes:Array<Dynamic> = talk_data.menu_type_list;
            var drinkType = cast(currentMenuTypes.indexOf(selectedLabel), Int);
            menuIndex = SelecteMenuSequence(talk_data, cafeData.f8106ABD7(), drinkType, true);
            if (menuIndex != null)
            {
                return {menuIndex:menuIndex, drinkType:drinkType};
            }
            return SelecteDrinkTypeSequence(talk_data, cafeData, false);
        }
        return null;
    }

    @:hashAbi("F6E15032F70AC8F66")
    public function SelecteMenuSequence(?talk_data:Dynamic, ?lineupData:Dynamic, ?drinkType:Dynamic, ?isFixedMessage:Dynamic):Dynamic
    {
        var choices = new Array<Dynamic>();
        var index:Float = 0;
        var type:Dynamic = drinkType == null ? 0 : drinkType;
        var count:Float = lineupData.fD938B0BF(type);
        while (index < count)
        {
            index = index + 1;
            var currentType:Dynamic = drinkType == null ? 0 : drinkType;
            var drink:Dynamic = lineupData.fBE88ADCA(index - 1, currentType);
            choices.push(drink.f28453960());
        }
        choices.push(talk_data.menu_select_cancel_label);
        var cancelIndex = choices.length - 1;
        var menuIndex:Dynamic;
        if (lua.abi.Host.truthy(isFixedMessage))
        {
            menuIndex = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, null, null, null, mstxt);
        }
        else
        {
            menuIndex = main.event.ik.command.IkScriptCommand.ShowMessageAndContext(talk_data.reselect_label, mstxt, talkNpcName, choices);
        }
        while (menuIndex == null)
        {
            Suspend();
        }
        if (menuIndex != cancelIndex)
        {
            var currentType:Dynamic = drinkType == null ? 0 : drinkType;
            if (lua.abi.Host.truthy(ConfirmMenuSequence(talk_data, lineupData.fBE88ADCA(menuIndex, currentType))))
            {
                return menuIndex;
            }
            return SelecteMenuSequence(talk_data, lineupData, drinkType, false);
        }
        return null;
    }

    @:hashAbi("F0E769671B1E697DD")
    public function ConfirmMenuSequence(?talk_data:Dynamic, ?drinkData:Dynamic):Dynamic
    {
        var choices = ["msg_cafe_cmn_yes", "msg_cafe_cmn_no"];
        main.event.ik.command.IkScriptCommand.WordSet_Number(0, drinkData.fAEF0B3AF());
        var selection = main.event.ik.command.IkScriptCommand.ShowMessageAndContext(talk_data.confirm_label, mstxt, talkNpcName, choices);
        return selection != choices.length - 1;
    }

    @:hashAbi("F0ED08D87B3B0293E")
    public function BuyDrinkSequence(?drinkData:Dynamic, ?talk_data:Dynamic, ?cafeData:Dynamic):Dynamic
    {
        var ownerSnapshot:event_ik.CafeEvent = this;
        cppbindings.C56DE81E7.f5CE9D7D8(-untyped (cast drinkData : Dynamic).fAEF0B3AF(), true);
        main.event.ik.command.IkScriptCommand.SetWordSet(0, this.mstxt, untyped (cast drinkData : Dynamic).f28453960());
        main.event.ik.command.IkScriptCommand.ShowMessage(0, untyped (cast talk_data : Dynamic).menu_pick_up_label, this.mstxt, this.talkNpcName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_CAFE_IN");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        if (lua.abi.Host.truthy(this.slot12)) {
            main.event.ik.command.IkScriptCommand.AddTagCommon(this.talkNpcName, "EventNpcReturnForce");
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.talkNpcName);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        cppbindings.C56DE81E7.f569384D5();
        this.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        var player:CafeCharacter = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        player.f7360ED03();
        {
            var _this:cppbindings.CD5675BA5 = player.f64857644();
            {
                var v:cppbindings.Vec3 = _this.f643B5D6F();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues:lua.Table<Int, Float>;
                    vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues);
                };
            };
        };
        var playerTransform:CafeSnackTransform = untyped (cast cafeData : Dynamic).f39E5D174();
        var positionX:cppbindings.Vec3 = playerTransform.f33F016EA();
        var x:StdTypes.Float = positionX.x;
        var positionY:cppbindings.Vec3 = playerTransform.f33F016EA();
        var y:StdTypes.Float = positionY.y;
        var positionZ:cppbindings.Vec3 = playerTransform.f33F016EA();
        var action:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", x, y, positionZ.z, playerTransform.fF355727A());
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
        player.f46E0548D("PartyRecover");
        var isLowSeat:StdTypes.Bool = lua.abi.Host.truthy(event_ik.CafeEvent.S9EA40BCD5253F83E(cafeData));
        if (!isLowSeat) {
            isLowSeat = (this.talkNpcName == "npc_A03_z01_02_0021");
        };
        var sitAnimation:StdTypes.Int = (if (isLowSeat) {
            214;
        } else {
            217;
        });
        if (isLowSeat) {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 495));
            action = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", sitAnimation);
        } else {
            action = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", sitAnimation);
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
        var data:CafeCameraData = cafeData;
        var cameraCoordinates:cppbindings.Vec3 = data.fE90051CB();
        var cameraPosition:lua.Table<Int, Float> = ({
            var x:StdTypes.Float = cameraCoordinates.x;
            var y:StdTypes.Float = cameraCoordinates.y;
            var z:StdTypes.Float = cameraCoordinates.z;
            var vectorValues3:lua.Table<Int, Float>;
            vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues3);
        });
        var cameraAngles:cppbindings.Vec3 = data.fC85F75A9();
        var cameraAngle:lua.Table<Int, Float> = ({
            var x:StdTypes.Float = cameraAngles.x;
            var y:StdTypes.Float = cameraAngles.y;
            var z:StdTypes.Float = cameraAngles.z;
            var vectorValues5:lua.Table<Int, Float>;
            vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues5);
        });
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraPosition, cameraAngle, 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        var currentPartner:CafeCharacter = player.f4F420785();
        if ((currentPartner != null)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(currentPartner.fE9C29DA1(), false);
        };
        var partnerCoordinates:cppbindings.Vec3 = playerTransform.f33F016EA();
        var partnerPosition:lua.Table<Int, Float> = ({
            var x:StdTypes.Float = partnerCoordinates.x;
            var y:StdTypes.Float = partnerCoordinates.y;
            var z:StdTypes.Float = partnerCoordinates.z;
            var vectorValues7:lua.Table<Int, Float>;
            vectorValues7 = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues7);
        });
        var partner:CafeCharacter = this.CreatePokemon(partnerPosition, cafeData);
        var cafeObjects:Array<Dynamic> = [this.CreateDrink(drinkData)];
        var snackData:Dynamic = untyped (cast cafeData : Dynamic).f20FF153C();
        if ((untyped (cast snackData : Dynamic).f63D64F1D() != "None")) {
            cafeObjects.push(this.CreateFood(untyped (cast cafeData : Dynamic).f20FF153C()));
        };
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if ((untyped (cast drinkData : Dynamic).f9C11514A() == "")) {
            main.event.ik.command.IkScriptCommand.SetWordSet(0, this.mstxt, untyped (cast drinkData : Dynamic).f28453960());
            main.event.ik.command.IkScriptCommand.ShowMessage(0, untyped (cast talk_data : Dynamic).cooking_explan_label, this.mstxt, this.talkNpcName);
        } else {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, untyped (cast drinkData : Dynamic).f9C11514A(), this.mstxt, this.talkNpcName);
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.fC65E3809())) {
            this.Suspend();
        };
        var clerk:CafeCharacter = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent(this.talkNpcName);
        if (lua.abi.Host.truthy(this.slot12)) {
            this.Await(function():Dynamic {
                return !lua.abi.Host.truthy(clerk.f06C4142A("EventNpcReturnForce"));
            });
        };
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T500");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T500");
        var photoMode:Dynamic = false;
        var previousAction:StdTypes.Int = 0;
        var currentAction:StdTypes.Int = 0;
        var elapsed:StdTypes.Float = 0.0;
        var random:cppbindings.C1A00019C = cppbindings.C1A00019C.f101D811F();
        {
            random.f8C8B6BB6();
        };
        var idleDuration:() -> StdTypes.Float = function():StdTypes.Float {
            return (({
                var includeMaxRange:StdTypes.Bool = true;
                if ((includeMaxRange == null)) includeMaxRange = true;
                random.f52C8AF50(3, includeMaxRange);
            }) + 2);
        };
        var actionDuration:() -> StdTypes.Float = function():StdTypes.Float {
            return (({
                var includeMaxRange:StdTypes.Bool = true;
                if ((includeMaxRange == null)) includeMaxRange = true;
                random.f52C8AF50(4, includeMaxRange);
            }) + 7);
        };
        var waitFacialReset:() -> StdTypes.Void = function():StdTypes.Void {
            var resets:haxe.ds.List<Dynamic> = new haxe.ds.List();
            var accessor:CafeCharacter = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
            resets.push(accessor.fA6EF2E93(5, 1));
            resets.push(accessor.fA6EF2E93(9, 1));
            resets.push(accessor.fA6EF2E93(10, 1));
            resets.push(accessor.fA6EF2E93(11, 1));
            for (reset in resets.iterator()) {
                var resetHandle:Dynamic = reset;
                ownerSnapshot.Await(function():Dynamic {
                    return untyped (cast resetHandle : Dynamic).fFFAA5D50();
                });
            };
        };
        var duration:StdTypes.Float = idleDuration();
        var stopAction:StdTypes.Int -> StdTypes.Void = function(index:StdTypes.Int):StdTypes.Void {
            if ((index == 2)) {
                main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
                waitFacialReset();
            } else {
                if (((index == 1) || (index == 3))) {
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
                };
            };
        };
        var setPhotoMode:Dynamic -> StdTypes.Void = function(enabled:Dynamic):StdTypes.Void {
            photoMode = enabled;
            if (lua.abi.Host.truthy(enabled)) {
                stopAction(currentAction);
                if ((currentAction != 0)) {
                    previousAction = currentAction;
                };
                currentAction = 0;
                elapsed = 0.0;
                duration = idleDuration();
                main.event.ik.command.IkScriptCommand.UnRegisterEventScenarioForCharaName("Player");
            } else {
                var accessor:CafeCharacter = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
                accessor.f02A80C92();
                ownerSnapshot.Await(function():Dynamic {
                    return main.event.ik.command.IkScriptCommand.IsValidScenarioForCharaName("Player");
                });
            };
        };
        var idleActions:() -> StdTypes.Void = function():StdTypes.Void {
            var actions:Array<() -> StdTypes.Void> = [function():StdTypes.Void { }, function():StdTypes.Void {
                duration = actionDuration();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", partner.fE9C29DA1(), "head");
            }, function():StdTypes.Void {
                duration = actionDuration();
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", partner.fE9C29DA1(), "head");
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_small");
            }, function():StdTypes.Void {
                duration = actionDuration();
                var accessor:CafeCharacter = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
                var head:cppbindings.Vec3 = cppbindings.C56DE81E7.fEFA0C6A9((cast accessor.fEBA8F794()), "head", "default");
                var headCoordinates:lua.Table<Int, Float> = ({
                    var x:StdTypes.Float = head.x;
                    var y:StdTypes.Float = head.y;
                    var z:StdTypes.Float = head.z;
                    var vectorValues9:lua.Table<Int, Float>;
                    vectorValues9 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues9);
                });
                var headPosition:lua.Table<Int, Float> = (if (((cast headCoordinates)[1] == null)) {
                    null;
                } else {
                    headCoordinates;
                });
                var raised:lua.Table<Int, Float> = (cast lua.Table.create([((cast headPosition)[1] + 0), ((cast headPosition)[2] + 1), ((cast headPosition)[3] + 0)]));
                var forward:lua.Table<Int, Float> = ({
                    var _this:cppbindings.CD5675BA5 = accessor.f64857644();
                    var v:lua.Table<Int, Float> = (cast lua.Table.create([0.0, 0.0, 1.0]));
                    {
                        var v:cppbindings.Vec3 = _this.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                        {
                            var x:StdTypes.Float = v.x;
                            var y:StdTypes.Float = v.y;
                            var z:StdTypes.Float = v.z;
                            var vectorValues11:lua.Table<Int, Float>;
                            vectorValues11 = (lua.Table.create(([x, y, z] : Array<Float>)));
                            cast (cast vectorValues11);
                        };
                    };
                });
                var lookAt:lua.Table<Int, Float> = (cast lua.Table.create([((cast raised)[1] + (cast forward)[1]), ((cast raised)[2] + (cast forward)[2]), ((cast raised)[3] + (cast forward)[3])]));
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lookAt);
            }, function():StdTypes.Void {
                duration = 0.0;
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.S83CD71CD25CA742A("Player", (if (isLowSeat) {
                    300;
                } else {
                    302;
                })));
            }, function():StdTypes.Void {
                duration = 0.0;
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.S83CD71CD25CA742A("Player", (if (isLowSeat) {
                    301;
                } else {
                    303;
                })));
            }];
            var firstAction:StdTypes.Bool = true;
            while (true) {
                var delta:StdTypes.Float = ownerSnapshot.Suspend();
                if (!lua.abi.Host.truthy(photoMode)) {
                    elapsed = (elapsed + delta);
                    if (!(elapsed < duration)) {
                        elapsed = 0.0;
                        if (firstAction) {
                            currentAction = (random.fDAAAA586(2) + 1);
                            actions[currentAction]();
                            firstAction = false;
                        } else {
                            if ((currentAction != 0)) {
                                previousAction = currentAction;
                                currentAction = 0;
                                stopAction(previousAction);
                                duration = idleDuration();
                            } else {
                                var accessor:CafeCharacter = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
                                accessor.f0D2E2377();
                                accessor.f02A80C92();
                                var candidates:Array<StdTypes.Int> = [0, 1, 2, 3, 4, 5];
                                candidates.remove(0);
                                candidates.remove(previousAction);
                                previousAction = 0;
                                currentAction = candidates[({
                                    var maxRange:StdTypes.Int = (candidates.length - 1);
                                    random.fDAAAA586(maxRange);
                                })];
                                actions[currentAction]();
                            };
                        };
                    };
                };
            };
        };
        this.CreateSubCorutin("CafeIdleAction", idleActions);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        var relaxStateEnded:StdTypes.Bool = false;
        this.CreateSubCorutin("sc10", function():StdTypes.Void {
            main.event.ik.command.IkScriptCommand.StartCafeRelaxState("", "");
            relaxStateEnded = true;
        });
        cppbindings.C56DE81E7.f72C824B4();
        this.Await_no_timeout(function():Dynamic {
            return cppbindings.C56DE81E7.f3FBAD000();
        });
        var finished:StdTypes.Bool = false;
        while (!finished) {
            while (!lua.abi.Host.truthy(cppbindings.CDFF6D3D5.f6E019F84("UI_CANCEL"))) {
                this.Suspend();
                if (lua.abi.Host.truthy(cppbindings.CDFF6D3D5.f6E019F84("UI_SP_2"))) {
                    cppbindings.C56DE81E7.f08352425();
                    setPhotoMode(true);
                    this.Suspend();
                    this.Await_no_timeout(function():Dynamic {
                        return cppbindings.C56DE81E7.fE15A9ED3();
                    });
                    cppbindings.C56DE81E7.f48FE73DB();
                    this.Await_no_timeout(function():Dynamic {
                        return cppbindings.C56DE81E7.fCB8C14AE();
                    });
                    cppbindings.C56DE81E7.f06384358(true);
                    this.Await_no_timeout(function():Dynamic {
                        return cppbindings.C56DE81E7.f94EEAAD7();
                    });
                    var restoredCoordinates:cppbindings.Vec3 = data.fE90051CB();
                    var restoredPosition:lua.Table<Int, Float> = ({
                        var x:StdTypes.Float = restoredCoordinates.x;
                        var y:StdTypes.Float = restoredCoordinates.y;
                        var z:StdTypes.Float = restoredCoordinates.z;
                        var vectorValues13:lua.Table<Int, Float>;
                        vectorValues13 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues13);
                    });
                    var restoredAngles:cppbindings.Vec3 = data.fC85F75A9();
                    var restoredAngle:lua.Table<Int, Float> = ({
                        var x:StdTypes.Float = restoredAngles.x;
                        var y:StdTypes.Float = restoredAngles.y;
                        var z:StdTypes.Float = restoredAngles.z;
                        var vectorValues15:lua.Table<Int, Float>;
                        vectorValues15 = (lua.Table.create(([x, y, z] : Array<Float>)));
                        cast (cast vectorValues15);
                    });
                    main.event.command.EventCameraCommand.CameraMoveAngleFov(0.0, restoredPosition, restoredAngle, 40.0, 0, 3);
                    this.Await_no_timeout(function():Dynamic {
                        return !lua.abi.Host.truthy(cppbindings.C56DE81E7.fCB8C14AE());
                    });
                    setPhotoMode(false);
                    cppbindings.C56DE81E7.f72C824B4();
                    this.Await_no_timeout(function():Dynamic {
                        return cppbindings.C56DE81E7.f3FBAD000();
                    });
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", sitAnimation));
                };
            };
            var choice:StdTypes.Int = main.event.ik.command.IkScriptCommand.ShowMessageAndContext(untyped (cast talk_data : Dynamic).exit_label, this.mstxt, this.talkNpcName, ["msg_cafe_cmn_yes", "msg_cafe_cmn_no"], null, 2);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            if ((choice != 1)) {
                finished = true;
                cppbindings.C3421B914.f3D18A8A7();
            };
        };
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_CAFE_OUT");
        while (!relaxStateEnded) {
            this.Suspend();
        };
        partner.f9F5F6C50("EventPartnerCafe");
        this.RemoveSubCorutin("CafeIdleAction");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        if ((currentPartner != null)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(currentPartner.fE9C29DA1(), true);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", true);
        cppbindings.C56DE81E7.fAEBB94CE();
        main.event.ik.command.IkScriptCommand.Camera_End(false);
        main.event.ik.command.IkScriptCommand.SetFlagValue(this.slot11, false);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.SetFlagValue("TEMP_FLAG_CAFE_CHAIR_REMOVE", false);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter(partner.fE9C29DA1());
        var objectIndex:StdTypes.Int = 0;
        while ((objectIndex < cafeObjects.length)) {
            var object:cppbindings.C016374C1 = cafeObjects[objectIndex++];
            {
                var withChildren:StdTypes.Bool = true;
                if ((withChildren == null)) withChildren = true;
                object.fCDCB600D(withChildren);
            };
        };
        this.Suspend();
        var clerkCoordinates:cppbindings.Vec3 = clerk.f7360ED03();
        var clerkX:StdTypes.Float = clerkCoordinates.x;
        var clerkY:StdTypes.Float = clerkCoordinates.y;
        var clerkZ:StdTypes.Float = clerkCoordinates.z;
        var direction:lua.Table<Int, Float> = ({
            var _this:cppbindings.CD5675BA5 = clerk.f64857644();
            var v:lua.Table<Int, Float> = (cast lua.Table.create([0.0, 0.0, 1.0]));
            {
                var v:cppbindings.Vec3 = _this.fCA247E7A((cast v)[1], (cast v)[2], (cast v)[3]);
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues17:lua.Table<Int, Float>;
                    vectorValues17 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues17);
                };
            };
        });
        var offsetX:StdTypes.Float = ((cast direction)[1] * 2);
        var offsetY:StdTypes.Float = ((cast direction)[2] * 2);
        var offsetZ:StdTypes.Float = ((cast direction)[3] * 2);
        var angles:lua.Table<Int, Float> = ({
            var _this:cppbindings.CD5675BA5 = clerk.f64857644();
            {
                var v:cppbindings.Vec3 = _this.f643B5D6F();
                {
                    var x:StdTypes.Float = v.x;
                    var y:StdTypes.Float = v.y;
                    var z:StdTypes.Float = v.z;
                    var vectorValues19:lua.Table<Int, Float>;
                    vectorValues19 = (lua.Table.create(([x, y, z] : Array<Float>)));
                    cast (cast vectorValues19);
                };
            };
        });
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (clerkX + offsetX), (clerkY + offsetY), (clerkZ + offsetZ), ((((cast angles)[2] / (2 * lua.Math.pi)) * 360.0) + 180)));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Force("Player"));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Base_Force("Player"));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Facial("Player");
        main.event.ik.command.IkScriptCommand.CameraResetRotation();
        main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
        main.event.ik.command.IkScriptCommand.Wait_Time(4.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_OFF");
        return null;
    }

    @:hashAbi("F0523F2D1C8F701F6")
    public function CreatePokemon(?playerPos:Dynamic, ?cafeData:Dynamic, ?overrideDevNo:Dynamic, ?overrideFormNo:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic):Dynamic
    {
        if ((arg7 == null)) {
            arg7 = false;
        };
        var partyIndex:Dynamic = cppbindings.C56DE81E7.f77A67D25();
        var invalidIndex:StdTypes.Bool = (partyIndex == null);
        if (!invalidIndex) {
            var count:StdTypes.Float = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
            var negative:StdTypes.Bool = (partyIndex < 0);
            invalidIndex = (if ((negative != (count < 0))) {
                negative;
            } else {
                partyIndex >= count;
            });
        };
        if (invalidIndex) {
            partyIndex = main.event.ik.command.IkScriptCommand.SBEB16EDBB5FF365F();
        };
        var parameter:Dynamic = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(partyIndex);
        cppbindings.C56DE81E7.f20C26C04(partyIndex);
        var simpleParameter:Dynamic = cppbindings.CB66BF4D3.f89B3EEBF(parameter);
        var isOybn:Dynamic = untyped (cast simpleParameter : Dynamic).fCFD269DB();
        var sex:Dynamic = untyped (cast parameter : Dynamic).fB31DF589();
        var species:Dynamic = untyped (cast parameter : Dynamic).f0DE6FCA9();
        var form:Dynamic = untyped (cast parameter : Dynamic).f9E86AD53();
        var scale:Dynamic = untyped (cast parameter : Dynamic).f1E57BACE();
        var partner:CafePartner = main.event.ik.command.IkScriptCommand.Create_NpcPokemon("cafe_partner", playerPos, 0, species, form, sex, null, null, true, untyped (cast parameter : Dynamic).fA284DF88(), scale, isOybn, false, false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter(partner);
        main.event.ik.command.IkScriptCommand.SetAlwaysFrequencyByHdl(partner);
        main.event.ik.command.IkScriptCommand.SB70BF7116F3080EE(partner.fE9C29DA1());
        var size:Dynamic = cppbindings.CBAEFF9C5.fA0AF576F(species, form, sex, isOybn, partner.fBE35A594(), null, null, null, null, null, null, null, null, null, null, null);
        var sizeCategory:StdTypes.Int = (cast(size, StdTypes.Int));
        partner.fBE35A594();
        main.event.ik.command.IkScriptCommand.SetFlagValue(this.slot11, true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        var removeChair:StdTypes.Bool = lua.abi.Host.truthy(this.IsNeedMapReplace(sizeCategory));
        main.event.ik.command.IkScriptCommand.SetFlagValue("TEMP_FLAG_CAFE_CHAIR_REMOVE", removeChair);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        partner.f46E0548D("EventPartnerCafe");
        if ((sizeCategory != 0)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_DisableWallCollision(partner.fE9C29DA1(), false);
            if ((this.talkNpcName == "npc_A02_z01_02_0001")) {
                main.event.ik.command.IkScriptCommand.FObj_Set_Gravity(partner.fE9C29DA1(), false);
            };
            this.Suspend();
        };
        var pokeData:Dynamic = untyped (cast cafeData : Dynamic).f3C8188AC();
        var transform:CafeSnackTransform = untyped (cast pokeData : Dynamic).f14603293(sizeCategory);
        var coordinates:cppbindings.Vec3 = transform.f33F016EA();
        var position:lua.Table<Int, Float> = ({
            var x:StdTypes.Float = coordinates.x;
            var y:StdTypes.Float = coordinates.y;
            var z:StdTypes.Float = coordinates.z;
            var vectorValues:lua.Table<Int, Float>;
            vectorValues = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues);
        });
        if (lua.abi.Host.truthy(cppbindings.CBAEFF9C5.fC74EB91D())) {
            var origin:cppbindings.Vec3 = transform.f33F016EA();
            var adjusted:cppbindings.Vec3 = partner.f66780B7C(origin.x, origin.y, origin.z);
            position = ({
                var x:StdTypes.Float = adjusted.x;
                var y:StdTypes.Float = adjusted.y;
                var z:StdTypes.Float = adjusted.z;
                var vectorValues3:lua.Table<Int, Float>;
                vectorValues3 = (lua.Table.create(([x, y, z] : Array<Float>)));
                cast (cast vectorValues3);
            });
        };
        if (lua.abi.Host.truthy(cppbindings.CBAEFF9C5.fE1CE7065())) {
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(partner.fE9C29DA1(), false);
            var offset:StdTypes.Float = cppbindings.CBAEFF9C5.f8584D081();
            if ((offset != 0)) {
                (cast position)[2] = ((cast position)[2] + offset);
            };
        };
        cppbindings.CBAEFF9C5.fC74EB91D();
        var diagnosticCoordinates:cppbindings.Vec3 = transform.f33F016EA();
        var diagnosticPosition:lua.Table<Int, Float> = ({
            var x:StdTypes.Float = diagnosticCoordinates.x;
            var y:StdTypes.Float = diagnosticCoordinates.y;
            var z:StdTypes.Float = diagnosticCoordinates.z;
            var vectorValues5:lua.Table<Int, Float>;
            vectorValues5 = (lua.Table.create(([x, y, z] : Array<Float>)));
            cast (cast vectorValues5);
        });
        main.util.StrUtil.FormatVec3((cast diagnosticPosition));
        main.util.StrUtil.FormatVec3((cast position));
        var action:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(partner.fE9C29DA1(), (cast position)[1], (cast position)[2], (cast position)[3], transform.fF355727A());
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(action);
        main.event.ik.command.IkScriptCommand.UnRegisterEventScenarioForCharaName(partner.fE9C29DA1());
        cppbindings.C56DE81E7.f94F28334(partyIndex);
        return partner;
    }

    @:hashAbi("FD17ED23ED101D007")
    public function IsNeedMapReplace(?pokemon:Dynamic):Dynamic
    {
        return untyped 0 != pokemon;
    }
}

private typedef CafeOrder =
{
    var drinkType:Float;
    var menuIndex:Float;
}

private typedef CafeSnackData =
{
    function fF5BA17DF():CafeSnackTransform;
    function f63D64F1D():String;
}

private typedef CafeSnackTransform =
{
    function f33F016EA():cppbindings.Vec3;
    function fF355727A():Float;
}

private typedef CafeDrinkData =
{
    function fFB8D1FE6():String;
    function f6EBFFFCA():cppbindings.Vec3;
    function fA2C72063():Float;
}

private typedef CafePartner =
{
    function fE9C29DA1():String;
    function fBE35A594():Float;
    function f46E0548D(tag:String):Void;
    function f66780B7C(x:Float, y:Float, z:Float):cppbindings.Vec3;
}

private typedef CafeCameraData =
{
    function fE90051CB():cppbindings.Vec3;
    function fC85F75A9():cppbindings.Vec3;
}

private typedef CafeCharacter =
{
    function f7360ED03():cppbindings.Vec3;
    function f64857644():cppbindings.CD5675BA5;
    function f46E0548D(tag:String):Void;
    function f4F420785():CafeCharacter;
    function fE9C29DA1():String;
    function f06C4142A(tag:String):Dynamic;
    function fA6EF2E93(type:Int, mode:Int):Dynamic;
    function f02A80C92():Void;
    function f0D2E2377():Void;
    function fEBA8F794():cppbindings.C016374C1;
    function f9F5F6C50(tag:String):Void;
}
