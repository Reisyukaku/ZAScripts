package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C74702FDD80848944")
@:expose("C74702FDD80848944")
class Ev_sub_117_030 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -545.71, -3.69, -855.2, -100.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", -546.46, -3.7, -854.64, -96.66);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -548.32, -3.0, -856.59, -65.76);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -548.73, -3.69, -855.39, -88.35);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KAGEBOUZU", lua.Table.create([-555.91, -3.36, -854.83]), 115.63, 353, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_main_ju_leader", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "npc_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KAGEBOUZU", false);
        var line01EffectKey:Dynamic = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", line01EffectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(line01EffectKey);
        }));
        var pokeApp01EffectKey:Dynamic = "poke_app_01";
        main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/poke_app/poke_app_01", pokeApp01EffectKey, "KAGEBOUZU", "event_script");
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(pokeApp01EffectKey);
        }));
        main.event.ik.command.IkScriptCommand.SetLocaterEffect(pokeApp01EffectKey, "eff_face01");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-550.59, -2.27, -854.67]), lua.Table.create([-9.04, -65.02, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "main_syandera", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_01", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 491));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 77);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        var mainSyanderaMovement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("main_syandera", -550.58, -3.0, -857.08, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(mainSyanderaMovement);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ju_leader", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub117_001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -550.51, -3.0, -856.99, -60.19);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-548.56, -1.72, -856.08]), lua.Table.create([-14.19, 98.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_syandera", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-547.56, -1.46, -856.23]), lua.Table.create([-14.19, 98.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(line01EffectKey);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_02", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(line01EffectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_HYON");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-553.89, -2.87, -855.84]), lua.Table.create([-5.67, 116.86, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_ju_leader", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub117_001", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KAGEBOUZU", true);
        main.event.ik.command.IkScriptCommand.PlayEffect(pokeApp01EffectKey);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FadeEffect(pokeApp01EffectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KAGEBOUZU", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_03", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("KAGEBOUZU", -88.35);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("KAGEBOUZU", -581.23, -4.31, -853.55, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -548.32, -3.0, -856.59, -65.76);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-550.86, -3.08, -854.46]), lua.Table.create([5.95, -64.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_04", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("KAGEBOUZU", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", -546.2, -3.7, -854.46, -108.04);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -547.66, -3.69, -855.74, 129.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -548.0, -3.7, -856.98, 18.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "main_syandera", "head");
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait("npc_main_ju_leader", "ob0004_00_normal_05");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -548.88, -3.17, -856.99, 49.4);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -547.66, -3.69, -855.74, 129.96);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-546.3, -2.21, -856.02]), lua.Table.create([-11.7, 87.51, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_05", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_syandera", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_06", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_07", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_syandera", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_08", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", -546.18, -3.69, -854.64, -118.54);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -545.75, -3.69, -855.35, -101.14);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-543.87, -2.08, -855.91]), lua.Table.create([-11.33, 97.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main_ju_leader", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_09", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-546.99, -2.05, -854.83]), lua.Table.create([0.78, -99.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_10", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_syandera", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-546.6, -2.43, -855.55]), lua.Table.create([-1.82, 81.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_11", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-546.75, -2.04, -855.3]), lua.Table.create([-0.08, -139.13, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub117_001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_030_talk_12", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
