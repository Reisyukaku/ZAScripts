package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C2B516FAFB328535F")
@:expose("C2B516FAFB328535F")
class Ev_sub_111_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub111_001", "npc_pokemon_sub111_1"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var flagValue:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_111_020_boxfull");
        var checkPossibleAddPpokemonResult:Dynamic = main.event.ik.command.IkScriptCommand.CheckPossibleAddPpokemon();
        if (((false == flagValue)))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -594.9, 0.01, -325.22, -93.95);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub111_1", -597.55, 0.01, -325.41, 85.9);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub111_001", -597.36, 0.0, -326.96, 33.62);
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub111_001", false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub111_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub111_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub111_001", "npc_pokemon_sub111_1", "head");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 203);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-593.52, 2.24, -326.03]), lua.Table.create([-14.58, 109.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.0, lua.Table.create([-593.52, 1.44, -326.03]), lua.Table.create([-14.58, 109.6, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_111_020_sys_01", "sub_111");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_sub111_001", true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-596.26, 1.35, -326.1]), lua.Table.create([1.42, 52.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-596.67, 1.44, -326.42]), lua.Table.create([1.42, 52.53, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int))));
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_111_020_talk_02", "sub_111", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub111_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub111_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub111_1", "npc_sub111_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub111_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_pokemon_sub111_1", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-592.83, 1.59, -325.88]), lua.Table.create([-13.07, 91.06, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_020_talk_03", "sub_111", "npc_sub111_001");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_111_020_select_01", "msg_Ev_sub_111_020_select_02"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub111_001", "npc_pokemon_sub111_1", "head");
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector:Dynamic = lua.Table.create([-596.06, 0.14, -324.04]);
            var cameraVector2:Dynamic = lua.Table.create([9.24, 36.77, -0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(31, Int)));
            cameraMoveAngle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_020_talk_04", "sub_111", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub111_1", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_020_talk_05", "sub_111");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_sub111_001", "Player");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_pokemon_sub111_1", "Player");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub111_001", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub111_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub111_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
            main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_sub111_001");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_020_talk_09", "sub_111", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        var eventResult:Dynamic = 0;
        if (((false == checkPossibleAddPpokemonResult)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_111_020_talk_08", "sub_111");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            if (((false == flagValue)))
            {
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            };
            eventResult = (1 : Dynamic);
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_pokemon_sub111_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub111_001", "npc_pokemon_sub111_1", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_sub111_1", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -594.9, 0.01, -325.22, -93.95);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub111_001", -597.36, 0.0, -326.96, 33.62);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub111_1", -595.37, 0.01, -324.42, -153.36);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-597.45, 2.4, -328.58]), lua.Table.create([-16.96, -161.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-597.45, 1.81, -328.58]), lua.Table.create([-16.96, -161.44, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_020_talk_06", "sub_111", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-595.58, 0.65, -325.35]), lua.Table.create([-22.17, -166.17, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub111_1", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_020_talk_05", "sub_111");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_POKEGET");
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_sub_111_020_sys_02", "sub_111");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(1.2);
            var cameraMoveAngle2:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector3:Dynamic = lua.Table.create([-596.66, 1.44, -326.44]);
            var cameraVector4:Dynamic = lua.Table.create([1.42, 55.71, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle2(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_111_020_talk_07", "sub_111", "npc_sub111_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0111");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            eventResult = (0 : Dynamic);
        };
        untyped this.m_resultParam = eventResult;
    }
}
