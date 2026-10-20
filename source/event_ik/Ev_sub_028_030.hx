package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C35032D2068CB86D9")
@:expose("C35032D2068CB86D9")
class Ev_sub_028_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -353.41, 19.81, -70.18, 94.11));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub028_001", lua.Table.create([-356.78, 19.81, -71.47]), 80.16, "npc_sub028_001");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_npc_pokemon_sub028_1", lua.Table.create([-351.2, 19.78, -70.4]), -96.58, 702, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_pokemon_sub028_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_pokemon_sub028_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-353.14, 20.7, -69.77]), lua.Table.create([-20.06, -72.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-352.63, 20.5, -69.94]), lua.Table.create([-20.06, -72.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_01", "sub_028");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub028_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub028_001", -353.49, 19.81, -71.08, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-349.62, 19.88, -71.11]), lua.Table.create([7.37, 103.92, 5.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_02", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub028_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_03", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub028_001", "dyn_npc_pokemon_sub028_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_pokemon_sub028_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_04", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 25);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_pokemon_sub028_1", "dyn_npc_sub028_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_pokemon_sub028_1", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-352.18, 20.54, -70.0]), lua.Table.create([-27.12, -67.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_05", "sub_028");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-355.27, 21.83, -68.81]), lua.Table.create([-19.54, -52.91, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub028_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_07", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub028_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_08", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_09", "sub_028");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-352.56, 21.13, -69.46]), lua.Table.create([-0.08, 39.93, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub028_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub028_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub028_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_10", "sub_028", "dyn_npc_sub028_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub028_001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub028_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_11", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-349.62, 19.88, -71.11]), lua.Table.create([7.37, 103.92, 5.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub028_001", "dyn_npc_pokemon_sub028_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_pokemon_sub028_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_pokemon_sub028_1", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_12", "sub_028");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub028_001", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub028_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_13", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-352.18, 20.54, -70.0]), lua.Table.create([-27.12, -67.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub028_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub028_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("dyn_npc_pokemon_sub028_1", 11);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_14", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-352.56, 21.13, -69.46]), lua.Table.create([-0.08, 39.93, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub028_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_028_030_talk_15", "sub_028", "dyn_npc_sub028_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0028");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
