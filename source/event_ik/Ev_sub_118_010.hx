package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1BA6C1A3A4E855BB")
@:expose("C1BA6C1A3A4E855BB")
class Ev_sub_118_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_researcher", "npc_pokemon_sub118_1", "npc_pokemon_sub118_2", "npc_pokemon_sub118_3"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var result = 0;
        var boxFull:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_118_010_boxfull");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 2.95, 0.06, 0.12, 78.26);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub118_1", "head");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_researcher", lua.Table.create([1.44, 0.06, 2.06]), 88.46, "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        // Exact false tests: a nil flag or party result takes the else branch.
        if (boxFull == false)
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.0, 2.11, -1.32]), lua.Table.create([-24.0, -132.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([2.5, 1.81, -0.86]), lua.Table.create([-24.0, -132.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub118_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub118_2", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub118_2", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub118_3", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.37, 1.43, -2.53]), lua.Table.create([-10.34, -151.48, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([2.07, 1.43, -2.35]), lua.Table.create([-10.34, -151.48, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_researcher", 2.68, 0.06, 1.64, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_researcher", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_researcher", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_researcher", "Player");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_01", "sub_118", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 14);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_02", "sub_118", "dyn_main_researcher");
            // Both answers lead to the same reply; the latest script discards the selection.
            main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_118_010_select_01", "msg_Ev_sub_118_010_select_02"], 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "anger_mc", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_03", "sub_118", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "serious", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "serious", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_04", "sub_118", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 174);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "smile", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_05", "sub_118", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "normal", "npc_main_researcher");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.07, 1.43, -2.35]), lua.Table.create([-10.34, -151.48, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)), null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 2.95, 0.06, 0.12, -0.84);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            // This move handle is awaited after the companions react.
            var researcherMove:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_researcher", 2.68, 0.06, 1.64, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_researcher", "head");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub118_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub118_2", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub118_2", "Player");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub118_3", "Player", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(researcherMove);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_researcher", "Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 174);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "smile", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_05", "sub_118", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        var canAddPokemon:Dynamic = main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon();
        if (canAddPokemon == false)
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_researcher", 175);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_06", "sub_118", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_researcher", 1.44, 0.06, 2.06, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
            // Result 1 reports that the party had no room for the Pokemon.
            result = 1;
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 2.05, 0.06, 0.99, 88.28);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub118_2", 4.48, 0.04, 1.42, 108.35);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_researcher", "npc_pokemon_sub118_1", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub118_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("dyn_main_researcher", 32, null, 4.68);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_researcher", "normal", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_08", "sub_118", "dyn_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_pokemon_sub118_1");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        this.m_resultParam = result;
    }
}
