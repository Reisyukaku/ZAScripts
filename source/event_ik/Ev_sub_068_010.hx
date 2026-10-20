package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB9C37A35AC0C06FF")
@:expose("CB9C37A35AC0C06FF")
class Ev_sub_068_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub068_001", "npc_sub068_002", "npc_pokemon_sub068_1", "npc_pokemon_sub068_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub068_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub068_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub068_001");
        var getSelectPokemonCount_PartyResult:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party((cast(247, Int)));
        var getPokemonCount_PartyResult:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        var cannotUseParty:Bool = (0 == getSelectPokemonCount_PartyResult) || (untyped getPokemonCount_PartyResult < 0) || (untyped getPokemonCount_PartyResult > 1);
        if (lua.abi.Host.truthy(cannotUseParty))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_sub_068_002_talk_01" : Dynamic), ("sub_068" : Dynamic), ("npc_sub068_001" : Dynamic));
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub068_001");
            var animationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_001", 32, null, 3.75);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_010_talk_01", "sub_068", "npc_sub068_001");
            var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_068_010_select_01", "msg_Ev_sub_068_010_select_02"]), (0 : Dynamic), (true : Dynamic), (false : Dynamic)));
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var wait_FObj_Action_OneShot:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot;
            wait_FObj_Action_OneShot(animationAction);
            if (0 == menuSelection)
            {
                var animationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_001", 20);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, ("msg_Ev_sub_068_010_talk_03" : Dynamic), ("sub_068" : Dynamic), ("npc_sub068_001" : Dynamic));
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationAction2);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
                fadeOutType((7 : Dynamic));
            }
            else
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_001", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_sub_068_010_talk_02" : Dynamic), ("sub_068" : Dynamic), ("npc_sub068_001" : Dynamic));
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            };
            untyped this.m_resultParam = menuSelection;
        };
    }
}
