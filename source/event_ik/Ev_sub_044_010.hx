package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF38C62B9AEA7D8A9")
@:expose("CF38C62B9AEA7D8A9")
class Ev_sub_044_010 extends BaseSubQuest
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
        var key:Dynamic = null;
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
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_01", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_POKE_APPERANCE");
        var unitParamInPartyByDevNo:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(686);
        var simpleParam:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(unitParamInPartyByDevNo);
        key = simpleParam;
        var getAppearanceState:Dynamic = untyped simpleParam.fCFD269DB;
        var getAppearanceStateResult:Dynamic = getAppearanceState(key);
        var pokemonDevNo:Dynamic = unitParamInPartyByDevNo.f0DE6FCA9();
        var pokemonFormNo:Dynamic = unitParamInPartyByDevNo.f9E86AD53();
        var pokemonSexType:Dynamic = unitParamInPartyByDevNo.fB31DF589();
        var pokemonIsRare:Dynamic = unitParamInPartyByDevNo.fA284DF88();
        var pokemonScale:Dynamic = unitParamInPartyByDevNo.f1E57BACE();
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("MAAIIKA", lua.Table.create([(-505.77), 1.06, (-897.81)]), 132.85, pokemonDevNo, pokemonFormNo, pokemonSexType, "event_script", 0, true, pokemonIsRare, pokemonScale, getAppearanceStateResult, false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("MAAIIKA", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-504.87), 0.16, (-897.81), (-40.9));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub012_001", (-506.11), 0.15, (-898.4), 7.85);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("MAAIIKA", "npc_sub012_001", "head");
        var emptyTableResult:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult[1] = (untyped -505.8 : Dynamic);
        untyped emptyTableResult[2] = (1.5 : Dynamic);
        untyped emptyTableResult[3] = (untyped -897.9 : Dynamic);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub012_001", emptyTableResult);
        key = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
        key("Player", false);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var cameraVector:Dynamic = lua.Table.create([(-505.46), 2.3, (-899.52)]);
            var cameraVector2:Dynamic = lua.Table.create([(-26.89), 161.17, (-0.0)]);
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null, null);
            key = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            key();
        }
        else
        {
            var cameraVector3:Dynamic = lua.Table.create([(-505.63), 2.05, (-899.26)]);
            var cameraVector4:Dynamic = lua.Table.create([(-26.89), 162.45, (-0.0)]);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2, null, null, null, null);
            key = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            key();
        };
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_02", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub012_001", 74, null, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAAIIKA", 16);
        key = untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action;
        key();
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            key = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            key("MAAIIKA", untyped -506.08, 0.86, untyped -897.78, 138.07);
        }
        else
        {
            key = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            key("MAAIIKA", untyped -505.83, 1.01, untyped -897.8, 133.23);
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-504.79), 1.18, (-897.65)]), lua.Table.create([9.29, 73.76, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_03", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_04", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB_012_SURPRISE_02");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("Player", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_sub012_001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub012_001", (-507.72), 0.15, (-900.19), 72.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("MAAIIKA", (-505.96), 0.8, (-897.67), 138.07);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        key = "line01";
        main.event.ik.command.IkScriptCommand.CreateEffect("battle/etc/kaiwa/ef_concentration_line01", key);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(key);
        }));
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-503.73), 1.34, (-899.91)]), lua.Table.create([(-2.37), 133.88, 0.0]), 40.0, 0, cameraEase3, null, null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_sub012_001", (-506.25), 0.15, (-898.46), 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_05", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var emptyTableResult2:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult2[1] = (untyped -505.77 : Dynamic);
        untyped emptyTableResult2[2] = (1.5 : Dynamic);
        untyped emptyTableResult2[3] = (untyped -897.81 : Dynamic);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub012_001", emptyTableResult2);
        var waitTime:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Time;
        waitTime(0.5);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var cameraVector5:Dynamic = lua.Table.create([(-504.68), 2.45, (-899.45)]);
            var cameraVector6:Dynamic = lua.Table.create([(-30.96), 146.76, 0.0]);
            var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector5, cameraVector6, 40.0, 0, cameraEase4, null, null, null, null);
            var waitCamera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            waitCamera();
        }
        else
        {
            var cameraVector7:Dynamic = lua.Table.create([(-504.71), 2.34, (-899.26)]);
            var cameraVector8:Dynamic = lua.Table.create([(-32.96), 144.56, 0.0]);
            var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector7, cameraVector8, 40.0, 0, cameraEase5, null, null, null, null);
            var waitCamera2:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
            waitCamera2();
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([(-505.77), 1.5, (-897.81)]));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_06", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAAIIKA", 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-505.28), 1.15, (-898.01)]), lua.Table.create([15.55, 68.31, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MAAIIKA", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 28);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub012_001", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_07", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_08", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("MAAIIKA", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-503.73), 1.34, (-899.91)]), lua.Table.create([(-2.37), 133.88, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub012_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_09", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var emptyTableResult3:Dynamic = lua.abi.Host.emptyTable();
        untyped emptyTableResult3[1] = (-505.77);
        untyped emptyTableResult3[2] = 1.5;
        untyped emptyTableResult3[3] = (untyped -897.81 : Dynamic);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_sub012_001", emptyTableResult3);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_12", "sub_044", "npc_sub012_001");
        var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
        hideMessageWindow();
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var fObjSetPosAng:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObjSetPosAng("MAAIIKA", untyped -506.24, 0.82, untyped -897.63, 178.87);
        }
        else
        {
            var fObjSetPosAng2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObjSetPosAng2("MAAIIKA", untyped -505.99, 1.09, untyped -897.78, 143.9);
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-504.58), 1.29, (-897.89)]), lua.Table.create([4.55, 85.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.35, lua.Table.create([(-504.9), 1.32, (-897.91)]), lua.Table.create([4.55, 85.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.PlayEffectSequence(key);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub012_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub012_001", "rejoice_small");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FadeEffect(key);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_044_010_talk_13", "sub_044", "npc_sub012_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("MAAIIKA", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.1);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0044");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_FX_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
