package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CE3F602B66BB29990")
@:expose("CE3F602B66BB29990")
class Ev_m03_0520 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_hotel_manager", "npc_pokemon_floette"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_OFF");
        var npcMainRivalMId:Dynamic = untyped lua.abi.Host.concat(Std.string("tmp"), Std.string("npc_main_rival_m"));
        var npcMainFriendFId:Dynamic = untyped lua.abi.Host.concat(Std.string("tmp"), Std.string("npc_main_friend_f"));
        var npcMainFriendMId:Dynamic = untyped lua.abi.Host.concat(Std.string("tmp"), Std.string("npc_main_friend_m"));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcMainRivalMId, lua.Table.create([10.77, 0.3, 0.99]), (-42.78), "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcMainFriendFId, lua.Table.create([8.85, 0.28, 7.86]), (-168.01), "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(npcMainFriendMId, lua.Table.create([0.95, (-0.0), 8.47]), (-169.97), "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_floette", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("ZIGARUDE", lua.Table.create([4.58, 0.3, 19.81]), (-112.64), "npc_zigarude_cell");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURAETTE", lua.Table.create([(-3.07), 2.34, (-6.42)]), 77.19, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("ZIGARUDE", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(npcMainFriendFId, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(npcMainFriendFId, 70);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(npcMainFriendFId, 32));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcMainFriendFId, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendFId, "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 9.35, 0.33, 5.12, (-28.135));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(npcMainFriendFId, 8.85, 0.28, 7.86, (-168.01));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_hotel_manager", (-2.88), 0.0, (-7.27), 61.59);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("ZIGARUDE", 4.58, 0.3, (-1.24), 19.81);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.45, 1.75, 5.07]), lua.Table.create([(-12.36), (-111.04), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_01");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(npcMainFriendFId);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmpnpc_main_rival_m", 9.82, 0.34, 1.95, (-21.47));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.48, 1.91, 3.53]), lua.Table.create([(-13.04), (-120.65), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var tmpnpcMainRivalMMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("tmpnpc_main_rival_m", 8.32, 0.3, 4.08, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainRivalMId, "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcMainRivalMId, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendFId, npcMainRivalMId, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_01", "main_03_01", npcMainRivalMId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(tmpnpcMainRivalMMovement);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcMainRivalMId, lua.Table.create([11.91, 1.81, 7.52]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(npcMainRivalMId, lua.Table.create([2.29, 1.81, 5.99]));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainRivalMId, npcMainFriendFId, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_02", "main_03_01", npcMainRivalMId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M03_0520_HOTEL_Z_CL");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcMainFriendMId, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainRivalMId, npcMainFriendMId, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendFId, npcMainFriendMId, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(npcMainFriendMId, 0.78, (-0.0), 8.32, 143.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([0.67, 1.38, 7.21]), lua.Table.create([(-6.0), (-82.42), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(npcMainFriendMId, 1.91, (-0.0), 7.36, 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_03", "main_03_01", npcMainFriendMId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(npcMainFriendMId, 4.52, 0.3, 5.84, 102.33);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmpnpc_main_rival_m", 8.1, 0.3, 4.09, (-67.15));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.93, 1.79, 3.75]), lua.Table.create([(-10.05), (-116.95), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(npcMainFriendMId, 5.48, 0.3, 5.56, 0.5));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendMId, npcMainFriendFId, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_04", "main_03_01", npcMainFriendFId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var pendingAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMainRivalMId, 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendMId, npcMainRivalMId, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_07", "main_03_01", npcMainRivalMId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(pendingAction);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_08", "main_03_01", npcMainFriendMId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.09, 1.57, 4.01]), lua.Table.create([2.26, (-95.14), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_12", "main_03_01", npcMainRivalMId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([3.93, 1.79, 3.75]), lua.Table.create([(-10.05), (-116.95), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main_hotel_manager", "rejoice_small");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendFId, npcMainRivalMId, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainRivalMId, npcMainFriendFId, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_09", "main_03_01", npcMainFriendFId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainRivalMId, npcMainFriendMId, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(npcMainRivalMId, "rejoice_small");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_10", "main_03_01", npcMainRivalMId);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-1.34), 2.04, (-7.01)]), lua.Table.create([9.37, 92.19, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", npcMainFriendFId, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainRivalMId, npcMainFriendFId, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendMId, npcMainFriendFId, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMainFriendFId, 32);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMainRivalMId, 1);
        var huraetteAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HURAETTE", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0520_talk_06", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(huraetteAnimation);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(npcMainFriendMId, 6.82, 0.3, 4.68, 122.03);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(npcMainRivalMId, 7.7, 0.3, 4.06, (-88.65));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([4.25, 0.35, (-1.37)]), lua.Table.create([6.77, (-152.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([4.35, 0.35, (-1.43)]), lua.Table.create([6.77, (-152.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMainFriendMId, 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainRivalMId, npcMainFriendMId, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(npcMainRivalMId, 32);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(npcMainFriendMId, npcMainRivalMId, "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_4S");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_ON");
    }
}
