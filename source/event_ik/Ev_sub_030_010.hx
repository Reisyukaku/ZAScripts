package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CDD76825C6A95516A")
@:expose("CDD76825C6A95516A")
class Ev_sub_030_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub030_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub030_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub030_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub030_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub030_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Base("Player", "npc_sub030_001", 2.4, 35.0, true, 2, 0.9, lua.Table.create([0, 1.3, 0]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub030_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_01", "sub_030", "npc_sub030_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_IN");
        var itemId = main.event.ik.command.IkScriptCommand.OpenItemSelectMenu();
        switch (itemId)
        {
            case 103:
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_14", "sub_030", "npc_sub030_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            case 711, 710:
                main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
                if (main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon() == false)
                {
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_15", "sub_030", "npc_sub030_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                }
                else
                {
                    var fossilItem:Dynamic = "";
                    switch (itemId)
                    {
                        case 711:
                            fossilItem = "ITEMID_HIRENOKASEKI";
                        case 710:
                            fossilItem = "ITEMID_AGONOKASEKI";
                    }
                    main.event.ik.command.IkScriptCommand.WordSet_Name_Item(2, fossilItem, 1);
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub030_001", 174);
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "rejoice_small_mc");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_03", "sub_030", "npc_sub030_001");
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "normal");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_04", "sub_030", "npc_sub030_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_RESTORE_FOSSILS");
                    var effectKey = "line01";
                    main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
                    this.Await(function():Dynamic
                    {
                        return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
                    });
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -0.89, 0.03, 0.82, -105.4);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub030_001", -2.78, 0.02, -0.09, 40.92);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub030_001", false);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_t1_i006_07", false);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.75, 1.41, -0.58]), lua.Table.create([-9.16, 109.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    if (itemId == 710)
                    {
                        this.m_resultParam = 1;
                        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(3, cast(696, Int));
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("TIGORASU", lua.Table.create([-3.31, 0.02, 1.5]), 177.26, 696, 0, 0);
                        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "TIGORASU", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub030_001", "TIGORASU", "head");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-2.37, 0.08, 0.47]), lua.Table.create([4.08, 139.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-2.37, 0.5, 0.47]), lua.Table.create([4.08, 139.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-2.12, 1.0, 0.68]), lua.Table.create([-22.5, 139.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-2.47, 1.0, 0.39]), lua.Table.create([-22.5, 139.35, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.42, 0.97, -0.69]), lua.Table.create([-12.9, 139.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.35, lua.Table.create([-2.09, 0.73, 0.08]), lua.Table.create([-12.9, 139.33, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_05", "sub_030", "npc_sub030_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("TIGORASU", 17);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_07", "sub_030");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    }
                    else
                    {
                        this.m_resultParam = 2;
                        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(3, cast(698, Int));
                        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("AMARUSU", lua.Table.create([-3.31, 0.02, 1.5]), 177.26, 698, 0, 0);
                        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "AMARUSU", "head");
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub030_001", "AMARUSU", "head");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-2.39, 0.06, 0.43]), lua.Table.create([14.76, 137.22, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-2.39, 0.66, 0.43]), lua.Table.create([14.76, 137.22, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
                        main.event.ik.command.IkScriptCommand.Wait_Fade();
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-2.28, 1.25, 0.56]), lua.Table.create([-21.03, 139.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-2.57, 1.25, 0.31]), lua.Table.create([-21.03, 139.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.92, 0.92, -1.34]), lua.Table.create([-4.46, 139.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.35, lua.Table.create([-1.72, 0.82, -0.39]), lua.Table.create([-4.46, 139.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_06", "sub_030", "npc_sub030_001");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("AMARUSU", 17);
                        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_08", "sub_030");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    }
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    cppbindings.C56DE81E7.f7D34D235();
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub030_001", "Player", "head");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub030_001", true);
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.37, 1.43, -0.31]), lua.Table.create([-8.9, 114.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    if (itemId == 710)
                    {
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("TIGORASU", "Player", "head");
                    }
                    else
                    {
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("AMARUSU", "Player", "head");
                    }
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                    main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub030_001", "head");
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub030_001", 18);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_10", "sub_030", "npc_sub030_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
                    main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                    if (itemId == 710)
                    {
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "TIGORASU", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("TIGORASU", 20);
                    }
                    else
                    {
                        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "AMARUSU", "head");
                        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("AMARUSU", 20);
                    }
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
                    main.event.ik.command.IkScriptCommand.WordSet_Name_Player(0);
                    switch (itemId)
                    {
                        case 711:
                            main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(3, 698);
                        case 710:
                            main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(3, 696);
                    }
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fossil_10", "sub_030");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub030_001", 32, null, 3.85);
                    main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "rejoice_small_mc");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_12", "sub_030", "npc_sub030_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0030");
                    ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_t1_i006_07", true);
                }
            default:
                ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_MENU_OUT");
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub030_001", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_030_010_talk_02", "sub_030", "npc_sub030_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
    }
}
