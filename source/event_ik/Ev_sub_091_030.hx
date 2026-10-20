package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C3C9088A17169787D")
@:expose("C3C9088A17169787D")
class Ev_sub_091_030 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub091_001", "npc_pokemon_sub091_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub091_1", -324.49, 0.84, -627.91, -33.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub091_1", false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MOGURYUU", lua.Table.create([-325.15, 0.81, -629.02]), -15.07, 529, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -327.58, 0.89, -627.68, 118.16);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub091_001", -326.49, 0.89, -627.05, 148.32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("MOGURYUU", "npc_sub091_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "MOGURYUU", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub091_001", "MOGURYUU", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-328.63, 3.55, -629.82]), lua.Table.create([-35.29, -114.83, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.4, lua.Table.create([-328.84, 3.55, -629.36]), lua.Table.create([-35.29, -114.83, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub091_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_03", "sub_091", "npc_sub091_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("MOGURYUU", -324.27, 0.82, -629.06, -25.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-327.04, 2.2, -626.96]), lua.Table.create([-26.26, -70.14, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub091_001", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_04", "sub_091");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_DisableWallCollision("MOGURYUU", false);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("MOGURYUU", -324.63, 0.82, -627.9, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 31);
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub091_1", 726);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.85);
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_091_030_moko", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("MOGURYUU", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub091_001", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-327.8, 3.28, -628.02]), lua.Table.create([-40.95, -106.93, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("MOGURYUU", "npc_sub091_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MOGURYUU", "npc_sub091_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub091_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_05", "sub_091", "npc_sub091_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_07", "sub_091");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-325.83, 1.85, -628.02]), lua.Table.create([17.54, 152.06, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub091_001", 18);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub091_001", "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_08", "sub_091", "npc_sub091_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-327.7, 1.88, -630.1]), lua.Table.create([-6.15, -140.74, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub091_001", 28);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub091_001", "serious");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_09", "sub_091", "npc_sub091_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 25);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub091_001", 20);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub091_001", "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_10", "sub_091", "npc_sub091_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-326.64, 2.2, -628.16]), lua.Table.create([-29.1, -95.51, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MOGURYUU", 31);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_091_030_talk_14", "sub_091");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0091");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
