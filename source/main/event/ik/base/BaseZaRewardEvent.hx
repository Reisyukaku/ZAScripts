package main.event.ik.base;

import main.event.ik.command.IkScriptCommand;
import cppbindings.C1A00019C as Random;

private typedef ZaRewardCard =
{
    var cardID:String;
    var rate:Int;
}

private typedef ZaRewardItem =
{
    var itemID:String;
    var num:Int;
    var rate:Int;
}

private typedef ZaRewardMedals =
{
    var minMedal:Int;
    var maxMedal:Int;
}

@:keep
@:chunk("main")
@:hashAbi("CF1F901140A4C79A0")
@:expose("CF1F901140A4C79A0")
class BaseZaRewardEvent extends BaseEvent
{
    @:abiSlot(8)
    public var slot8:String = "";

    @:abiSlot(9)
    public var slot9:Bool = false;

    @:abiSlot(10)
    public var slot10:UInt = 0;

    @:abiSlot(11)
    public var slot11:Array<ZaRewardCard> =
    [
        {
            cardID: "bc_week_all_01_03",
            rate: 20
        },
        {
            cardID: "bc_fa_01_03",
            rate: 20
        },
        {
            cardID: "bc_fa_ko_01_03",
            rate: 10
        }
    ];

    @:abiSlot(12)
    public var slot12:Array<ZaRewardCard> =
    [
        {
            cardID: "bc_week_all_02_03",
            rate: 20
        },
        {
            cardID: "bc_fa_02_03",
            rate: 20
        },
        {
            cardID: "bc_fa_ko_02_03",
            rate: 20
        },
        {
            cardID: "bc_mega_hit_02_03",
            rate: 20
        },
        {
            cardID: "bc_wp_hit_02_03",
            rate: 20
        }
    ];

    @:abiSlot(13)
    public var slot13:Array<ZaRewardCard> =
    [
        {
            cardID: "bc_week_all_02_03",
            rate: 20
        },
        {
            cardID: "bc_fa_02_03",
            rate: 20
        },
        {
            cardID: "bc_fa_ko_02_03",
            rate: 20
        },
        {
            cardID: "bc_mega_hit_02_03",
            rate: 20
        },
        {
            cardID: "bc_wp_hit_02_03",
            rate: 20
        }
    ];

    @:abiSlot(14)
    public var slot14:Array<ZaRewardItem> =
    [
        {
            itemID: "ITEMID_SUUPAABOORU",
            num: 5,
            rate: 50
        },
        {
            itemID: "ITEMID_MIKKUSUORE",
            num: 5,
            rate: 50
        },
        {
            itemID: "ITEMID_MIAREGARETTO",
            num: 5,
            rate: 20
        },
        {
            itemID: "ITEMID_KEIKENTIAME_2",
            num: 3,
            rate: 10
        }
    ];

    @:abiSlot(15)
    public var slot15:Array<ZaRewardItem> =
    [
        {
            itemID: "ITEMID_HAIPAABOORU",
            num: 5,
            rate: 50
        },
        {
            itemID: "ITEMID_MOOMOOMIRUKU",
            num: 5,
            rate: 50
        },
        {
            itemID: "ITEMID_GENKINOKAKERA",
            num: 3,
            rate: 20
        },
        {
            itemID: "ITEMID_KEIKENTIAME_3",
            num: 3,
            rate: 5
        }
    ];

    @:abiSlot(16)
    public var slot16:Array<ZaRewardItem> =
    [
        {
            itemID: "ITEMID_MANTANNOKUSURI",
            num: 3,
            rate: 30
        },
        {
            itemID: "ITEMID_GENKINOKATAMARI",
            num: 3,
            rate: 20
        },
        {
            itemID: "ITEMID_MAKKUSUAPPU",
            num: 3,
            rate: 10
        },
        {
            itemID: "ITEMID_TAURIN",
            num: 3,
            rate: 10
        },
        {
            itemID: "ITEMID_BUROMUHEKISIN",
            num: 3,
            rate: 10
        },
        {
            itemID: "ITEMID_INDOMETASIN",
            num: 3,
            rate: 10
        },
        {
            itemID: "ITEMID_RIZOTIUMU",
            num: 3,
            rate: 10
        },
        {
            itemID: "ITEMID_KITOSAN",
            num: 3,
            rate: 10
        },
        {
            itemID: "ITEMID_HUSIGINAAME",
            num: 3,
            rate: 5
        }
    ];

    @:abiSlot(17)
    public var slot17:Array<ZaRewardMedals> =
    [
        {
            maxMedal: 110,
            minMedal: 90
        },
        {
            maxMedal: 160,
            minMedal: 140
        },
        {
            maxMedal: 210,
            minMedal: 190
        }
    ];

    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.slot8 = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        if ((untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72() == "0")) {
            this.slot9 = true;
        };
        this.slot10 = cppbindings.C56DE81E7.fD77F6D76();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Base("Player");
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation_Base(this.slot8);
        return null;
    }

    @:hashAbi("F3250254222F75035")
    public override function OnEnd():Dynamic
    {
        IkScriptCommand.FObj_Reset_Facial("Player");
        IkScriptCommand.FObj_Reset_Animation_Base("Player");
        IkScriptCommand.RemoveTagCommon(slot8, "ZA_can_receive_reward");
        return true;
    }

    public function FF1B24C573CD88891():Bool
    {
        return slot9;
    }

    public function FCA4AB983F3B7598B():Dynamic
    {
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", slot8);
        IkScriptCommand.Wait_FObj_Action(IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(slot8, "Player"));
        IkScriptCommand.FObj_LookAt_Obj("Player", slot8, "head");
        IkScriptCommand.FObj_LookAt_Obj(slot8, "Player", "head");
        return null;
    }

    public function FCAA81491EE1DCCA4(wait:Bool = false):Dynamic
    {
        IkScriptCommand.FObj_Set_Animation(slot8, 74);
        IkScriptCommand.Wait_Time(0.3);
        IkScriptCommand.FObj_Set_Animation("Player", 74);
        IkScriptCommand.Wait_Time(0.5);
        if (wait)
        {
            IkScriptCommand.Wait_FObj_Action();
        }
        return null;
    }

    public function F931F8A64586A46A6(?label:String):Dynamic
    {
        IkScriptCommand.ShowMessageWindow(0, label, "royale_event", slot8);
        IkScriptCommand.HideMessageWindow();
        return null;
    }

    public function F9C97BCCE62EFD700(item:ZaRewardItem):Dynamic
    {
        IkScriptCommand.AddItem(IkScriptCommand.S6F661D1718C5D7E9(item.itemID), item.num);
        IkScriptCommand.StartItemGetSequence(item.itemID, item.num);
        IkScriptCommand.Wait_FObj_Action();
        return null;
    }

    public function FEFE8984381B69CBF():ZaRewardItem
    {
        var items:Array<ZaRewardItem> = this.GetItemList();
        var totalRate:StdTypes.Int = 0;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < items.length)) {
                var item:ZaRewardItem = items[arrayIndex];
                ++arrayIndex;
                totalRate += item.rate;
            };
        };
        var random:cppbindings.C1A00019C = cppbindings.C1A00019C.f101D811F();
        {
            random.f8C8B6BB6();
        };
        var roll:StdTypes.Int = (random.fADAD9510() % totalRate);
        var cumulative:StdTypes.Int = 0;
        var index:StdTypes.Int = 0;
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < items.length)) {
                var item:ZaRewardItem = items[arrayIndex2];
                ++arrayIndex2;
                cumulative += item.rate;
                if ((roll < cumulative)) {
                    break;
                };
                index++;
            };
        };
        return items[(index % items.length)];
    }

    @:hashAbi("F8C0F73D948E79CB8")
    public function GetItemList():Array<ZaRewardItem>
    {
        if (slot10 > 26)
        {
            return slot16;
        }
        if (slot10 >= 21)
        {
            return slot15;
        }
        return slot14;
    }

    public function FB990C212EC51628E():String
    {
        var cards:Array<ZaRewardCard> = this.slot11;
        if (({
            var a:UInt = this.slot10;
            var aNeg:StdTypes.Bool = ((cast a) < 0);
            var bNeg:StdTypes.Bool = ((cast 26) < 0);
            if ((aNeg != bNeg)) {
                aNeg;
            } else {
                (cast a) > (cast 26);
            };
        })) {
            cards = this.slot13;
        } else {
            if (({
                var a:UInt = this.slot10;
                var aNeg:StdTypes.Bool = ((cast a) < 0);
                var bNeg:StdTypes.Bool = ((cast 21) < 0);
                if ((aNeg != bNeg)) {
                    aNeg;
                } else {
                    (cast a) >= (cast 21);
                };
            })) {
                cards = this.slot12;
            };
        };
        var totalRate:StdTypes.Int = 0;
        {
            var arrayIndex:StdTypes.Int = 0;
            while ((arrayIndex < cards.length)) {
                var card:ZaRewardCard = cards[arrayIndex];
                ++arrayIndex;
                totalRate += card.rate;
            };
        };
        var random:cppbindings.C1A00019C = cppbindings.C1A00019C.f101D811F();
        {
            random.f8C8B6BB6();
        };
        var roll:StdTypes.Int = (random.fADAD9510() % totalRate);
        var cardID:String = cards[0].cardID;
        var cumulative:StdTypes.Int = 0;
        {
            var arrayIndex2:StdTypes.Int = 0;
            while ((arrayIndex2 < cards.length)) {
                var card:ZaRewardCard = cards[arrayIndex2];
                ++arrayIndex2;
                cumulative += card.rate;
                if ((roll < cumulative)) {
                    cardID = card.cardID;
                    break;
                };
            };
        };
        return cardID;
    }

    public function F232EB3B08664C18B():Int
    {
        var range:ZaRewardMedals = this.slot17[0];
        if (({
            var a:UInt = this.slot10;
            var aNeg:StdTypes.Bool = ((cast a) < 0);
            var bNeg:StdTypes.Bool = ((cast 26) < 0);
            if ((aNeg != bNeg)) {
                aNeg;
            } else {
                (cast a) > (cast 26);
            };
        })) {
            range = this.slot17[2];
        } else {
            if (({
                var a:UInt = this.slot10;
                var aNeg:StdTypes.Bool = ((cast a) < 0);
                var bNeg:StdTypes.Bool = ((cast 21) < 0);
                if ((aNeg != bNeg)) {
                    aNeg;
                } else {
                    (cast a) >= (cast 21);
                };
            })) {
                range = this.slot17[1];
            };
        };
        var size:StdTypes.Int = ((range.maxMedal - range.minMedal) + 1);
        if ((size <= 0)) {
            return range.minMedal;
        };
        var random:cppbindings.C1A00019C = cppbindings.C1A00019C.f101D811F();
        {
            random.f8C8B6BB6();
        };
        return (range.minMedal + (random.fADAD9510() % size));
    }
}
