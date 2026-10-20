package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C99FFCD13FE2738A8")
@:expose("C99FFCD13FE2738A8")
class Ev_sub_072_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub072_001", "npc_pokemon_sub072_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub072_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub072_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub072_1", "Player", "head");
        var getSelectPokemonCount_PartyResult:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party((cast(26, Int)));
        var getPokemonCount_PartyResult:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        var cannotUseParty:Bool = (0 == getSelectPokemonCount_PartyResult) || (untyped getPokemonCount_PartyResult < 0) || (untyped getPokemonCount_PartyResult > 1);
        var menuSelectionAfterBranch2:Dynamic = null;
        if (lua.abi.Host.truthy(cannotUseParty))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_sub_072_010_talk_01" : Dynamic), ("sub_072" : Dynamic), ("npc_sub072_001" : Dynamic));
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
            menuSelectionAfterBranch2 = (1 : Dynamic);
        }
        else
        {
            var getUnitParamInPartyByDevNoResult:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(26);
            var f9E86AD53Result:Dynamic = getUnitParamInPartyByDevNoResult.f9E86AD53();
            var menuSelectionAfterBranch:Dynamic = null;
            if (1 == f9E86AD53Result)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage((0 : Dynamic), ("msg_Ev_sub_072_010_talk_02" : Dynamic), ("sub_072" : Dynamic), ("npc_sub072_001" : Dynamic));
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
                menuSelectionAfterBranch = (1 : Dynamic);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub072_001");
                main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub072_001", "Player");
                main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub072_001");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_010_talk_03", "sub_072", "npc_sub072_001");
                var menuLabels:Dynamic = (["msg_Ev_sub_072_010_select_01", "msg_Ev_sub_072_010_select_02"]);
                var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, (0 : Dynamic), (true : Dynamic), (false : Dynamic));
                if (0 == menuSelection)
                {
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 174);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, ("msg_Ev_sub_072_010_talk_05" : Dynamic), ("sub_072" : Dynamic), ("npc_sub072_001" : Dynamic));
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                    var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
                    fadeOutType((7 : Dynamic));
                }
                else
                {
                    untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub072_001", "sad");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub072_001", 175);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_072_010_talk_04", ("sub_072" : Dynamic), ("npc_sub072_001" : Dynamic));
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    var setFacialTemplate:Dynamic = untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate;
                    setFacialTemplate(("npc_sub072_001" : Dynamic), ("normal" : Dynamic));
                };
                menuSelectionAfterBranch = menuSelection;
            };
            menuSelectionAfterBranch2 = menuSelectionAfterBranch;
        };
        untyped this.m_resultParam = menuSelectionAfterBranch2;
    }
}
