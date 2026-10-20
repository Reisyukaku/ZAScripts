package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CB0991C3ABDF20492")
@:expose("CB0991C3ABDF20492")
class Ev_sub_016_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub016_001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var getUnitParamInPartyByDevNoResult:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(511);
        var getUnitParamInPartyByDevNoResult2:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(513);
        var getUnitParamInPartyByDevNoResult3:Dynamic = main.event.ik.command.IkScriptCommand.GetUnitParamInPartyByDevNo(515);
        var f89B3EEBFResult:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(getUnitParamInPartyByDevNoResult);
        var getAppearanceState:Dynamic = untyped f89B3EEBFResult.fCFD269DB;
        var getAppearanceStateResult:Dynamic = getAppearanceState(f89B3EEBFResult);
        var f89B3EEBFResult2:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(getUnitParamInPartyByDevNoResult2);
        var getAppearanceState2:Dynamic = untyped f89B3EEBFResult2.fCFD269DB;
        var getAppearanceStateResult2:Dynamic = getAppearanceState2(f89B3EEBFResult2);
        var f89B3EEBFResult3:Dynamic = untyped cppbindings.CB66BF4D3.f89B3EEBF(getUnitParamInPartyByDevNoResult3);
        var getAppearanceState3:Dynamic = untyped f89B3EEBFResult3.fCFD269DB;
        var getAppearanceStateResult3:Dynamic = getAppearanceState3(f89B3EEBFResult3);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("YANAPPU", lua.Table.create([-690.31, 5.2, -739.69]), -63.64, getUnitParamInPartyByDevNoResult.f0DE6FCA9(), getUnitParamInPartyByDevNoResult.f9E86AD53(), getUnitParamInPartyByDevNoResult.fB31DF589(), "event_script", 0, true, getUnitParamInPartyByDevNoResult.fA284DF88(), getUnitParamInPartyByDevNoResult.f1E57BACE(), getAppearanceStateResult, false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("BAOPPU", lua.Table.create([-691.66, 5.22, -739.54]), -60.93, getUnitParamInPartyByDevNoResult2.f0DE6FCA9(), getUnitParamInPartyByDevNoResult2.f9E86AD53(), getUnitParamInPartyByDevNoResult2.fB31DF589(), "event_script", 0, true, getUnitParamInPartyByDevNoResult2.fA284DF88(), getUnitParamInPartyByDevNoResult2.f1E57BACE(), getAppearanceStateResult2, false);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("HIYAPPU", lua.Table.create([-689.98, 5.2, -738.31]), -77.31, getUnitParamInPartyByDevNoResult3.f0DE6FCA9(), getUnitParamInPartyByDevNoResult3.f9E86AD53(), getUnitParamInPartyByDevNoResult3.fB31DF589(), "event_script", 0, true, getUnitParamInPartyByDevNoResult3.fA284DF88(), getUnitParamInPartyByDevNoResult3.f1E57BACE(), getAppearanceStateResult3, false);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -691.13, 5.23, -738.76, -47.69);
        if (((lua.abi.Host.truthy(getAppearanceStateResult) || lua.abi.Host.truthy(getAppearanceStateResult2)) || lua.abi.Host.truthy(getAppearanceStateResult3)))
        {
            var fObj_Set_Pos_Ang:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang("Player", untyped -691.07, 5.23, untyped -738.66, untyped -47.69);
        }
        else
        {
        };
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub016_001", -692.95, 5.36, -737.49, 130.34);
        if (lua.abi.Host.truthy(getAppearanceStateResult2))
        {
            var fObj_Set_Pos_Ang2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang2("BAOPPU", untyped -691.67, 5.19, untyped -739.73, untyped -6.52);
        }
        else
        {
        };
        if (lua.abi.Host.truthy(getAppearanceStateResult3))
        {
            var fObj_Set_Pos_Ang3:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang3("HIYAPPU", untyped -690.02, 5.2, untyped -738.1, untyped -92.74);
        }
        else
        {
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("YANAPPU", "npc_sub016_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("BAOPPU", "npc_sub016_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("HIYAPPU", "npc_sub016_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub016_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub016_001", "BAOPPU", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-694.21, 7.11, -738.44]), lua.Table.create([-24.59, -82.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.7, lua.Table.create([-694.89, 7.43, -737.97]), lua.Table.create([-24.59, -82.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("npc_sub016_001", 32, null, 3.72);
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_016_010_talk_01", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub016_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_010_talk_03", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("YANAPPU", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BAOPPU", 17);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HIYAPPU", 17);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub016_001", "BAOPPU", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub016_001", "BAOPPU");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_MUTE_T0");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -699.7, 5.22, -761.13, -52.3);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub016_001", -702.22, 5.23, -760.15, 104.79);
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            var fObj_Set_Pos_Ang4:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang4("YANAPPU", untyped -703.47, 5.2, untyped -759.93, 97.92);
        }
        else
        {
            var fObj_Set_Pos_Ang5:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang5("YANAPPU", untyped -703.27, 5.2, untyped -760.18, 97.92);
        };
        if (lua.abi.Host.truthy(getAppearanceStateResult2))
        {
            var fObj_Set_Pos_Ang6:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang6("BAOPPU", untyped -702.39, 5.2, untyped -758.82, 175.07);
        }
        else
        {
            var fObj_Set_Pos_Ang7:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang7("BAOPPU", untyped -702.36, 5.2, untyped -759.15, 171.11);
        };
        if (lua.abi.Host.truthy(getAppearanceStateResult3))
        {
            var fObj_Set_Pos_Ang8:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang8("HIYAPPU", untyped -702.73, 5.2, untyped -761.43, 35.86);
        }
        else
        {
            var fObj_Set_Pos_Ang9:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang9("HIYAPPU", untyped -702.27, 5.2, untyped -761.44, 32.8);
        };
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub016_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("YANAPPU", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("BAOPPU", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("HIYAPPU", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("YANAPPU", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("BAOPPU", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HIYAPPU", false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.CreateCafeDrink("ob0011_01_normal_02", null, lua.Table.create([-700.26, 5.91, -760.68]), 85.33);
        main.event.ik.command.IkScriptCommand.WaitCreateCafeObjAll();
        main.event.ik.command.IkScriptCommand.VisibleCafeObjAll();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-701.49, 7.14, -761.15]), lua.Table.create([-0.25, 143.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-701.49, 6.58, -761.15]), lua.Table.create([-0.25, 143.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub016_001", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_010_talk_05", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-700.88, 6.41, -760.68]), lua.Table.create([-39.03, -83.13, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-700.78, 6.33, -760.69]), lua.Table.create([-39.03, -83.13, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_010_talk_06", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("YANAPPU", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("BAOPPU", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("HIYAPPU", true);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-699.48, 6.99, -763.79]), lua.Table.create([-17.17, 157.3, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "smile");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_010_talk_07", "sub_016");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-700.87, 5.98, -760.92]), lua.Table.create([10.28, -91.57, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([-700.35, 5.53, -760.72]));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T1000");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_09");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.TerminateCafeObjAll();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("Player", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub016_001", "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -690.82, 5.23, -738.97, -47.69);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub016_001", -692.95, 5.36, -737.49, 130.34);
        if (lua.abi.Host.truthy(getAppearanceStateResult3))
        {
            var fObj_Set_Pos_Ang10:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang10("HIYAPPU", untyped -692.02, 5.34, untyped -736.69, 161.3);
        }
        else
        {
            var fObj_Set_Pos_Ang11:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang11("HIYAPPU", untyped -692.05, 5.37, untyped -737.05, 138.8);
        };
        if (lua.abi.Host.truthy(getAppearanceStateResult2))
        {
            var fObj_Set_Pos_Ang12:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang12("BAOPPU", untyped -693.38, 5.34, untyped -738.32, 107.13);
        }
        else
        {
            var fObj_Set_Pos_Ang13:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang13("BAOPPU", untyped -693.1, 5.37, untyped -738.44, 120.94);
        };
        if (lua.abi.Host.truthy(getAppearanceStateResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("YANAPPU", -692.46, 5.34, -736.68, 156.62);
            var fObj_Set_Pos_Ang14:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang14("HIYAPPU", untyped -691.75, 5.34, untyped -736.06, untyped -145.29);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("YANAPPU", -692.11, 5.37, -738.1, 117.31);
            var fObj_Set_Pos_Ang15:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObj_Set_Pos_Ang15("HIYAPPU", untyped -692.02, 5.34, untyped -736.69, 161.3);
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(5.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-689.9, 6.59, -740.89]), lua.Table.create([-7.25, 162.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-690.76, 6.59, -741.16]), lua.Table.create([-7.25, 162.26, 0.0]), 40.0, 0, cameraEase);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T1000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub016_001", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_010_talk_08", "sub_016", "npc_sub016_001");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "surprise_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_010_talk_09", "sub_016", "npc_sub016_001");
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (lua.abi.Host.truthy(getAppearanceStateResult2))
        {
            var sceneVector:Dynamic = lua.Table.create([-691.57, 5.51, -739.91]);
            var sceneVector2:Dynamic = lua.Table.create([12.2, 152.45, 0.0]);
            var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector, sceneVector2, 40.0, 0, cameraEase2);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            if (lua.abi.Host.truthy(getAppearanceStateResult))
            {
                var sceneVector3:Dynamic = lua.Table.create([-691.56, 5.72, -739.73]);
                var sceneVector4:Dynamic = lua.Table.create([9.61, 152.59, 0.0]);
                var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase3);
                untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            }
            else
            {
                var sceneVector5:Dynamic = lua.Table.create([-691.41, 5.51, -739.82]);
                var sceneVector6:Dynamic = lua.Table.create([12.2, 152.45, 0.0]);
                var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase4);
                untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            };
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub016_001", "normal");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub016_001", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_016_010_talk_10", "sub_016", "npc_sub016_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("YANAPPU", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("BAOPPU", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("HIYAPPU", 20);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0016");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately("Player", 1));
    }
}
