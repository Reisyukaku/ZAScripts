package event_ik;

import main.event.ik.command.IkScriptCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("C6E4A78221F8697EA")
@:expose("C6E4A78221F8697EA")
class Ev_sys_omamori extends main.event.ik.base.BaseSystemEvent
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
        untyped (this)[14] = "npc_nejitrade_01";
        untyped (this)[13] = "flag_get_big_kanary_doll";
        untyped (this)[12] = "t1_i011";
        untyped (this)[11] = 23;
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_nejitrade_01"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        FBA1C1BF976296FD5(slot14);
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt(slot14, "Player");
        IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", slot14);
        IkScriptCommand.FObj_LookAt_Obj(slot14, "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", slot14, "head");
        if (lua.abi.Host.truthy(IkScriptCommand.GetFlagValue(slot13)))
        {
            IkScriptCommand.ShowMessage(0, "msg_t1_i011_talk_11", slot12, slot14);
            IkScriptCommand.HideMessageWindow();
        }
        else if (lua.abi.Host.truthy(IsAllComplete()))
        {
            BigKanaryDollSequence();
        }
        else
        {
            BuySequence();
        }
    }
    @:hashAbi("FF038AF5250244F3B")
    public function IsAllComplete():Dynamic
    {
        var complete = true;
        var items = [
        "ITEMID_AKANOKANARYINUI",
        "ITEMID_KINNOKANARYINUI",
        "ITEMID_PINKUNOKANARYINUI",
        "ITEMID_MIDORINOKANARYINUI",
        "ITEMID_AONOKANARYINUI"
        ];
        for (item in items)
        {
            for (level in 1...4)
            {
                if (main.event.ik.command.IkScriptCommand.GetSelectItemCount(item + Std.string(level)) == 0)
                {
                    complete = false;
                    break;
                }
            }
        }
        return complete;
    }
    @:hashAbi("FD9D35960C3DA7CAA")
    public function BuySequence():Dynamic
    {
        IkScriptCommand.ShowMessage(0, "msg_t1_i011_talk_01", slot12, slot14);
        var choices = ["msg_t1_i011_select_01", "msg_t1_i011_select_02"];
        var selection:Dynamic = IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        if (selection == 0)
        {
            IkScriptCommand.HideMessageWindow();
            var first:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
            var second:Dynamic = untyped m_eventScriptParam.fBF448F72();
            var third:Dynamic = untyped m_eventScriptParam.fB581866B();
            var fourth:Dynamic = untyped m_eventScriptParam.f792B86F5();
            IkScriptCommand.OpenAnyShopWithSE(15, "screwshop_01", first, second, third, fourth);
            IkScriptCommand.Wait_Time(0.4);
            var lastItem:String = cppbindings.C56DE81E7.f1DEEF468();
            var label = "msg_t1_i011_talk_07";
            if (lastItem.indexOf("AKANOKANARYINUI") != -1)
            {
                label = "msg_t1_i011_talk_02";
            }
            else if (lastItem.indexOf("KINNOKANARYINUI") != -1)
            {
                label = "msg_t1_i011_talk_03";
            }
            else if (lastItem.indexOf("PINKUNOKANARYINUI") != -1)
            {
                label = "msg_t1_i011_talk_04";
            }
            else if (lastItem.indexOf("MIDORINOKANARYINUI") != -1)
            {
                label = "msg_t1_i011_talk_05";
            }
            else if (lastItem.indexOf("AONOKANARYINUI") != -1)
            {
                label = "msg_t1_i011_talk_06";
            }
            IkScriptCommand.ShowMessage(0, label, slot12, slot14);
            if (lua.abi.Host.truthy(IsAllComplete()))
            {
                IkScriptCommand.ShowMessage(0, "msg_t1_i011_talk_08", slot12, slot14);
            }
            IkScriptCommand.HideMessageWindow();
        }
        else
        {
            IkScriptCommand.ShowMessage(0, "msg_t1_i011_talk_12", slot12, slot14);
            IkScriptCommand.HideMessageWindow();
        }
        return null;
    }
    @:hashAbi("FAB3089A71A5DE7A9")
    public function BigKanaryDollSequence():Dynamic
    {
        var count:Float = IkScriptCommand.GetSelectItemCount("ITEMID_OMAMORISOZAI");
        var required:Float = slot11;
        var negativeRequired = required < 0;
        var insufficient = negativeRequired != (count < 0) ? negativeRequired : required > count;
        if (insufficient)
        {
            var currentRequired:Float = slot11;
            IkScriptCommand.WordSet_Number(4, currentRequired - count);
            IkScriptCommand.ShowMessage(0, "msg_t1_i011_talk_09", slot12, slot14);
            IkScriptCommand.HideMessageWindow();
        }
        else
        {
            IkScriptCommand.ShowMessage(0, "msg_t1_i011_talk_10", slot12, slot14);
            IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_ITEM_GET_KEY");
            IkScriptCommand.ShowMessage(2, "msg_t1_i011_talk_13", slot12);
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.ShowMessage(0, "msg_t1_i011_talk_11", slot12, slot14);
            IkScriptCommand.HideMessageWindow();
            IkScriptCommand.ModifyItemNum("ITEMID_OMAMORISOZAI", -count);
            IkScriptCommand.SetFlagValue(slot13, true);
        }
        return null;
    }
}
