package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C9BEA79BE99D02E61")
@:expose("C9BEA79BE99D02E61")
class Ev_sys_nakayoshi extends BaseEvent
{
    @:abiSlot(8)
    public var kMstxt:Dynamic;

    public function new()
    {
        this.kMstxt = "affection";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_A03_z02_02_0006"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_A03_z02_02_0006");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_A03_z02_02_0006", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_A03_z02_02_0006", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_affection_talk_01", this.kMstxt, "npc_A03_z02_02_0006");
        var choices = (["msg_affection_select_01", "msg_affection_select_02"]);
        var selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, 0, true, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_affection_talk_02", this.kMstxt, "npc_A03_z02_02_0006");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
            var selectedPokemon:Dynamic = main.event.ik.command.IkScriptCommand.SE032892C80F69D68(0);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
            if (((null != selectedPokemon)))
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_TRADE");
                main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(1, (cast(selectedPokemon.f0DE6FCA9(), Int)));
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_affection_talk_03", this.kMstxt, "npc_A03_z02_02_0006");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_ANNOUNCEMENT_RESULTS1");
                main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
                var friendshipText = GetFriendShipLevelText(selectedPokemon);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, friendshipText, kMstxt, "npc_A03_z02_02_0006");
            };
        };
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_affection_talk_12", this.kMstxt, "npc_A03_z02_02_0006");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }

    @:hashAbi("F93514754EFFC39FA")
    public function GetFriendShipLevelText(?param:Dynamic):Dynamic
    {
        var friendship:Dynamic = untyped param.fB78BF6CE();
        if (0 == friendship) return "msg_affection_talk_11";
        if (255 == friendship) return "msg_affection_talk_04";
        if (untyped friendship >= 220 && friendship <= 254)
        {
            main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(1, (cast(param.f0DE6FCA9(), Int)));
            return "msg_affection_talk_05";
        }
        if (untyped friendship >= 180 && friendship <= 219)
        {
            main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(1, (cast(param.f0DE6FCA9(), Int)));
            return "msg_affection_talk_06";
        }
        if (untyped friendship >= 130 && friendship <= 179) return "msg_affection_talk_07";
        if (untyped friendship >= 80 && friendship <= 129) return "msg_affection_talk_08";
        if (untyped friendship >= 30 && friendship <= 79) return "msg_affection_talk_09";
        if (untyped friendship >= 1 && friendship <= 29) return "msg_affection_talk_10";
        return "";
    }
}
