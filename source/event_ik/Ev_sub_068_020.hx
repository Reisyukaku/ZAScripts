package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB9B98835AC03CA44")
@:expose("CB9B98835AC03CA44")
class Ev_sub_068_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub068_001", "npc_sub068_002", "npc_pokemon_sub068_1", "npc_pokemon_sub068_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-509.31), 0.16, (-20.38), (-31.59));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub068_001", (-510.46), 0.14, (-18.02), (-73.22));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub068_002", (-511.97), 0.15, (-18.22), 101.38);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub068_1", (-511.25), 0.15, (-17.58), 144.93);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub068_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "npc_pokemon_sub068_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_002", "npc_pokemon_sub068_1", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_001", "sad");
        var unitParamInPartyByDevNo:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(247);
        var simpleParam:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(unitParamInPartyByDevNo);
        var getAppearanceState:Dynamic = untyped simpleParam.fCFD269DB;
        var getAppearanceStateResult:Dynamic = getAppearanceState(simpleParam);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("SANAGIRASU", lua.Table.create([(-508.12), 0.15, (-18.86)]), (-76.11), unitParamInPartyByDevNo.f0DE6FCA9(), unitParamInPartyByDevNo.f9E86AD53(), unitParamInPartyByDevNo.fB31DF589(), "event_script", 0, true, unitParamInPartyByDevNo.fA284DF88(), unitParamInPartyByDevNo.f1E57BACE(), getAppearanceStateResult, false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-509.19), 2.19, (-22.16)]), lua.Table.create([(-15.08), 165.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-509.19), 1.74, (-22.16)]), lua.Table.create([(-15.08), 165.75, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_13", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-509.56), 1.04, (-20.33)]), lua.Table.create([(-3.6), 146.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub068_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_068_020_talk_01", "sub_068");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_001", 21);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_02", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "npc_sub068_002", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_002", "npc_sub068_001", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-511.01), 1.33, (-18.59)]), lua.Table.create([11.72, 115.64, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_002", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_03", "sub_068", "npc_sub068_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_002", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_068_020_talk_05", "sub_068", "npc_sub068_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-509.33), 0.16, (-19.97), (-55.74));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub068_1", (-510.91), 0.15, (-17.7), 160.73);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-513.45), 1.47, (-19.97)]), lua.Table.create([(-6.65), (-116.89), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub068_002", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-508.12), 1.15, (-18.86)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub068_002", lua.Table.create([(-508.12), 1.15, (-18.86)]));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub068_001", lua.Table.create([(-508.12), 1.15, (-18.86)]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub068_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_002", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_08", "sub_068", "npc_sub068_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_09", "sub_068", "npc_sub068_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SANAGIRASU", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_10", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub068_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_11", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub068_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub068_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub068_001", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_068_020_talk_12", "sub_068", "npc_sub068_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub068_1", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("SANAGIRASU", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0068");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
    }
}
