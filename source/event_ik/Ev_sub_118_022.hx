package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1B9CB1A3A4DFE606")
@:expose("C1B9CB1A3A4DFE606")
class Ev_sub_118_022 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub118_3", 40);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.38, 0.54, -0.07]), lua.Table.create([-10.51, -83.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub118_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub118_2", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_11", "sub_118", "npc_main_researcher");
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, (cast(1, Int)));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_13", "sub_118", "npc_main_researcher");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_118_010_select_03", "msg_Ev_sub_118_010_select_04"]), 0, true, false);
        if (((0 == selection)))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub118_3", 20);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 3.01, 0.06, 1.42, -13.18);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub118_3", 3.27, 0.05, 2.64, -102.58);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub118_3", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([2.06, 1.76, -0.37]), lua.Table.create([-17.94, -157.01, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraPosition = lua.Table.create([1.74, 1.76, -0.23]);
            var cameraAngle = lua.Table.create([-17.94, -157.01, 0.0]);
            var cameraEase = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, cameraPosition, cameraAngle, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_researcher", 18);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_14", "sub_118", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub118_3", 17);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_researcher", "normal");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub118_3", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_researcher", "npc_pokemon_sub118_3", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0118");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_118_010_talk_08", "sub_118", "npc_main_researcher");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        untyped this.m_resultParam = selection;
    }
}
