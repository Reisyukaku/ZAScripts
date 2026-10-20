package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C1BC6EE24C3E53681")
@:expose("C1BC6EE24C3E53681")
class Ev_sub_088_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_pa_boss", "npc_main_pa_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var effectKey:Dynamic = null;
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_pa_leader", lua.Table.create([14.95, 0.02, -10.76]), 170.5, "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_pa_boss", lua.Table.create([15.76, 0.02, -12.05]), -178.0, "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 15.58, 0.03, -19.94, 0.01);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_pa_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_pa_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.99, 5.18, -25.36]), lua.Table.create([-17.61, -145.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([8.86, 4.69, -24.07]), lua.Table.create([-17.61, -145.93, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("t1_i012_2_mob_05", false);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 15.59, 0.03, -14.79, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.93, 1.81, -13.34]), lua.Table.create([-17.61, -145.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([15.07, 1.73, -13.12]), lua.Table.create([-17.61, -145.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_01", "sub_088", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_02", "sub_088", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.85, 1.17, -16.28]), lua.Table.create([-2.29, -158.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([14.55, 1.17, -16.16]), lua.Table.create([-2.29, -158.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_03", "sub_088", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S_LOW");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_pa_boss", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.15);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.55, 1.17, -16.16]), lua.Table.create([-2.29, -158.17, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([15.43, 1.44, -12.97]), lua.Table.create([-2.29, -158.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_06_LOW");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_088_010_talk_04", "sub_088", "dyn_main_pa_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.58, 1.54, -15.99]), lua.Table.create([-11.63, -156.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([14.44, 1.57, -16.3]), lua.Table.create([-11.63, -156.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_05", "sub_088", "dyn_main_pa_boss");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_088_010_select_01", "msg_Ev_sub_088_010_select_02", "msg_Ev_sub_088_010_select_03", "msg_Ev_sub_088_010_select_04"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.37, 1.44, -12.93]), lua.Table.create([-2.78, -153.62, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if ((0 == (selection))) {
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "sad");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_06", "sub_088", "dyn_main_pa_boss");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        } else {
            if ((1 == (selection))) {
                main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "sad");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_088_010_talk_07", "sub_088", "dyn_main_pa_boss");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            } else {
                if ((2 == (selection))) {
                    var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_pa_boss", 20);
                    main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_088_010_talk_08", "sub_088", "dyn_main_pa_boss");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
                } else {
                    if ((3 == (selection))) {
                        main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_pa_boss", "anger");
                        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_088_010_talk_09", "sub_088", "dyn_main_pa_boss");
                        main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    };
                };
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_pa_boss");
        cppbindings.C5090F7B8.f86540D39("SYS_WORK_sub088_COUNT", 1);
        main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
    }
}
