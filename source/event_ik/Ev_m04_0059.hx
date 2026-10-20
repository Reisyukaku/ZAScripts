package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C50587E277866C1BC")
@:expose("C50587E277866C1BC")
class Ev_m04_0059 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var pokemonFound:Dynamic = cppbindings.C56DE81E7.f4C7B9250("npc_pokemon_dedenne1");
        if (lua.abi.Host.truthy(pokemonFound)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_dedenne1", false);
        };
        pokemonFound = cppbindings.C56DE81E7.f4C7B9250("npc_pokemon_dedenne2");
        if (lua.abi.Host.truthy(pokemonFound)) {
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_dedenne2", false);
        };
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-270.47, 0.35, -225.93]), 42.89, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -269.91, 0.36, -225.13, -164.85);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DEDENNE_01", lua.Table.create([-267.34, 0.31, -228.67]), -54.28, 702, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DEDENNE_02", lua.Table.create([-266.83, 0.31, -227.95]), -54.28, 702, 0, 0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-270.46, 2.17, -223.27]), lua.Table.create([-21.91, -21.9, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "sad");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DEDENNE_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DEDENNE_02", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET_WITHOUT_PM");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M04_0059_0702_00_ANGER");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DEDENNE_01", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DEDENNE_02", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0059_talk_01", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0059_talk_02", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
