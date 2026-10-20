package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C8D7C555FD190F2F0")
@:expose("C8D7C555FD190F2F0")
class Ev_m05_2300 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_ju_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_3S");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.41, (-0.23), (-102.82), 160.35));
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([30.61, (-0.25), (-102.79)]), (-160.44), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([31.27, (-0.21), (-103.36)]), (-137.74), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_KUREHFI", lua.Table.create([30.01, 0.53, (-104.23)]), (-15.86), 707, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_cleffy", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([24.45, 3.52, (-86.5)]), lua.Table.create([(-10.94), 0.31, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([30.09, 3.52, (-86.54)]), lua.Table.create([(-10.94), 0.31, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.02, 1.7, (-99.87)]), lua.Table.create([(-10.95), 0.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_09", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_KUREHFI", 31.61);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_KUREHFI", 18));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.15, 0.82, (-103.5)]), lua.Table.create([0.0, (-40.01), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_KUREHFI", 171.51);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_KUREHFI", 25));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_KUREHFI", 37));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_10", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_KUREHFI", (-16.8)));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_KUREHFI");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_KUREHFI", 53);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2300_talk_11", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_KUREHFI");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.99, 1.32, (-100.03)]), lua.Table.create([(-5.42), (-0.35), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_12", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", (-44.74));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 115.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_13", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_14", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", 130.86);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_01", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.88, 1.42, (-102.48)]), lua.Table.create([13.47, (-21.54), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_02", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 30.33, (-0.24), (-98.34), 179.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.31, (-0.24), (-99.78), 137.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_KUREHFI", 28.94, 0.89, (-100.4), 121.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 30.19, (-0.25), (-101.89), (-172.11));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([32.2, 2.53, (-101.75)]), lua.Table.create([(-30.71), 49.29, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 30.19, (-0.25), (-102.95), 0.5));
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_ju_boss", false);
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 244);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 30.02, (-0.23), (-98.61), (-178.65));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 30.97, (-0.22), (-98.43), (-175.8));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_KUREHFI", 27.84, 0.95, (-100.27), 137.56);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.79, 0.04, (-103.54)]), lua.Table.create([16.3, 159.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.79, 0.44, (-103.54)]), lua.Table.create([16.3, 159.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_04");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_LOCK_03");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_03", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_04", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 29.74, (-0.25), (-102.93), 179.94);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.51, 0.0, (-100.08)]), lua.Table.create([18.44, (-3.25), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([30.23, 0.26, (-100.8)]), lua.Table.create([18.44, 22.68, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_HEAT_UP");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_05", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 245);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_JUSTICE_PUNCH_IRON_DOOR_BREAK");
        main.event.ik.command.IkScriptCommand.Fade_Out("White");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 30.33, (-0.24), (-98.34), 179.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 29.93, (-0.24), (-101.39), 0.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.42, (-0.24), (-98.11), 176.38);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_KUREHFI", 28.25, 0.52, (-103.1), 139.56);
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.28, 0.82, (-104.24)]), lua.Table.create([0.0, 137.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([28.93, 0.82, (-103.85)]), lua.Table.create([0.0, 137.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("White");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("dyn_main_ju_boss", true);
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("dyn_KUREHFI", 9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_15", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 30.06, (-0.25), (-101.39), 0.82);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 30.61, (-0.24), (-98.38), (-175.3));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.56, (-0.23), (-98.11), 159.88);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.63, 1.75, (-99.69)]), lua.Table.create([(-11.26), (-12.88), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([29.24, 1.75, (-99.78)]), lua.Table.create([(-11.26), (-12.88), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_KUREHFI", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_06", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_3S");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.15, 1.96, (-95.48)]), lua.Table.create([(-16.14), 0.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_ju_boss", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_ju_boss", 29.97, (-0.23), (-132.28), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 30.35, (-0.25), (-98.49), (-179.39));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.37, (-0.23), (-98.47), 176.38);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([28.52, 1.49, (-99.98)]), lua.Table.create([(-17.88), (-139.47), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_07", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2300_talk_08", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 30.33, (-0.24), (-98.34), 179.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 29.42, (-0.24), (-98.11), 176.38);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.85, 0.8600000000000001, (-96.58)]), lua.Table.create([3.9, (-0.12), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_main_detective", 29.97, (-0.23), (-132.28), 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
    }
}
