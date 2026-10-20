package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CD3148641BA7B714B")
@:expose("CD3148641BA7B714B")
class Ev_sub_087_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub085_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T1000");
        var unitParamInPartyByDevNo:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(308, 665);
        var simpleParam:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(unitParamInPartyByDevNo);
        var getAppearanceState:Dynamic = untyped simpleParam.fCFD269DB;
        var getAppearanceStateResult:Dynamic = getAppearanceState(simpleParam);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var cameraVector:Dynamic = lua.Table.create([-490.95, 0.1, -830.08]);
            var pokemonDevNo2:Dynamic = unitParamInPartyByDevNo.f0DE6FCA9();
            var pokemonFormNo2:Dynamic = unitParamInPartyByDevNo.f9E86AD53();
            var pokemonSexType2:Dynamic = unitParamInPartyByDevNo.fB31DF589();
            var pokemonIsRare2:Dynamic = unitParamInPartyByDevNo.fA284DF88();
            var pokemonScale:Dynamic = unitParamInPartyByDevNo.f1E57BACE();
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("TYAAREMU", cameraVector, 50.54, pokemonDevNo2, pokemonFormNo2, pokemonSexType2, "event_script", 0, true, pokemonIsRare2, pokemonScale, getAppearanceStateResult, false);
            untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        }
        else
        {
            var cameraVector2:Dynamic = lua.Table.create([-490.95, 0.1, -830.08]);
            var pokemonDevNo:Dynamic = unitParamInPartyByDevNo.f0DE6FCA9();
            var pokemonFormNo:Dynamic = unitParamInPartyByDevNo.f9E86AD53();
            var pokemonSexType:Dynamic = unitParamInPartyByDevNo.fB31DF589();
            var pokemonIsRare:Dynamic = unitParamInPartyByDevNo.fA284DF88();
            var pokemonScale2:Dynamic = unitParamInPartyByDevNo.f1E57BACE();
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("TYAAREMU", cameraVector2, 50.54, pokemonDevNo, pokemonFormNo, pokemonSexType, "event_script", 0, true, pokemonIsRare, pokemonScale2, getAppearanceStateResult, false);
            untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -490.98, 0.11, -828.71, 90.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub085_001", -489.23, 0.08, -828.7, -91.94);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub085_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("TYAAREMU", "npc_sub085_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub085_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-489.96, 2.71, -824.3]), lua.Table.create([0.0, 1.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-489.96, 1.06, -824.3]), lua.Table.create([0.0, 1.65, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-490.46, 1.27, -827.97]), lua.Table.create([8.23, -58.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([-489.94, 1.44, -828.29]), lua.Table.create([8.23, -58.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub085_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_087_020_talk_01", "sub_087", "npc_sub085_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_087_020_talk_02", "sub_087", "npc_sub085_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_CloseEye("npc_sub085_001");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([-489.7, 1.55, -828.43]), lua.Table.create([8.23, -58.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub085_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_087_020_talk_04", "sub_087", "npc_sub085_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub085_001", 175);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_087_020_talk_05", "sub_087", "npc_sub085_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.1, lua.Table.create([-489.94, 1.44, -828.29]), lua.Table.create([8.23, -58.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub085_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub085_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2460_SURPRISE_02");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-491.69, 1.53, -827.94]), lua.Table.create([-5.42, -59.85, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_087_020_talk_06", "sub_087", "npc_sub085_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub085_001", 74);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 74);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_S_ITEM_GET_EVENT");
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_087_020_sys_01", "sub_087");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub085_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub085_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_087_020_talk_07", "sub_087", "npc_sub085_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-488.89, 1.71, -826.7]), lua.Table.create([-13.51, 27.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(21, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "TYAAREMU", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub085_001", "TYAAREMU", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("TYAAREMU", 17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub085_001", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub085_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub085_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_087_020_talk_08", "sub_087", "npc_sub085_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0087");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub085_001", "normal");
    }
}
