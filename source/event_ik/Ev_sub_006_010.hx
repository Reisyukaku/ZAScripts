package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C97F0D16FE35D4097")
@:expose("C97F0D16FE35D4097")
class Ev_sub_006_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub006_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_MUTE_T0");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub006_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub006_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub006_001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub006_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_01", "sub_006", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
        var unitParamInPartyByDevNo:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(23);
        var simpleParam:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(unitParamInPartyByDevNo);
        var getAppearanceState:Dynamic = untyped simpleParam.fCFD269DB;
        var getAppearanceStateResult:Dynamic = getAppearanceState(simpleParam);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var cameraVector:Dynamic = lua.Table.create([-366.09, 0.11, -501.37]);
            var pokemonDevNo2:Dynamic = unitParamInPartyByDevNo.f0DE6FCA9();
            var pokemonFormNo2:Dynamic = unitParamInPartyByDevNo.f9E86AD53();
            var pokemonSexType2:Dynamic = unitParamInPartyByDevNo.fB31DF589();
            var pokemonIsRare2:Dynamic = unitParamInPartyByDevNo.fA284DF88();
            var pokemonScale:Dynamic = unitParamInPartyByDevNo.f1E57BACE();
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_DEV_AABO", cameraVector, untyped -163.35, pokemonDevNo2, pokemonFormNo2, pokemonSexType2, "event_script", 0, true, pokemonIsRare2, pokemonScale, getAppearanceStateResult, false);
            untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        }
        else
        {
            var cameraVector2:Dynamic = lua.Table.create([-365.95, 0.14, -501.42]);
            var pokemonDevNo:Dynamic = unitParamInPartyByDevNo.f0DE6FCA9();
            var pokemonFormNo:Dynamic = unitParamInPartyByDevNo.f9E86AD53();
            var pokemonSexType:Dynamic = unitParamInPartyByDevNo.fB31DF589();
            var pokemonIsRare:Dynamic = unitParamInPartyByDevNo.fA284DF88();
            var pokemonScale2:Dynamic = unitParamInPartyByDevNo.f1E57BACE();
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_DEV_AABO", cameraVector2, untyped -162.14, pokemonDevNo, pokemonFormNo, pokemonSexType, "event_script", 0, true, pokemonIsRare, pokemonScale2, getAppearanceStateResult, false);
            untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub006_001", "dyn_DEV_AABO", "eff_overmodel01");
        var setTurnToObjAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub006_001", "dyn_DEV_AABO");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_DEV_AABO", "eff_overmodel01");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 200);
        var fObjSetPosAng:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
        fObjSetPosAng("Player", untyped -365.89, 0.15, untyped -502.27, 27.5);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.01, 1.09, -501.54]), lua.Table.create([-19.43, -93.21, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector3:Dynamic = lua.Table.create([-367.72, 0.99, -501.52]);
            var cameraVector4:Dynamic = lua.Table.create([-19.43, -93.21, -0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            cameraMoveAngle(2.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase, null, null, null, null, null, null);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-367.44, 1.05, -501.34]), lua.Table.create([-25.2, -86.2, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector5:Dynamic = lua.Table.create([-367.18, 0.83, -501.34]);
            var cameraVector6:Dynamic = lua.Table.create([-25.2, -86.2, 0.0]);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            cameraMoveAngle2(2.0, cameraVector5, cameraVector6, 40.0, 0, cameraEase2, null, null, null, null, null, null);
        };
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.23, 0.74, -501.14]), lua.Table.create([-3.38, -78.02, -0.0]), 40.0, 0, cameraEase3);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_04", "sub_006", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_DEV_AABO", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_05", "sub_006");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_06", "sub_006", "npc_sub006_001");
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-365.16, 0.48, -500.35]), lua.Table.create([-3.79, 38.88, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub006_001", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle3:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector7:Dynamic = lua.Table.create([-364.95, 0.64, -500.61]);
            var cameraVector8:Dynamic = lua.Table.create([-11.74, 55.88, 0.0]);
            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            cameraMoveAngle3(6.0, cameraVector7, cameraVector8, 40.0, 0, cameraEase4, null, null, null, null, null, null);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-365.46, 0.29, -500.82]), lua.Table.create([9.64, 29.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub006_001", false);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            var cameraMoveAngle4:Dynamic = untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector9:Dynamic = lua.Table.create([-365.25, 0.44, -501.02]);
            var cameraVector10:Dynamic = lua.Table.create([-5.55, 59.31, 0.0]);
            var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            cameraMoveAngle4(6.0, cameraVector9, cameraVector10, 40.0, 0, cameraEase5, null, null, null, null, null, null);
        };
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_07", "sub_006", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_08", "sub_006", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub006_001", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.23, 0.74, -501.14]), lua.Table.create([-3.38, -78.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub006_001", "dyn_DEV_AABO", "eff_overmodel01");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub006_001", "normal", "npc_child02_a_f_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_09", "sub_006", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_DEV_AABO", 16);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_10", "sub_006");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-366.1, 1.05, -500.96]), lua.Table.create([5.22, -80.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub006_001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_11", "sub_006", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub006_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_006_010_talk_13", "sub_006", "npc_sub006_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0006");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped this.m_resultParam = 0;
    }
}
