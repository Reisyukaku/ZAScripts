package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C346F1C769E3145E4")
@:expose("C346F1C769E3145E4")
class Ev_sub_032_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub031_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-819.25, 7.44, -523.12]), lua.Table.create([-1.37, -70.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub031_001", -816.74, 6.13, -523.5, -70.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub031_1", -815.94, 6.13, -525.06, -61.81);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -819.98, 6.13, -523.02, 83.43);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub031_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub031_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub031_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-818.52, 7.44, -523.38]), lua.Table.create([-1.37, -70.04, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 21);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub031_1", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_032_010_talk_02", "sub_032", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Reset_AnimationAll("npc_sub031_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub031_1", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-826.46, 9.87, -518.99]), lua.Table.create([-11.19, -69.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub031_1", -818.84, 6.13, -521.73, -22.93);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub031_001", -821.91, 6.12, -522.23, 65.81);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -821.63, 6.14, -523.1, 56.26);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub031_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub031_001", "npc_pokemon_sub031_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_pokemon_sub031_1");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-826.46, 7.87, -518.99]), lua.Table.create([-11.19, -69.11, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_032_010_talk_03", "sub_032", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var effectKey:String = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        this.Await((function():Dynamic {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-821.84, 6.49, -519.84]), lua.Table.create([3.84, -59.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub031_1", 47);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_032_010_talk_04", "sub_032", null, true, true);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub031_1", 97);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EW0163");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-820.47, 7.52, -520.84]), lua.Table.create([-2.97, 37.25, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_032_010_talk_05", "sub_032", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-817.43, 6.95, -519.31]), lua.Table.create([-0.96, 41.7, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(1, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_032_010_talk_06", "sub_032", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub031_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_032_010_talk_07", "sub_032");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_ITEM_GET_KEY");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_032_010_sys_01", "sub_032");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_sub_031-033_Migawari", false);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -817.9, 6.13, -524.43, 83.43);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub031_001", -816.74, 6.13, -523.5, -119.06);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub031_1", -815.77, 6.13, -524.97, -82.09);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub031_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub031_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub031_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-819.52, 7.45, -522.88]), lua.Table.create([-5.1, -61.66, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_032_010_talk_08", "sub_032", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub031_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_032_010_talk_09", "sub_032", "npc_sub031_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0032");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
