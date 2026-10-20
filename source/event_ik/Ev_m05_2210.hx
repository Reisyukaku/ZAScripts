package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C968F0A5FD6D23D32")
@:expose("C968F0A5FD6D23D32")
class Ev_m05_2210 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_cleffy"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_cleffy", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 203);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_KUREHFI", lua.Table.create([-13.68, 3.69, -90.04]), 65.61, 707, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([-5.98, 3.01, -89.92]), -87.48, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([-5.76, 3.01, -91.2]), -60.07, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -11.8, 3.02, -89.3, -110.6);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_KUREHFI", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-10.81, 4.37, -89.44]), lua.Table.create([-11.65, 100.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([-10.88, 4.37, -89.82]), lua.Table.create([-11.65, 100.25, 0.0]), 40.0, 0, (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int))));
        var canAddPokemon = main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (((false == canAddPokemon)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2210_talk_04", "main_05_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2210_talk_05", "main_05_01", "dyn_main_detective");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -11.9, 3.02, -89.28, -110.6);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-11.33, 4.3, -89.04]), lua.Table.create([-9.22, 67.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraEase = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(21, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-12.64, 4.11, -89.59]), lua.Table.create([-9.22, 67.36, 0.0]), 40.0, 0, cameraEase);
            var pokemonAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_KUREHFI", 37);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2210_talk_01", "main_05_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pokemonAnimation);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
    }
}
