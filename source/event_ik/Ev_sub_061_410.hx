package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CCA27D80A94005164")
@:expose("CCA27D80A94005164")
class Ev_sub_061_410 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub061_005"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub061_005");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub061_005", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub061_005");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_01", "sub_061", "npc_sub061_005");
        var result:Dynamic = 0;
        var matchingPokemonCount:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party((cast(676, Int)));
        var partyCount:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        var partyCountIsNegative:Bool = untyped partyCount < 0;
        // Preserve the reference's unsigned comparison, including fractional values.
        var hasOtherPokemon:Bool = (partyCountIsNegative != (untyped matchingPokemonCount < 0))
            ? partyCountIsNegative : (untyped partyCount > matchingPokemonCount);
        if (hasOtherPokemon)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_02", "sub_061", "npc_sub061_005");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            result = 1;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_03", "sub_061", "npc_sub061_005");
            result = main.event.ik.command.IkScriptCommand.ShowContextMenu(
                ["msg_Ev_sub_061_410_select_01", "msg_Ev_sub_061_410_select_02"], 0, true, false);
            if (0 == result)
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_05", "sub_061", "npc_sub061_005");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_410_talk_04", "sub_061", "npc_sub061_005");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
        }
        untyped this.m_resultParam = result;
    }
}
