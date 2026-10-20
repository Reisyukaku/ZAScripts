package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2149873AA0A61D86")
@:expose("C2149873AA0A61D86")
class Ev_sub_071_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub071_001", "npc_pokemon_sub071_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var pokemonName:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_pokemon_sub071_1"));
        var childName:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_sub071_001"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(childName, lua.Table.create([-467.31, 0.23, -397.64]), -75.87, "npc_child_a_m_02");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(pokemonName, lua.Table.create([-467.63, 0.23, -397.14]), -86.1, 25, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -468.59, 0.23, -397.66, 102.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(pokemonName, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(childName, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", childName, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(childName, "surprise");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-470.48, 3.11, -396.41]), lua.Table.create([-21.21, -65.77, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-470.48, 2.01, -396.41]), lua.Table.create([-21.21, -65.77, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(childName, 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_071_020_talk_01", "sub_071");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(childName, "rejoice_small");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(childName, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_020_talk_02", "sub_071", childName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(childName, 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0071");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(childName, "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(childName, 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_020_talk_03", "sub_071", childName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-468.95, 0.32, -396.83]), lua.Table.create([13.4, -68.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(childName, "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(childName, pokemonName, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(childName, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_020_talk_04", "sub_071", childName);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_071_020_talk_05", "sub_071", childName);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(pokemonName, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_071_020_talk_06", "sub_071");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
