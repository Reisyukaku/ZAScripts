package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C9692935FD6D55BD4")
@:expose("C9692935FD6D55BD4")
class Ev_m05_2205 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_ju_boss", "npc_pokemon_cleffy"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        var effectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_detective", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ju_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_cleffy", false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_KUREHFI", lua.Table.create([(-13.68), 3.69, (-90.05)]), 90.0, 707, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([(-6.23), 3.01, (-90.5)]), (-85.56), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([(-7.48), 3.03, (-91.18)]), (-66.15), "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-5.97), 3.02, (-89.44), (-96.3));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-12.48), 4.05, (-90.05)]), lua.Table.create([(-5.46), 89.7, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("dyn_KUREHFI", 0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_01", "main_05_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2410_CAMERAWHOOSH");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.4, lua.Table.create([(-3.93), 4.39, (-90.0)]), lua.Table.create([(-5.46), 89.7, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_02", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-6.38), 5.11, (-90.7)]), lua.Table.create([(-15.24), 84.18, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.4, lua.Table.create([(-6.36), 5.11, (-90.89)]), lua.Table.create([(-15.24), 84.18, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var dynMainJuBossTurn:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", 39.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_03", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainJuBossTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_KUREHFI", (-13.68), 3.69, (-90.05), 99.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", (-6.23), 3.01, (-90.5), (-119.56));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", (-7.48), 3.03, (-91.18), 39.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-5.97), 3.02, (-89.44), (-131.8));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-6.76), 4.67, (-90.8)]), lua.Table.create([16.57, 62.95, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_KUREHFI", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.4, lua.Table.create([(-6.09), 4.2, (-90.46)]), lua.Table.create([16.57, 62.95, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        var dynMainJuBossAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_04", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_05", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(dynMainJuBossAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-11.96), 4.46, (-90.37)]), lua.Table.create([(-11.44), 100.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_KUREHFI", true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.4, lua.Table.create([(-12.75), 4.29, (-90.23)]), lua.Table.create([(-11.44), 100.13, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "serious");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_KUREHFI", 21);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", (-7.48), 3.02, (-91.18), 60.35);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-6.63), 4.51, (-90.46)]), lua.Table.create([(-5.72), (-86.52), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([(-7.08), 4.5, (-90.43)]), lua.Table.create([(-5.72), (-86.52), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(20, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_TSUKKOMI_M");
        main.event.ik.command.IkScriptCommand.Camera_Shake(0.3, 2.5, 10, 4);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2205_talk_06", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_2205_talk_07", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 22);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Wait_CameraShake();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-5.09), 4.34, (-91.19)]), lua.Table.create([3.04, 93.82, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-5.07), 4.34, (-90.94)]), lua.Table.create([3.04, 93.82, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_08", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-5.94), 3.02, (-89.49), (-143.3));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", (-6.23), 3.01, (-90.5), (-117.06));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", (-7.48), 3.02, (-91.18), 39.85);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-4.41), 4.47, (-88.66)]), lua.Table.create([(-6.51), 63.26, (-0.02)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_detective", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", 14.94);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-165.8));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_09", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_10", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("dyn_main_detective", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2205_talk_11", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
    }
}
