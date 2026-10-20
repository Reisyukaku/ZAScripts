package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA41F501FBE2F5959")
@:expose("CA41F501FBE2F5959")
class Ev_sub_080_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub078_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var setupFinished = false;
        this.CreateSubCorutin("SetupMobNpc", function():Void
        {
            var mobNpcs = ["npc_sub078_002", "npc_sub078_003", "npc_R03_0014", "npc_R03_0015", "npc_R03_0018", "npc_pokemon_R03_18", "npc_A03_z02_04_0026", "npc_A03_z02_04_0027", "npc_A03_z02_04_0028", "npc_A03_z02_04_0029", "npc_R03_0016", "npc_R03_0017"];
            for (npc in mobNpcs)
            {
                main.event.ik.command.IkScriptCommand.SB70BF7116F3080EE(npc);
            }
            var abort = false;
            for (npc in mobNpcs)
            {
                // Give each NPC up to ten seconds to finish loading.
                var elapsed = 0.0;
                while (cppbindings.C56DE81E7.f4C7B9250(npc) && !cppbindings.C56DE81E7.fBA22EECD(npc))
                {
                    elapsed += this.Suspend();
                    if (elapsed >= 10)
                    {
                        break;
                    }
                }
                if (cppbindings.C56DE81E7.f4C7B9250(npc) && cppbindings.C56DE81E7.fBA22EECD(npc))
                {
                    main.event.ik.command.IkScriptCommand.SetAlwaysFrequency(npc);
                }
                if (abort)
                {
                    abort = false;
                    break;
                }
            }
            setupFinished = true;
        });
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub078_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub078_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub078_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_01", "sub_080", "npc_sub078_001");
        var selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_080_010_select_01", "msg_Ev_sub_080_010_select_02"], 0, true, false);
        if (selection == 1)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_02", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_03", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_2S");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            var concentrationEffectKey = "line01";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", concentrationEffectKey);
            var lineEffectKey = "btl_event_line_eff";
            var lineEffect2Key = "btl_event_line2_eff";
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line01", lineEffectKey);
            main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_line02", lineEffect2Key);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -265.06, 0.01, -188.86, 132.95);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", -263.02, 0.01, -186.34, 131.51);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", -263.6, 0.01, -187.32, 138.91);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", -263.02, 0.06, -174.42, 174.51);
            var tyrantrum:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(697);
            var oybnComponent:Dynamic = cppbindings.CB66BF4D3.f89B3EEBF(tyrantrum);
            var isOybn = oybnComponent.fCFD269DB();
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("GATIGORASU", lua.Table.create([-252.4, 0.01, -197.1]), -64.01, tyrantrum.f0DE6FCA9(), tyrantrum.f9E86AD53(), tyrantrum.fB31DF589(), "event_script", 0, true, tyrantrum.fA284DF88(), tyrantrum.f1E57BACE(), isOybn, false);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GATIGORASU", false);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.CreateRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_sub078_001");
            this.Await(function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(concentrationEffectKey);
            });
            this.Await(function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(lineEffectKey);
            });
            this.Await(function():Dynamic
            {
                return main.event.ik.command.IkScriptCommand.IsSetUpEffect(lineEffect2Key);
            });
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-262.22, 1.41, -171.43]), lua.Table.create([-4.82, 2.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-262.27, 1.33, -172.3]), lua.Table.create([-4.82, 2.87, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_R03_0018", false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_R03_18", false);
            if (cppbindings.C5090F7B8.fB628218B() == true)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A03_z02_04_0026", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A03_z02_04_0027", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A03_z02_04_0028", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_A03_z02_04_0029", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_R03_0016", false);
                main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_R03_0017", false);
            }
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            this.Await(function():Dynamic
            {
                return setupFinished;
            });
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_04", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -264.45, 0.01, -188.47, 110.45);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", -263.43, 0.01, -186.98, 125.04);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", -263.02, 0.01, -186.34, 131.51);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GATIGORASU", -250.78, -0.0, -198.75, -43.38);
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(lineEffectKey);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-259.43, 0.05, -186.23]), lua.Table.create([10.08, 84.4, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([-259.43, 0.64, -186.23]), lua.Table.create([10.08, 84.4, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_002", "surprise_mc");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            main.event.ik.command.IkScriptCommand.SDF7733B3BCABC76A("npc_sub078_003", "surprise_mc");
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("GATIGORASU", true);
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-261.2, 1.41, -186.56]), lua.Table.create([6.04, 86.92, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_003", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_05", "sub_080", "npc_sub078_003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_002", 175);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            if (isOybn)
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-253.95, 0.75, -187.02]), lua.Table.create([4.19, 11.0, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.4, lua.Table.create([-254.35, 0.75, -186.9]), lua.Table.create([4.19, 11.0, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-254.09, 0.49, -187.53]), lua.Table.create([2.51, 10.77, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(5.4, lua.Table.create([-254.42, 0.49, -187.55]), lua.Table.create([2.51, 10.77, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            }
            var moveAction = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("GATIGORASU", -255.85, -0.0, -195.27, 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.78);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 9.0, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.96);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 9.0, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.96);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 9.0, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.95);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 9.0, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.95);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 9.0, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.95);
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 9.0, 4);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveAction);
            if (isOybn)
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-258.22, 0.45, -191.33]), lua.Table.create([20.59, -28.09, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([-259.38, -0.47, -189.17]), lua.Table.create([20.59, -28.09, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-257.49, 1.29, -193.41]), lua.Table.create([18.47, -27.94, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.8, lua.Table.create([-258.26, 0.13, -191.43]), lua.Table.create([18.47, -27.94, 0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            }
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_002", "normal");
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_003", "normal");
            var animation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GATIGORASU", 17);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Shake(2.2, 3.0, 10, 4);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_06", "sub_080", null, true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animation);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_CameraShake();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-263.46, 1.22, -188.03]), lua.Table.create([11.8, 66.45, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
            main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_sub_080_010_select_03", "msg_Ev_sub_080_010_select_04"], 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02_WEAK");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.3, lua.Table.create([-262.25, 0.72, -187.5]), lua.Table.create([11.8, 66.45, -0.0]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(31, Int)));
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "surprise");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 21);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_07", "sub_080", "npc_sub078_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -264.45, 0.01, -188.47, 126.64);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GATIGORASU", -260.65, -0.0, -191.43, -55.7);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            if (isOybn)
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-266.13, 0.66, -186.39]), lua.Table.create([9.03, -31.04, 0.01]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-265.42, 0.66, -185.96]), lua.Table.create([9.03, -31.04, 0.01]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-265.79, 1.13, -186.97]), lua.Table.create([-1.25, -33.33, 0.01]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-265.22, 1.13, -186.6]), lua.Table.create([-1.25, -33.33, 0.01]), 28.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            }
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            var animation2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GATIGORASU", 36);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_08", "sub_080");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animation2);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(lineEffect2Key);
            main.event.ik.command.IkScriptCommand.FadeEffect(lineEffectKey);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-262.21, 1.78, -167.96]), lua.Table.create([-2.58, 4.12, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-262.6, 1.54, -173.27]), lua.Table.create([-2.58, 4.12, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(21, Int)));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 175);
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_OTAKU_WHOOSH05");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_09", "sub_080", "npc_sub078_001", true, true);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", -264.26, 0.0, -186.34, 174.51);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", -265.91, 0.01, -187.7, 125.04);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", -265.42, 0.01, -186.67, 145.01);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -263.39, 0.01, -191.99, 85.41);
            if (isOybn)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GATIGORASU", -260.51, 0.0, -191.08, -87.59);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GATIGORASU", -260.65, -0.0, -191.43, -87.59);
            }
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "GATIGORASU", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("GATIGORASU", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("Player");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-265.73, 1.35, -184.52]), lua.Table.create([-1.43, -21.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GATIGORASU", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 22);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_10", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_002", "npc_sub078_001", "head");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T500");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GATIGORASU", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-264.76, 1.39, -187.69]), lua.Table.create([-0.53, 91.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub078_002", 32, null, 3.85);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_11", "sub_080", "npc_sub078_002");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_12", "sub_080", "npc_sub078_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T0");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GATIGORASU", 16);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 21);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-265.73, 1.35, -184.52]), lua.Table.create([-1.43, -21.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_13", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 28);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_14", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            var animation3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 18);
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_01");
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_15", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_0S");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animation3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", -265.65, 0.01, -187.07, 117.68);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-263.22, 1.38, -186.71]), lua.Table.create([1.63, 89.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-263.24, 1.38, -186.5]), lua.Table.create([1.63, 89.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_003", "npc_sub078_001", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_003", 2);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_003", "sad");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_16", "sub_080", "npc_sub078_003");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub078_001");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_17", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_18", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", -265.5, 0.01, -186.7, 131.51);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "anger_mc");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-263.49, 1.23, -187.81]), lua.Table.create([8.99, 153.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-263.92, 1.38, -186.95]), lua.Table.create([8.99, 153.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.PlayEffectSequence(concentrationEffectKey);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_L");
            main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_19", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_002", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub078_003", "Player", "head");
            main.event.ik.command.IkScriptCommand.FadeEffect(concentrationEffectKey);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", -264.26, 0.0, -186.34, 174.51);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_002", -265.91, 0.01, -187.7, 125.04);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_003", -265.42, 0.01, -186.67, 145.01);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GATIGORASU", -260.65, -0.0, -191.43, -87.59);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-265.01, 1.3, -186.36]), lua.Table.create([-1.43, -21.23, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-265.73, 1.35, -184.52]), lua.Table.create([-1.43, -21.24, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GATIGORASU", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_20", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "rejoice_big_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_21", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-263.84, 1.23, -187.12]), lua.Table.create([10.79, 153.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_002", 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 20);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_001", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_080_010_talk_22", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub078_003", "smile_bitter");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub078_001", -264.26, 0.0, -186.34, 170.01);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -263.35, 0.02, -191.99, 99.03);
            if (isOybn)
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("GATIGORASU", -260.73, 0.0, -191.13, -84.15);
            }
            if (isOybn)
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-261.37, 1.1, -194.38]), lua.Table.create([1.93, 158.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-261.63, 1.0, -193.6]), lua.Table.create([6.17, 156.51, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
            }
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub078_001", "head");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub078_001", 33, null, 3.85);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_080_010_talk_23", "sub_080", "npc_sub078_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("GATIGORASU", 20);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0080");
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_001", 1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_002", 1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub078_003", 1);
        }
        this.m_resultParam = selection;
        this.RemoveSubCorutin("SetupMobNpc");
    }
}
