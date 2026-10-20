package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE952FD27D2A6794B")
@:expose("CE952FD27D2A6794B")
class Ev_sub_017_001 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_pokemon_sub017_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_M6DB_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -368.32, -5.19, -477.15, 157.58);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("tmp_npc_police_f_02", lua.Table.create([-369.53, -5.2, -475.7]), 149.06, "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub017_1", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub017_1", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("tmp_npc_police_f_02", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.03, -3.11, -475.84]), lua.Table.create([-31.53, -1.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-368.03, -3.26, -476.08]), lua.Table.create([-31.53, -1.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub017_1", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_001_talk_01", "sub_017");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_0_5S_LOW");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_001_talk_02", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_npc_police_f_02", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.4);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.27, -3.34, -474.25]), lua.Table.create([-14.36, -4.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_001_talk_03", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("Player", "serious");
        main.event.ik.command.IkScriptCommand.PlayQuestOrderUI("sub_0017");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.09, -3.03, -475.3]), lua.Table.create([-28.98, -23.05, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-368.98, -3.18, -475.55]), lua.Table.create([-28.98, -23.05, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_23", "sub_017", "tmp_npc_police_f_02");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_017_010_select_07", "msg_Ev_sub_017_010_select_08"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "serious", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.55, -4.04, -476.48]), lua.Table.create([14.04, 125.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_24", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_25", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.64, -2.71, -472.84]), lua.Table.create([-22.02, 13.7, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-368.13, -2.71, -472.97]), lua.Table.create([-22.02, 13.7, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_01", "sub_017", "tmp_npc_police_f_02");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_017_010_select_01", "msg_Ev_sub_017_010_select_02", "msg_Ev_sub_017_010_select_09"]), 0, false, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((((0 == selection)) || ((1 == selection)))))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "normal", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.85, -4.2, -476.65]), lua.Table.create([22.64, 145.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_police_f_02", 28);
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        if (((((0 == selection)) || ((1 == selection)))))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_03", "sub_017", "tmp_npc_police_f_02");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_04", "sub_017", "tmp_npc_police_f_02");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-368.98, -4.03, -476.46]), lua.Table.create([22.64, 145.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_05", "sub_017", "tmp_npc_police_f_02");
        var selection2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_017_010_select_03", "msg_Ev_sub_017_010_select_04", "msg_Ev_sub_017_010_select_10"]), 0, false, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.45, -3.22, -474.28]), lua.Table.create([-18.99, -11.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (((((0 == selection2)) || ((1 == selection2)))))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_07", "sub_017", "tmp_npc_police_f_02");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_08", "sub_017", "tmp_npc_police_f_02");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-369.39, -3.32, -474.56]), lua.Table.create([-18.99, -11.4, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("tmp_npc_police_f_02", 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_09", "sub_017", "tmp_npc_police_f_02");
        var selection3:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_017_010_select_05", "msg_Ev_sub_017_010_select_06"]), 0, false, false);
        untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == selection3)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 174);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "normal", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.55, -4.04, -476.48]), lua.Table.create([14.04, 125.03, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (((0 == selection3)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_11", "sub_017", "tmp_npc_police_f_02");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_12", "sub_017", "tmp_npc_police_f_02");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-369.09, -3.03, -475.3]), lua.Table.create([-28.98, -23.05, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-368.98, -3.18, -475.55]), lua.Table.create([-28.98, -23.05, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_13", "sub_017", "tmp_npc_police_f_02");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_017_010_select_11", "msg_Ev_sub_017_010_select_12"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 175);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_14", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub017_1", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_15", "sub_017");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub017_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_police_f_02", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_16", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_npc_police_f_02", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-365.7, -4.38, -473.68]), lua.Table.create([0.0, 50.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-366.27, -4.38, -474.14]), lua.Table.create([0.0, 50.55, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_17", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "serious", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_police_f_02", 491);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_010_talk_18", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.FadeOutType(7);
    }
}
