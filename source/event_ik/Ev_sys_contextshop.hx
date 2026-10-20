package event_ik;

import main.event.ik.base.BaseSystemEvent;
import main.event.ik.command.IkScriptCommand;
import main.event.ik.command.TextResourceManager;
import cppbindings.C56DE81E7;

private typedef ShopGoods =
{
    var itemID:String;
    var price:UInt;
}

private typedef ShopData =
{
    var shopType:Int;
    var shopID:String;
    var goodsList:Array<ShopGoods>;
}

private typedef ShopMessageData =
{
    var shopType:Int;
    var first_text:Array<String>;
    var confirm_text:Array<String>;
    var next_text:Array<String>;
    var next_2_text:Array<String>;
    var end_text:Array<String>;
    var no_money_text:Array<String>;
    var over_text:Array<String>;
}

@:keep
@:chunk("event_ik")
@:hashAbi("CEACFDD2CAE22BB8F")
@:expose("CEACFDD2CAE22BB8F")
class Ev_sys_contextshop extends BaseSystemEvent
{
    @:abiSlot(11)
    public var m_shopID:String = "";

    @:abiSlot(12)
    public var m_shopData:ShopData = null;

    @:abiSlot(13)
    public var m_shopMessageData:ShopMessageData = null;

    @:abiSlot(14)
    public var m_messageIdx:Int = 0;

    @:abiSlot(15)
    public var slot15:String = "";

    @:abiSlot(16)
    public var m_messateData:Array<ShopMessageData> =
    [
        {
            shopType: 1,
            first_text: ["msg_stand_01_talk_01"],
            confirm_text: ["msg_stand_01_talk_05"],
            next_text: ["msg_stand_01_talk_02", "msg_stand_11_talk_02"],
            next_2_text: ["msg_stand_01_talk_07", "msg_stand_11_talk_07"],
            end_text: ["msg_stand_01_talk_04", "msg_stand_11_talk_04"],
            no_money_text: ["msg_stand_01_talk_03", "msg_stand_11_talk_03"],
            over_text: ["msg_stand_01_talk_08", "msg_stand_11_talk_08"]
        },
        {
            shopType: 2,
            first_text: ["msg_stand_02_talk_01"],
            confirm_text: ["msg_stand_02_talk_06"],
            next_text: ["msg_stand_02_talk_02"],
            next_2_text: ["msg_stand_02_talk_07"],
            end_text: ["msg_stand_02_talk_04"],
            no_money_text: ["msg_stand_02_talk_03"],
            over_text: ["msg_stand_02_talk_08"]
        },
        {
            shopType: 0,
            first_text: ["msg_stand_03_talk_01"],
            confirm_text: ["msg_stand_03_talk_06"],
            next_text: ["msg_stand_03_talk_02"],
            next_2_text: ["msg_stand_03_talk_07"],
            end_text: ["msg_stand_03_talk_04"],
            no_money_text: ["msg_stand_03_talk_03"],
            over_text: ["msg_stand_03_talk_08"]
        },
        {
            shopType: 3,
            first_text: ["msg_stand_04_talk_01"],
            confirm_text: ["msg_stand_04_talk_06"],
            next_text: ["msg_stand_04_talk_02"],
            next_2_text: ["msg_stand_04_talk_07"],
            end_text: ["msg_stand_04_talk_04"],
            no_money_text: ["msg_stand_04_talk_03"],
            over_text: ["msg_stand_04_talk_08"]
        },
        {
            shopType: 4,
            first_text: ["msg_stand_05_talk_01", "msg_stand_05_talk_11"],
            confirm_text: ["msg_stand_05_talk_02"],
            next_text: ["msg_stand_05_talk_03"],
            next_2_text: ["msg_stand_05_talk_07"],
            end_text: ["msg_stand_05_talk_05"],
            no_money_text: ["msg_stand_05_talk_04"],
            over_text: ["msg_stand_05_talk_06"]
        }
    ];

    @:abiSlot(17)
    public var m_data:Array<ShopData> =
    [
        {
            shopType: 0,
            shopID: "kiyo_0001",
            goodsList:
            [
                {
                    itemID: "ITEMID_OISIIMIZU",
                    price: 200
                },
                {
                    itemID: "ITEMID_SAIKOSOODA",
                    price: 300
                },
                {
                    itemID: "ITEMID_MIKKUSUORE",
                    price: 400
                },
                {
                    itemID: "ITEMID_MOOMOOMIRUKU",
                    price: 600
                }
            ]
        },
        {
            shopType: 2,
            shopID: "gale_0001",
            goodsList:
            [
                {
                    itemID: "ITEMID_MIAREGARETTO",
                    price: 350
                }
            ]
        },
        {
            shopType: 1,
            shopID: "nuts_0001",
            goodsList:
            [
                {
                    itemID: "ITEMID_ORENNOMI",
                    price: 80
                },
                {
                    itemID: "ITEMID_KURABONOMI",
                    price: 80
                },
                {
                    itemID: "ITEMID_KAGONOMI",
                    price: 80
                },
                {
                    itemID: "ITEMID_MOMONNOMI",
                    price: 80
                },
                {
                    itemID: "ITEMID_TIIGONOMI",
                    price: 80
                },
                {
                    itemID: "ITEMID_NANASINOMI",
                    price: 80
                },
                {
                    itemID: "ITEMID_KIINOMI",
                    price: 80
                }
            ]
        },
        {
            shopType: 1,
            shopID: "nuts_0002",
            goodsList:
            [
                {
                    itemID: "ITEMID_OBONNOMI",
                    price: 400
                },
                {
                    itemID: "ITEMID_RAMUNOMI",
                    price: 600
                }
            ]
        },
        {
            shopType: 1,
            shopID: "nuts_0003",
            goodsList:
            [
                {
                    itemID: "ITEMID_ZAROKUNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_NEKOBUNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_TAPORUNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_ROMENOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_UBUNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_MATOMANOMI",
                    price: 200
                }
            ]
        },
        {
            shopType: 1,
            shopID: "nuts_0004",
            goodsList:
            [
                {
                    itemID: "ITEMID_OKKANOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_ITOKENOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_SOKUNONOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_RINDONOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_YATHENOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_YOPUNOMI",
                    price: 200
                }
            ]
        },
        {
            shopType: 1,
            shopID: "nuts_0005",
            goodsList:
            [
                {
                    itemID: "ITEMID_BIAANOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_SYUKANOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_BAKOUNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_UTANNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_TANGANOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_YOROGINOMI",
                    price: 200
                }
            ]
        },
        {
            shopType: 1,
            shopID: "nuts_0006",
            goodsList:
            [
                {
                    itemID: "ITEMID_KASIBUNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_HABANNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_NAMONOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_RIRIBANOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_HOZUNOMI",
                    price: 200
                },
                {
                    itemID: "ITEMID_ROZERUNOMI",
                    price: 200
                }
            ]
        },
        {
            shopType: 3,
            shopID: "flwr_0001",
            goodsList:
            [
                {
                    itemID: "ITEMID_SAMISIGARIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_IZIPPARIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_YANTYAMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_YUKANMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_MAZIMEMINTO",
                    price: 20000
                }
            ]
        },
        {
            shopType: 3,
            shopID: "flwr_0002",
            goodsList:
            [
                {
                    itemID: "ITEMID_ZUBUTOIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_WANPAKUMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_NOUTENKIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_NONKIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_MAZIMEMINTO",
                    price: 20000
                }
            ]
        },
        {
            shopType: 3,
            shopID: "flwr_0003",
            goodsList:
            [
                {
                    itemID: "ITEMID_HIKAEMEMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_OTTORIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_UKKARIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_REISEIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_MAZIMEMINTO",
                    price: 20000
                }
            ]
        },
        {
            shopType: 3,
            shopID: "flwr_0004",
            goodsList:
            [
                {
                    itemID: "ITEMID_ODAYAKAMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_OTONASIIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_SINTYOUMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_NAMAIKIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_MAZIMEMINTO",
                    price: 20000
                }
            ]
        },
        {
            shopType: 3,
            shopID: "flwr_0005",
            goodsList:
            [
                {
                    itemID: "ITEMID_OKUBYOUMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_SEKKTIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_YOUKIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_MUJYAKIMINTO",
                    price: 20000
                },
                {
                    itemID: "ITEMID_MAZIMEMINTO",
                    price: 20000
                }
            ]
        },
        {
            shopType: 4,
            shopID: "garg_0001",
            goodsList:
            [
                {
                    itemID: "ITEMID_GINNOKONA",
                    price: 4980
                },
                {
                    itemID: "ITEMID_METARUKOOTO",
                    price: 4980
                },
                {
                    itemID: "ITEMID_YAWARAKAISUNA",
                    price: 4980
                },
                {
                    itemID: "ITEMID_KATAIISI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_KISEKINOTANE",
                    price: 4980
                },
                {
                    itemID: "ITEMID_KUROIMEGANE",
                    price: 4980
                },
                {
                    itemID: "ITEMID_KUROOBI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_ZISYAKU",
                    price: 4980
                },
                {
                    itemID: "ITEMID_SINPINOSIZUKU",
                    price: 4980
                },
                {
                    itemID: "ITEMID_SURUDOIKUTIBASI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_DOKUBARI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_TOKENAIKOORI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_NOROINOOHUDA",
                    price: 4980
                },
                {
                    itemID: "ITEMID_MAGATTASUPUUN",
                    price: 4980
                },
                {
                    itemID: "ITEMID_MOKUTAN",
                    price: 4980
                },
                {
                    itemID: "ITEMID_RYUUNOKIBA",
                    price: 4980
                },
                {
                    itemID: "ITEMID_SIRUKUNOSUKAAHU",
                    price: 4980
                },
                {
                    itemID: "ITEMID_YOUSEINOHANE",
                    price: 4980
                }
            ]
        },
        {
            shopType: 4,
            shopID: "garg_0002",
            goodsList:
            [
                {
                    itemID: "ITEMID_SIROIHAABU",
                    price: 4980
                },
                {
                    itemID: "ITEMID_SENSEINOTUME",
                    price: 4980
                },
                {
                    itemID: "ITEMID_OUZYANOSIRUSI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_KIAINOHATIMAKI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_PINTORENZU",
                    price: 4980
                },
                {
                    itemID: "ITEMID_TABENOKOSI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_KAIGARANOSUZU",
                    price: 4980
                },
                {
                    itemID: "ITEMID_TIKARANOHATIMAKI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_MONOSIRIMEGANE",
                    price: 4980
                },
                {
                    itemID: "ITEMID_TATUZINNOOBI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_INOTINOTAMA",
                    price: 4980
                },
                {
                    itemID: "ITEMID_KIAINOTASUKI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_OOKINANEKKO",
                    price: 4980
                },
                {
                    itemID: "ITEMID_SINKANOKISEKI",
                    price: 4980
                },
                {
                    itemID: "ITEMID_GOTUGOTUMETTO",
                    price: 4980
                },
                {
                    itemID: "ITEMID_NOOMARUZYUERU",
                    price: 4980
                },
                {
                    itemID: "ITEMID_ZYAKUTENHOKEN",
                    price: 4980
                },
                {
                    itemID: "ITEMID_TOTUGEKITYOKKI",
                    price: 4980
                }
            ]
        }
    ];

    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        IkScriptCommand.S3D047DB5B440735C();
        slot15 = IkScriptCommand.GetLastInteractObjectName("BOOT_CONDITION_TALK_NPC");
        FBA1C1BF976296FD5(slot15);
        IkScriptCommand.FObj_LookAt_Obj("Player", slot15, "head");
        IkScriptCommand.FObj_LookAt_Obj(slot15, "Player", "head");
        var resource = TextResourceManager.GetTextResourcePath("script/stand");
        TextResourceManager.LoadTextResource(resource);
        Await(function():Bool
        {
            return TextResourceManager.IsCompleteLoadingTextResource(resource);
        });
        C56DE81E7.f3CE87C91();
        IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        var text = GetText(m_shopMessageData.first_text, m_messageIdx);
        IkScriptCommand.ShowMessage(0, text, "stand", slot15);
        while (true)
        {
            var items:Array<Dynamic> = [];
            var bufferID = 2;
            var textCount = 1;
            for (goods in m_shopData.goodsList)
            {
                items.push(IkScriptCommand.CreateItemText("msg_stand_00_select_" + textCount, "stand", goods.itemID, 1, bufferID));
                bufferID++;
                textCount++;
            }
            items.push(IkScriptCommand.CreatePlaneText("msg_stand_00_select_cancel", "stand"));
            var index:Int = IkScriptCommand.ShowContextMenuWithTag(items, 0, true, false, 2, 0, "stand");
            IkScriptCommand.HideMessageWindow();
            if (index < items.length - 1)
            {
                var price:UInt = m_shopData.goodsList[index].price;
                var itemID = m_shopData.goodsList[index].itemID;
                IkScriptCommand.WordSet_Name_Item(2, itemID, 1);
                IkScriptCommand.WordSet_Number(3, price);
                text = GetText(m_shopMessageData.confirm_text, m_messageIdx);
                IkScriptCommand.ShowMessageWindow(0, text, "stand", slot15);
                var confirmIndex = IkScriptCommand.ShowContextMenu(["msg_stand_00_talk_01", "msg_stand_00_talk_02"], 0, true, false, null, null, "stand");
                IkScriptCommand.HideMessageWindow();
                if (confirmIndex == 0)
                {
                    var money:UInt = C56DE81E7.fD88A4F2D();
                    if (price > money)
                    {
                        text = GetText(m_shopMessageData.no_money_text, m_messageIdx);
                        IkScriptCommand.ShowMessage(0, text, "stand", slot15);
                    }
                    else if (!C56DE81E7.fF5065E8B(itemID, 1))
                    {
                        text = GetText(m_shopMessageData.over_text, m_messageIdx);
                        IkScriptCommand.ShowMessage(0, text, "stand", slot15);
                    }
                    else
                    {
                        IkScriptCommand.ModifyItemNum(itemID, 1);
                        C56DE81E7.f5CE9D7D8(-price, false);
                        if (m_shopData.shopType == 1)
                        {
                            IkScriptCommand.WordSet_Name_Item(6, itemID, 1);
                        }
                        else if (m_shopData.shopType == 0)
                        {
                            IkScriptCommand.WordSet_Name_Item(2, itemID, 1);
                            IkScriptCommand.WordSet_Number(3, price);
                        }
                        text = GetText(m_shopMessageData.next_text, m_messageIdx);
                        IkScriptCommand.ShowMessage(0, text, "stand", slot15);
                        continue;
                    }
                }
                text = GetText(m_shopMessageData.next_2_text, m_messageIdx);
                IkScriptCommand.ShowMessage(0, text, "stand", slot15);
            }
            else
            {
                break;
            }
        }
        text = GetText(m_shopMessageData.end_text, m_messageIdx);
        IkScriptCommand.ShowMessage(0, text, "stand", slot15);
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
        IkScriptCommand.DestoryMoneyUI();
        TextResourceManager.UnloadTextResource(resource);
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        m_shopID = m_eventScriptParam.f73EE8FEC();
        if (m_eventScriptParam.fBF448F72() == "1")
        {
            m_messageIdx = 1;
        }
        m_shopData = SearchShopData(m_shopID);
        m_shopMessageData = SearchShopMessageData(m_shopData.shopType);
        return null;
    }

    @:hashAbi("F93EB69878F1CBC75")
    public function SearchShopData(shopID:String):ShopData
    {
        for (data in m_data)
        {
            if (data.shopID == shopID)
            {
                return data;
            }
        }
        return m_data[0];
    }

    @:hashAbi("F90259C6F0AB55B1C")
    public function SearchShopMessageData(shopType:Int):ShopMessageData
    {
        for (data in m_messateData)
        {
            if (data.shopType == shopType)
            {
                return data;
            }
        }
        return m_messateData[0];
    }

    @:hashAbi("FFDA9FDCF981A0210")
    public function GetText(text:Array<String>, index:Int):String
    {
        return text[index < text.length ? index : 0];
    }
}
