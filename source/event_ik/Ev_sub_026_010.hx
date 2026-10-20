package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C01AB619F669FE555")
@:expose("C01AB619F669FE555")
class Ev_sub_026_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_026_010_talk_01", "sub_026");
        var menuLabels:Dynamic = (["msg_Ev_sub_026_010_select_01", "msg_Ev_sub_026_010_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection))) {
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_026_010_gomi", true);
            main.event.ik.command.IkScriptCommand.UpdateReplace();
            main.event.ik.command.IkScriptCommand.WaitReplace();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub026_3", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub026_4", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub026_2", false);
            var actorId:Dynamic = untyped __lua__("{0} .. {1}", (cast "dyn_"), (cast "npc_pokemon_sub026_3"));
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon(actorId, lua.Table.create([-280.25, 0.14, -347.12]), 26.02, 568, 0, 0);
            var actorId2:Dynamic = untyped __lua__("{0} .. {1}", (cast "dyn_"), (cast "npc_pokemon_sub026_4"));
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon(actorId2, lua.Table.create([-279.75, 0.02, -345.65]), -166.55, 568, 0, 0);
            var actorId3:Dynamic = untyped __lua__("{0} .. {1}", (cast "dyn_"), (cast "npc_pokemon_sub026_2"));
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon(actorId3, lua.Table.create([-280.52, 0.02, -346.18]), 111.48, 568, 0, 0);
            var actorId4:Dynamic = untyped __lua__("{0} .. {1}", (cast "dyn_"), (cast "npc_sub026_001"));
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(actorId4, lua.Table.create([-282.43, 0.02, -342.07]), 160.43, "npc_waitress_f_02");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -282.44, 0.03, -345.29, 110.89);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId4, actorId, "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-283.28, 2.38, -342.89]), lua.Table.create([-27.38, -32.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-282.93, 2.04, -343.44]), lua.Table.create([-27.38, -32.36, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId2, 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId3, 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_010_talk_02", "sub_026");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_026_010_talk_03", "sub_026");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-285.74, 0.95, -346.87]), lua.Table.create([-4.2, -109.72, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(actorId4, -281.89, 0.02, -343.83, 0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId4, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId2, 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_010_talk_04", "sub_026", actorId4);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId4, "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-283.29, 1.42, -345.66]), lua.Table.create([-3.17, -129.68, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId4, "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId4, 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_010_talk_05", "sub_026", actorId4);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId4, actorId, "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-282.08, 1.09, -344.55]), lua.Table.create([-17.63, -45.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-281.73, 0.84, -344.9]), lua.Table.create([-17.63, -45.1, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 17);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId2, 20);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId3, 16);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_010_talk_07", "sub_026", actorId4);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId4, "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-282.33, 1.48, -344.74]), lua.Table.create([0.0, -152.56, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId4, "normal");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId4, 2);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_010_talk_08", "sub_026", actorId4);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", actorId, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(actorId4, actorId, "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_010_talk_09", "sub_026", actorId4);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-283.85, 2.32, -342.88]), lua.Table.create([-22.98, -47.78, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-283.57, 2.16, -343.14]);
            var cameraVector2:Dynamic = lua.Table.create([-22.98, -47.78, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)));
            cameraMoveAngle(4.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(actorId4, "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId4, 1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_026_010_talk_10", "sub_026", actorId4);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId, 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId2, 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(actorId3, 20);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0026");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M_AURA_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -277.05, 0.02, -343.89, -132.59);
        };
        this.m_resultParam = selection;
    }
}
