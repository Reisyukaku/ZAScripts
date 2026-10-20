package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2146213AA0A33A5D")
@:expose("C2146213AA0A33A5D")
class Ev_sub_071_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub071_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var result:Dynamic = 0;
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub071_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub071_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub071_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub071_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub071_001");
        var pikachuCount:Dynamic = main.event.ik.command.IkScriptCommand.GetSelectPokemonCount_Party(cast(25, Int));
        var partyCount:Dynamic = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        if (pikachuCount == 0 || partyCount < 0 || partyCount > 1)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_010_talk_01", "sub_071", "npc_sub071_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            result = 1;
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_010_talk_02", "sub_071", "npc_sub071_001");
            result = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_071_010_select_01", "msg_Ev_sub_071_010_select_02"], 0, true, false);
            if (result == 0)
            {
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_sub071_001", 4);
                main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub071_001", "npc_pokemon_sub071_1", "head");
                main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_071_010_talk_04", "sub_071", "npc_sub071_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_pokemon_sub071_1", 6);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub071_1", 17);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_010_talk_03", "sub_071", "npc_sub071_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            }
        }
        m_resultParam = result;
    }
}
