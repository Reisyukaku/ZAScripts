package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CA9EAEE448B07595E")
@:expose("CA9EAEE448B07595E")
class Ev_sub_012_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub012_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub012_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub012_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub012_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 32, null, 5.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_01", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
        var unitParamInPartyByDevNo:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(672);
        var simpleParam:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(unitParamInPartyByDevNo);
        var getAppearanceState:Dynamic = untyped simpleParam.fCFD269DB;
        var getAppearanceStateResult:Dynamic = getAppearanceState(simpleParam);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MHEEKURU", lua.Table.create([(-505.33), 0.16, (-897.81)]), 117.15, unitParamInPartyByDevNo.f0DE6FCA9(), unitParamInPartyByDevNo.f9E86AD53(), unitParamInPartyByDevNo.fB31DF589(), "event_script", 0, true, unitParamInPartyByDevNo.fA284DF88(), unitParamInPartyByDevNo.f1E57BACE(), getAppearanceStateResult, false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-503.99), 0.16, (-898.44), (-100.47));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub012_001", (-505.95), 0.14, (-898.61), 48.96);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 71);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MHEEKURU", "npc_sub012_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "MHEEKURU", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-505.82), 1.87, (-899.26)]), lua.Table.create([(-39.9), (-164.05), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T500");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_04", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 73, null, 1.7);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-504.82), 1.41, (-898.48)]), lua.Table.create([(-11.61), 90.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MHEEKURU", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_05", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("MHEEKURU", (-505.39), 0.16, (-897.87), 146.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MHEEKURU", true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MHEEKURU", "npc_sub012_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub012_001");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_012_SURPRISE_02");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("MHEEKURU", (-505.27), 0.16, (-897.78), (-160.13));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MHEEKURU", "npc_sub012_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub012_001", (-507.72), 0.15, (-900.19), 72.17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-502.58), 1.23, (-900.32)]), lua.Table.create([(-3.11), 130.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub012_001", (-506.25), 0.15, (-898.46), 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_06", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub012_001", lua.Table.create([(-505.27), 0.25, (-897.78)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-505.27), 0.25, (-897.78)]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-504.64), 2.43, (-900.04)]), lua.Table.create([(-37.15), 166.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 32, null, 5.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_09", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MHEEKURU", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub012_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-504.99), 1.38, (-898.1)]), lua.Table.create([10.47, 75.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MHEEKURU", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([(-505.39), 1.45, (-898.2)]), lua.Table.create([10.47, 75.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_10", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_11", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_12", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MHEEKURU", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-502.58), 1.23, (-900.32)]), lua.Table.create([(-3.11), 130.53, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub012_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_14", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 33, null, 4.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_012_010_talk_15", "sub_012", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MHEEKURU", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0012");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub012_001");
    }
}
