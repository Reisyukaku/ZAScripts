package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C24FCF66A856A6234")
@:expose("C24FCF66A856A6234")
class Ev_sub_094_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub094_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-547.42, 0.28, -802.15]));
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_094_010_sys_01", "sub_094");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -545.73, 0.28, -802.18, 148.28);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        var npcMiddleAF02Id:Dynamic = untyped lua.abi.Host.concat(Std.string("dyn_"), Std.string("npc_middle_a_f_02"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcMiddleAF02Id, lua.Table.create([-544.08, 0.28, -804.87]), -25.88, "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KUREHFI", lua.Table.create([-544.24, 1.29, -806.65]), -30.9, 707, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KUREHFI", -543.59, 1.29, -803.66, -40.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("KUREHFI", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMiddleAF02Id, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-545.93, 1.74, -800.76]), lua.Table.create([-4.38, -4.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-545.44, 1.74, -800.72]), lua.Table.create([-4.38, -4.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(npcMiddleAF02Id, -545.12, 0.28, -803.16, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("KUREHFI", -544.46, 1.29, -802.56, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcMiddleAF02Id, "head");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_01", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcMiddleAF02Id, lua.Table.create([-545.73, 0.5, -802.18]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 74);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 21);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMiddleAF02Id, "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_02", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KUREHFI", 53);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_04", "sub_094");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMiddleAF02Id, "KUREHFI", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "KUREHFI", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("KUREHFI", -544.43, 1.29, -802.54, -77.46);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(npcMiddleAF02Id, 80.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcMiddleAF02Id, lua.Table.create([-544.43, 1.45, -802.54]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-545.81, 1.68, -801.44]), lua.Table.create([-1.83, -34.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("KUREHFI", npcMiddleAF02Id, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 19);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "serious", "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_05", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("KUREHFI");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_07", "sub_094");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.45, 1.71, -802.33]), lua.Table.create([8.46, 36.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KUREHFI", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_08", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(npcMiddleAF02Id, 32, null, 3.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "rejoice_small_mc", "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_09", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var pendingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "normal", "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_10", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KUREHFI", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-545.81, 1.68, -801.44]), lua.Table.create([-1.83, -34.12, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KUREHFI", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_14", "sub_094");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 20);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "rejoice_big_mc", "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_11", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KUREHFI", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "normal", "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(npcMiddleAF02Id, "Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMiddleAF02Id, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-545.44, 1.74, -800.72]), lua.Table.create([-4.38, -4.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819(npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMiddleAF02Id, 174);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcMiddleAF02Id, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_12", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0094");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(npcMiddleAF02Id, 29, null, 1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "rejoice_small_mc", "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_094_010_talk_13", "sub_094", npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMiddleAF02Id, "normal", "npc_pa_member_f_01");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("KUREHFI");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("KUREHFI", -541.58, 1.29, -809.89, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(npcMiddleAF02Id);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(npcMiddleAF02Id, -541.85, 0.69, -810.85, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
