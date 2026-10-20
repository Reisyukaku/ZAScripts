package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CDE3CDA7247B05A4D")
@:expose("CDE3CDA7247B05A4D")
class Ev_sub_013_010 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_01", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
        var unitParamInPartyByDevNo:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(582);
        var simpleParam:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(unitParamInPartyByDevNo);
        var getAppearanceState:Dynamic = untyped simpleParam.fCFD269DB;
        var getAppearanceStateResult:Dynamic = getAppearanceState(simpleParam);
        var pokemonDevNo:Dynamic = unitParamInPartyByDevNo.f0DE6FCA9();
        var pokemonFormNo:Dynamic = unitParamInPartyByDevNo.f9E86AD53();
        var pokemonSexType:Dynamic = unitParamInPartyByDevNo.fB31DF589();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("BANIPUTTI", lua.Table.create([-505.8, 1.14, -897.9]), 90.88, pokemonDevNo, pokemonFormNo, pokemonSexType, "event_script", 0, true, unitParamInPartyByDevNo.fA284DF88(), unitParamInPartyByDevNo.f1E57BACE(), getAppearanceStateResult, false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -504.64, 0.16, -898.05, -68.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub012_001", -506.11, 0.15, -898.4, 7.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("BANIPUTTI", "npc_sub012_001", "head");
        var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult[1] = -505.8;
        untyped emptyTableResult[2] = 1.5;
        untyped emptyTableResult[3] = -897.9;
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub012_001", emptyTableResult);
        var fObjSetVisibility:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
        fObjSetVisibility("Player", false);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var cameraVector:Dynamic = lua.Table.create([-505.45, 2.22, -899.45]);
            var cameraVector2:Dynamic = lua.Table.create([-28.06, 160.79, -0.0]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            var cameraVector3:Dynamic = lua.Table.create([-505.52, 2.11, -899.36]);
            var cameraVector4:Dynamic = lua.Table.create([-28.86, 159.74, 0.0]);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BANIPUTTI", 20));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_02", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 74, null, 1.4);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(1.4);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var cameraVector5:Dynamic = lua.Table.create([-504.46, 1.18, -898.07]);
            var cameraVector6:Dynamic = lua.Table.create([8.29, 90.41, 0.0]);
            var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector5, cameraVector6, 40.0, 0, cameraEase3);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            var cameraVector7:Dynamic = lua.Table.create([-504.63, 1.16, -897.68]);
            var cameraVector8:Dynamic = lua.Table.create([7.92, 73.1, 0.0]);
            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector7, cameraVector8, 40.0, 0, cameraEase4);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_03", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_04", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_012_SURPRISE_02");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub012_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub012_001", -507.72, 0.15, -900.19, 72.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("BANIPUTTI", -505.7, 1.14, -897.9, 131.29);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-503.29, 1.24, -899.71]), lua.Table.create([-1.77, 127.89, 0.0]), 40.0, 0, cameraEase5);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub012_001", -506.25, 0.15, -898.46, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_05", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var emptyTableResult2:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult2[1] = -505.8;
        untyped emptyTableResult2[2] = 1.5;
        untyped emptyTableResult2[3] = -897.9;
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub012_001", emptyTableResult2);
        untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var cameraVector9:Dynamic = lua.Table.create([-504.38, 2.35, -899.3]);
            var cameraVector10:Dynamic = lua.Table.create([-30.79, 140.78, 0.0]);
            var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector9, cameraVector10, 40.0, 0, cameraEase6);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            var cameraVector11:Dynamic = lua.Table.create([-504.67, 2.4, -899.3]);
            var cameraVector12:Dynamic = lua.Table.create([-35.4, 145.5, 0.0]);
            var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector11, cameraVector12, 40.0, 0, cameraEase7);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-505.8, 1.5, -897.9]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 32, null, 5.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_06", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BANIPUTTI", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_08", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-505.34, 1.27, -897.97]), lua.Table.create([14.03, 65.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("BANIPUTTI", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_10", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        var setAnimationAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_11", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub012_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("BANIPUTTI", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-503.29, 1.24, -899.71]), lua.Table.create([-1.77, 127.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 18);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_013_010_talk_12", "sub_013", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0013");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
