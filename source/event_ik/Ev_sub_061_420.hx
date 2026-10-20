package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CCA324A0A9409679F")
@:expose("CCA324A0A9409679F")
class Ev_sub_061_420 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_A02_z01_02_0001", "npc_R01_028"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        if (((true == cppbindings.C5090F7B8.fB628218B())))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_A02_z01_02_0033", -480.36, 1.49, -749.07, -76.87);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_A02_z01_02_33", -480.12, 1.49, -748.05, -76.87);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_A02_z01_02_0032", -480.32, 1.5, -754.91, -83.46);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_A02_z01_02_32", -480.34, 1.5, -756.25, -13.46);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_A02_z01_02_0034", -481.11, 1.5, -732.59, -10.18);
            var fObjSetPosAng:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang;
            fObjSetPosAng("npc_pokemon_A02_z01_02_34", untyped -482.38, 1.5, untyped -730.88, 149.82);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub061_005", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_sub061_5", false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("DYN_TORIMA", lua.Table.create([-499.32, 0.0, -730.41]), 142.73, "npc_sleeves_01");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("DYN_CHAMPION", lua.Table.create([-496.09, 0.0, -734.67]), -88.31, "npc_veteran_m_03");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DYN_CHAMPION_TORIMIAN", lua.Table.create([-495.65, 0.01, -735.53]), -69.36, 676, 0, 0, "event_script", 0, true, true);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -498.37, 0.01, -734.81, 100.76);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "DYN_CHAMPION", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DYN_CHAMPION", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DYN_CHAMPION_TORIMIAN", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_CHAMPION", 2);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-500.46, 2.09, -733.05]), lua.Table.create([-14.84, -58.5, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-499.47, 1.78, -733.65]), lua.Table.create([-14.84, -58.5, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("DYN_CHAMPION", 33, null, 3.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_01", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.15, 1.33, -733.88]), lua.Table.create([-2.44, -62.62, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_CHAMPION", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_CHAMPION", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_02", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_CHAMPION", "normal");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DYN_CHAMPION_TORIMIAN", "DYN_TORIMA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DYN_CHAMPION", "DYN_TORIMA", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "DYN_TORIMA", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.75, 1.48, -731.66]), lua.Table.create([-0.34, 157.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-498.88, 1.48, -731.34]), lua.Table.create([-0.34, 157.79, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_TORIMA", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_TORIMA", "rejoice_small_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_03", "sub_061", "DYN_TORIMA");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_TORIMA", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("DYN_TORIMA", -498.56, 0.0, -730.86, 0.5));
        main.event.ik.command.IkScriptCommand.Suspend();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("DYN_CHAMPION_TORIMIAN", -495.67, 0.01, -735.53, -32.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("DYN_CHAMPION", -495.84, 0.0, -734.32, -46.36);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -498.78, 0.02, -734.61, 72.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("DYN_TORIMA", -497.02, 0.01, -732.93, 135.17);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("DYN_TORIMA", -496.63, 0.01, -733.48, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.06, 1.38, -733.27]), lua.Table.create([-3.69, -73.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-498.15, 1.38, -733.57]), lua.Table.create([-3.69, -73.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("DYN_TORIMA", 32, null, 5.85);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_TORIMA", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_04", "sub_061", "DYN_TORIMA");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationOneShotAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("DYN_CHAMPION", 33, null, 3.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_CHAMPION", "sad");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_06", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_07", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_CHAMPION", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_CHAMPION", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_08", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DYN_CHAMPION", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DYN_TORIMA", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-500.1, 1.29, -733.64]), lua.Table.create([-3.69, -73.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("DYN_CHAMPION_TORIMIAN", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("DYN_TORIMA", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_TORIMA", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_TORIMA", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_11", "sub_061", "DYN_TORIMA");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var setAnimationOneShotAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("DYN_CHAMPION", 33, null, 3.7);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_17", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_18", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction2);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-496.86, 1.54, -733.83]), lua.Table.create([3.74, -62.15, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationOneShotAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("DYN_CHAMPION", 33, null, 3.7);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_CHAMPION", "normal");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_19", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action_OneShot(setAnimationOneShotAction3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_CHAMPION", 174);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("DYN_CHAMPION", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_15", "sub_061", "DYN_CHAMPION");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-498.15, 1.38, -733.57]), lua.Table.create([-3.69, -73.69, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_TORIMA", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_061_420_talk_16", "sub_061", "DYN_TORIMA");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-500.36, 2.49, -732.93]), lua.Table.create([-24.72, -62.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([-501.89, 3.29, -732.15]), lua.Table.create([-24.72, -62.89, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DYN_CHAMPION_TORIMIAN", 20);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("DYN_TORIMA", 32, null, 5.85);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("DYN_CHAMPION", 33, null, 3.7);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0061");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
