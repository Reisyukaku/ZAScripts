package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C96226CAFF7611D15")
@:expose("C96226CAFF7611D15")
class Ev_m03_1520 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_hotel_manager"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        cppbindings.C5090F7B8.f92941AC0("flag_replace_croissantcurry", true);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_pulesand01", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_M6DB_T0");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_OFF");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_f", lua.Table.create([8.61, 0.3, (-5.86)]), 90.0, "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([10.84, 0.3, (-5.89)]), (-90.0), "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_friend_m", lua.Table.create([11.2, 0.3, (-7.58)]), (-90.0), "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HURAETTE", lua.Table.create([9.97, 1.36, (-7.63)]), 6.5, 670, 5, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("dyn_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_rival_m", 71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_m", 71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("dyn_main_friend_f", 70);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 8.74, 0.31, (-7.57), 93.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", 10.84, 0.3, (-5.89), (-90.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_f", 8.61, 0.3, (-5.86), 90.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", 11.2, 0.3, (-7.58), (-90.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.67, 1.62, (-9.15)]), lua.Table.create([(-14.45), (-143.34), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([8.26, 1.62, (-8.85)]), lua.Table.create([(-14.45), (-143.34), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_06");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_01");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HURAETTE", 20);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.86, 1.18, (-6.37)]), lua.Table.create([5.08, (-117.83), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "rejoice_small");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_friend_f", lua.Table.create([9.44, 1.05, (-5.86)]));
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m03_1520_talk_01", "main_03_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.66, 1.11, (-6.05)]), lua.Table.create([19.06, 117.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([9.66, 1.01, (-6.05)]), lua.Table.create([19.06, 117.18, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_rival_m", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1520_talk_06", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HURAETTE", 10.09, 1.26, (-7.66), (-18.84));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([11.06, 1.44, (-8.25)]), lua.Table.create([(-8.0), 150.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1520_talk_07", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_f", "dyn_main_friend_m", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1520_talk_08", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([10.4, 1.32, (-6.97)]), lua.Table.create([(-0.46), (-42.62), (-0.01)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "serious");
        var animationHandle1:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_friend_m", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1520_talk_09", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.42, 1.54, (-5.41)]), lua.Table.create([(-24.46), (-54.02), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_friend_f", lua.Table.create([9.44, 1.05, (-5.86)]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([8.54, 1.54, (-5.25)]), lua.Table.create([(-24.46), (-54.02), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_m", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("HURAETTE", 9.77, 1.43, (-7.74), (-24.5));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.36, 1.19, (-6.16)]), lua.Table.create([16.5, 120.89, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([9.51, 1.11, (-6.26)]), lua.Table.create([16.5, 120.89, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1520_talk_02", "main_03_01", "dyn_main_friend_f");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_friend_f", "smile");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 8.75, 0.31, (-7.57), 98.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_friend_m", 11.23, 0.31, (-7.58), (-94.5));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.87, 1.9, (-4.66)]), lua.Table.create([(-19.06), (-46.07), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_friend_m", "dyn_main_friend_f", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1520_talk_03", "main_03_01", "dyn_main_friend_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.45, 1.59, (-7.05)]), lua.Table.create([0.26, (-25.6), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var animationHandle2:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HURAETTE", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_1520_talk_05", "main_03_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PM_FLOAT_ON");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
        cppbindings.C5090F7B8.f92941AC0("flag_replace_croissantcurry", false);
        cppbindings.C5090F7B8.f92941AC0("flag_replace_pulesand01", false);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
    }
}
