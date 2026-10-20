package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7D1E4F3347E93371")
@:expose("C7D1E4F3347E93371")
class Ev_sub_075_010 extends BaseSubQuest
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
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_MUTE_T500");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -486.56, 0.15, -197.16, -24.1);
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_075_010_ito", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_npc_sub075_001", lua.Table.create([-486.33, 0.28, -194.18]), -141.45, "npc_sub075_001");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ITOMARU01", lua.Table.create([-487.87, 0.14, -192.31]), -173.77, 167, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ITOMARU02", lua.Table.create([-489.08, 0.14, -192.35]), 167.02, 167, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("ITOMARU03", lua.Table.create([-488.52, 0.14, -191.35]), 175.25, 167, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub075_001", "sad");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-488.7, 2.82, -195.76]), lua.Table.create([1.02, -124.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-488.7, 1.07, -195.76]), lua.Table.create([1.02, -124.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, StdTypes.Int))));
        var dynNpcSub075001Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub075_001", 22);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_02", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynNpcSub075001Animation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub075_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("dyn_npc_sub075_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_npc_sub075_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub075_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-489.97, 1.47, -198.86]), lua.Table.create([-5.64, -140.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -487.39, 0.15, -196.78, -46.31);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_sub075_001", -488.05, 0.14, -195.49, -164.16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.3);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub075_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_03", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_075_010_select_01", "msg_Ev_sub_075_010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub075_001", "ITOMARU01", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_sub075_001", "ITOMARU01"));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-489.41, 1.82, -195.34]), lua.Table.create([-23.74, -161.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-489.23, 1.27, -194.48]), lua.Table.create([-23.74, -161.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU01", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU02", 38);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU03", 38);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_05", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-488.79, 2.27, -196.65]), lua.Table.create([-30.81, -163.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_06", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_07", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU01", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU02", 38);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU03", 38);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_075_010_talk_08", "sub_075", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub075_001", "Player", "head");
        var dynNpcSub075001Turn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_sub075_001", "Player");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-489.97, 1.47, -198.86]), lua.Table.create([-5.64, -140.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynNpcSub075001Turn);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub075_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_09", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_10", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-489.41, 1.82, -195.34]), lua.Table.create([-23.74, -161.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_npc_sub075_001", "ITOMARU01", "head");
        var dynNpcSub075001Turn2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_npc_sub075_001", "ITOMARU01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-489.23, 1.27, -194.48]), lua.Table.create([-23.74, -161.29, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU01", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU02", 38);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU03", 38);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_075_010_talk_13", "sub_075", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-488.79, 2.27, -196.65]), lua.Table.create([-30.81, -163.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynNpcSub075001Turn2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub075_001", 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_075_010_talk_14", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub075_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_075_010_talk_15", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ITOMARU01", "ITOMARU03", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ITOMARU02", "ITOMARU01", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ITOMARU03", "ITOMARU01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ITOMARU01", "dyn_npc_sub075_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ITOMARU02", "dyn_npc_sub075_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("ITOMARU03", "dyn_npc_sub075_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        this.Await((function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-489.49, 1.21, -194.94]), lua.Table.create([-18.53, -155.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.25, lua.Table.create([-489.19, 0.73, -193.84]), lua.Table.create([-18.53, -155.12, 15.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_npc_sub075_001", -488.05, 0.14, -195.49, -61.57);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU01", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU02", 38);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("ITOMARU03", 38);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_npc_sub075_001", "surprise");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "smile_bitter");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_075_010_talk_16", "sub_075", "dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_npc_sub075_001", 1);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_npc_sub075_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-489.97, 1.47, -198.86]), lua.Table.create([-5.64, -140.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_npc_sub075_001", -492.73, 0.0, -199.0, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("ITOMARU01", -491.24, 0.01, -199.17, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("ITOMARU02", -495.48, 0.0, -197.71, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("ITOMARU03", -492.18, 0.0, -199.19, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0075");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_RESET_T500");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
    }
}
