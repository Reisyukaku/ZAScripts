package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C7473B5DD8087A2CD")
@:expose("C7473B5DD8087A2CD")
class Ev_sub_117_020 extends BaseSubQuest
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
        var effectKey:Dynamic = null;
        var effectKey2:Dynamic = null;
        if (true == cppbindings.C5090F7B8.fB628218B())
        {
            effectKey = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
            effectKey2 = "npc_A04_r04_0014";
            effectKey(effectKey2, false);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -755.03, 0.16, -90.44, -78.11);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_main_ju_leader", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "npc_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("PANPUZIN", lua.Table.create([-760.59, 0.77, -90.42]), 148.83, 711, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("PANPUZIN", false);
        effectKey = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        effectKey2 = "poke_app_01";
        main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/poke_app/poke_app_01", effectKey2, "PANPUZIN", "event_script");
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey2);
        }));
        main.event.ik.command.IkScriptCommand.SetLocaterEffect(effectKey2, "eff_face01");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -754.69, 0.15, -90.49, -110.11);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", -754.68, 0.15, -91.3, -91.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -755.92, 0.15, -90.48, -99.6);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -755.91, 0.31, -92.3, -68.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.68, 1.02, -92.14]), lua.Table.create([-1.37, -115.9, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-758.49, 1.02, -92.53]), lua.Table.create([-1.37, -115.9, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "main_syandera", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_01", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 491));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 77);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("main_syandera", -757.79, 0.72, -91.23, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-758.7, 2.17, -92.48]), lua.Table.create([-9.19, 141.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_ju_leader", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_syandera", 37);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.7);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-756.57, 2.0, -94.04]), lua.Table.create([-9.19, 141.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_02", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_HYON");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-760.1, 1.4, -92.1]), lua.Table.create([-1.05, 164.15, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "PANPUZIN", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "PANPUZIN", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "PANPUZIN", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("main_syandera", "PANPUZIN", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("PANPUZIN", true);
        main.event.ik.command.IkScriptCommand.PlayEffect(effectKey2);
        main.event.ik.command.IkScriptCommand.Fade_In("White", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey2);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-754.99, 1.6, -88.7]), lua.Table.create([-10.78, 50.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-754.84, 1.6, -88.89]), lua.Table.create([-10.78, 50.73, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("PANPUZIN", "npc_main_ju_leader", "head");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("PANPUZIN", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_03", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-760.1, 1.4, -92.1]), lua.Table.create([-1.05, 164.15, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_syandera", false);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("PANPUZIN");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("PANPUZIN", -761.67, 0.15, -98.76, 2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-759.3, 1.15, -94.95]), lua.Table.create([-1.05, 164.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.CreateRotomPhoneLooseWait("npc_main_ju_leader", "ob0004_00_normal_05");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", -754.83, 0.15, -91.67, -74.85);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -757.2, 0.15, -91.63, 61.42);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -757.07, 0.72, -90.31, 146.57);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -754.63, 0.15, -90.47, -90.55);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "main_syandera", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "npc_main_ju_leader", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("PANPUZIN", false);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-753.34, 1.67, -91.0]), lua.Table.create([-9.56, 93.01, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_syandera", true);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_04", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_05", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_syandera", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_06", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_syandera", -757.14, 0.72, -90.33, 173.07);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -757.2, 0.15, -91.63, 61.42);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-755.49, 1.49, -91.82]), lua.Table.create([-8.34, 108.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.WaitCreateRotomPhone("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_07", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_syandera", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_08", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_ju_leader", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_09", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-755.58, 1.79, -91.22]), lua.Table.create([0.16, -55.04, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(23, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_10", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-755.96, 1.36, -91.36]), lua.Table.create([0.0, 78.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main_syandera", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_020_talk_11", "sub_117", "npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
