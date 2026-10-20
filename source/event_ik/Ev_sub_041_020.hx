package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C73B588D48F4A069D")
@:expose("C73B588D48F4A069D")
class Ev_sub_041_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub041_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T0");
        var effectKey:String = "ef_line";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", effectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -466.95, 0.23, -395.58, -156.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub041_001", -467.71, 0.23, -399.65, 11.23);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub041_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub041_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("PANPUZIN", lua.Table.create([-468.41, 0.23, -399.57]), 3.8, 711, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("BAIBANIRA", lua.Table.create([-466.79, 0.23, -400.88]), -13.22, 584, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DASUTODASU", lua.Table.create([-467.44, 0.23, -401.73]), 8.82, 569, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub071_001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub071_1", false);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-466.47, 1.13, -399.04]), lua.Table.create([-30.44, 62.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-466.47, 2.38, -399.04]), lua.Table.create([-30.44, 62.96, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub041_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub041_001", 2);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_041_020_talk_01", "sub_041", "npc_sub041_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_041_020_talk_02", "sub_041", "npc_sub041_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(effectKey);
        }));
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-467.13, 1.77, -397.3]), lua.Table.create([-6.65, 13.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.5, lua.Table.create([-467.57, 1.82, -399.07]), lua.Table.create([-6.65, 13.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub041_001", "lose");
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_sub041_001", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub041_001", 175);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH01");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_041_020_talk_03", "sub_041");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(effectKey);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-466.0, 1.33, -397.35]), lua.Table.create([-4.56, 31.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub041_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub041_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub041_001", "BAIBANIRA", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_041_020_talk_04", "sub_041", "npc_sub041_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("PANPUZIN", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BAIBANIRA", 20);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DASUTODASU", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_041_020_talk_06", "sub_041", "npc_sub041_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-465.65, 1.68, -394.51]), lua.Table.create([-5.99, 33.22, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(29, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub041_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub041_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_041_020_talk_07", "sub_041", "npc_sub041_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub041_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_041_020_talk_08", "sub_041", "npc_sub041_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub041_001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub041_001", -461.82, 0.23, -395.63, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T0");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("BAIBANIRA", -460.57, 0.23, -400.81, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("DASUTODASU", -461.49, 0.23, -399.78, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("PANPUZIN", -463.72, 0.23, -398.39, 0.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_MUTE_T5000");
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0041");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
