package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CE9568227D2A99121")
@:expose("CE9568227D2A99121")
class Ev_sub_017_010 extends BaseSubQuest
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
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -367.87, -5.18, -470.06, -107.52);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("tmp_npc_police_f_02", lua.Table.create([-370.11, -5.19, -470.55]), 74.84, "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("tmp_npc_hope_m_01", lua.Table.create([-371.38, -5.2, -476.24]), 111.17, "npc_hope_m_00");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "serious", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-366.26, -3.48, -468.2]), lua.Table.create([-0.34, 50.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-366.26, -4.1, -468.2]), lua.Table.create([-0.34, 50.59, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("tmp_npc_hope_m_01", false);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped eventParameters.f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if ((("0" == getEventModeResult)))
        {
            var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            showMessage(0, "msg_Ev_sub_017_020_talk_01", "sub_017", "tmp_npc_police_f_02");
        }
        else
        {
            var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
            showMessage2(0, "msg_Ev_sub_017_020_talk_02", "sub_017", "tmp_npc_police_f_02");
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub017_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("tmp_npc_police_f_02", "npc_pokemon_sub017_1", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-367.68, -3.91, -474.55]), lua.Table.create([-14.12, 13.43, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("tmp_npc_hope_m_01", true);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([-367.37, -3.91, -474.62]), lua.Table.create([-14.12, 13.43, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("tmp_npc_hope_m_01", -368.3, -5.2, -477.44, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub017_1", "tmp_npc_hope_m_01", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot("tmp_npc_hope_m_01", 32, null, 3.75);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_UNLOCK_GAME_OVER");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_03", "sub_017", "tmp_npc_hope_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub017_1", 20);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_04", "sub_017");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -368.36, -5.19, -470.15, 167.46);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_npc_police_f_02", -369.75, -5.19, -470.63, 148.56);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-367.79, -3.54, -468.44]), lua.Table.create([-10.6, 17.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_hope_m_01", 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_05", "sub_017", "tmp_npc_hope_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-367.89, -3.69, -469.21]), lua.Table.create([-7.43, 38.84, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "smile_bitter", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_npc_police_f_02", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("tmp_npc_police_f_02", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("tmp_npc_police_f_02", "tmp_npc_hope_m_01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_npc_hope_m_01", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("tmp_npc_hope_m_01", -367.46, -5.2, -476.01, -138.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub017_1", -368.12, -5.2, -476.5, 54.87);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-367.79, -3.54, -468.44]), lua.Table.create([-10.6, 17.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_06", "sub_017", "tmp_npc_hope_m_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub017_1", 17);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_sub017_1", -364.43, -5.2, -475.35, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("tmp_npc_hope_m_01", -364.43, -5.2, -475.35, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(4.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_police_f_02", 2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "tmp_npc_police_f_02", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("tmp_npc_police_f_02", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-367.52, -3.88, -469.34]), lua.Table.create([-0.03, 45.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-367.66, -3.88, -469.2]), lua.Table.create([-0.03, 45.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_police_f_02", 175);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "smile_bitter", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_07", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_08", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_police_f_02", 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "normal", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-368.77, -3.8, -470.09]), lua.Table.create([8.17, 58.99, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("tmp_npc_police_f_02", 174);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_09", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("tmp_npc_police_f_02", "Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.35);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -368.36, -5.19, -470.15, -115.65);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-366.23, -3.52, -467.83]), lua.Table.create([-9.77, 48.26, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "rejoice_big_mc", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_017_020_talk_10", "sub_017", "tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0017");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("tmp_npc_police_f_02", "normal", "npc_police_f_02");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("tmp_npc_police_f_02");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("tmp_npc_police_f_02", -376.04, -5.19, -472.95, -102.32, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.8);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
