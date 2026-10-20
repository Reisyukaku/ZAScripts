package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C6A8D6A0DA437FDDD")
@:expose("C6A8D6A0DA437FDDD")
class Ev_sub_104_020 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub104_001", "npc_pokemon_sub104_1", "npc_pokemon_sub104_2", "npc_pokemon_sub104_3", "npc_pokemon_sub104_4", "npc_pokemon_sub104_5", "npc_pokemon_sub104_6", "npc_pokemon_sub104_7", "npc_pokemon_sub104_8", "npc_pokemon_sub104_9", "npc_pokemon_sub104_10", "npc_pokemon_sub104_11", "npc_pokemon_sub104_12"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub104_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_sub104_002", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_sub104_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var eventMode:Dynamic = eventParameters.f73EE8FEC();
        if ((((("0" == eventMode)) || (("1" == eventMode)))))
        {
            main.event.ik.command.IkScriptCommand.Create_NpcPokemon("KOHUURAI", lua.Table.create([-15.84, 0.01, -23.72]), 126.09, 665, 0, 0, "event_script", 0, true, false, 0);
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-11.7, 3.81, -28.62]), lua.Table.create([-15.3, 125.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-11.7, 1.96, -28.62]), lua.Table.create([-15.3, 125.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-13.23, 1.26, -26.72]), lua.Table.create([2.36, 110.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_001", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_01", "sub_104", "npc_sub104_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_02", "sub_104", "npc_sub104_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-14.18, 0.81, -24.95]), lua.Table.create([-24.67, 119.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-14.54, 0.81, -25.59]), lua.Table.create([-24.67, 119.68, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_03", "sub_104", "npc_sub104_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-14.11, 0.91, -26.66]), lua.Table.create([-28.49, 57.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([-14.46, 0.91, -26.1]), lua.Table.create([-28.49, 57.32, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_04", "sub_104", "npc_sub104_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-14.97, 1.49, -25.51]), lua.Table.create([8.16, 107.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-15.13, 1.49, -26.04]), lua.Table.create([8.16, 107.19, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_001", "npc_pokemon_sub104_11", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_11", "sub_104", "npc_sub104_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_11", 17);
            main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-13.75, 2.06, -27.56]), lua.Table.create([-15.3, 125.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.2, lua.Table.create([-11.7, 1.88, -28.62]), lua.Table.create([-15.3, 125.64, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub104_001", 21);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_104_030_talk_05", "sub_104", "npc_sub104_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-14.86, 1.64, -27.11]), lua.Table.create([-2.62, 121.98, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_001", "npc_sub104_002", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_002", "npc_sub104_001", "head");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_06", "sub_104", "npc_sub104_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_07", "sub_104", "npc_sub104_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraVector:Dynamic = lua.Table.create([-12.06, 1.45, -27.97]);
            var cameraVector2:Dynamic = lua.Table.create([-8.48, 119.9, 0.0]);
            var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_001", "Player", "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub104_002", "Player", "head");
            var eventMode2:Dynamic = untyped this.m_eventScriptParam.f73EE8FEC();
            if ((("0" == eventMode2)))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_08", "sub_104", "npc_sub104_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            }
            else
            {
                var eventParameters3:Dynamic = this.m_eventScriptParam;
                if ((("1" == eventParameters3.f73EE8FEC())))
                {
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_10", "sub_104", "npc_sub104_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_1", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_2", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_3", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_4", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_5", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_6", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_7", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_8", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_9", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_10", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_11", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_12", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("KOHUURAI", 20);
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB104_PV_0665_00");
                    main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0104");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                };
            };
        }
        else
        {
            if ((("3" == eventMode)))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_08", "sub_104", "npc_sub104_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            }
            else
            {
                if ((("4" == eventMode)))
                {
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_MUTE_T0");
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_104_030_talk_10", "sub_104", "npc_sub104_001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_1", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_2", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_3", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_4", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_5", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_6", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_7", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_8", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_9", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_10", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_11", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_12", 20);
                    main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_pokemon_sub104_13", 20);
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_SUB104_PV_0665_00");
                    main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("sub_0104");
                    main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PV_RESET_T1000");
                    untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
                    untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                    main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.3);
                    main.event.ik.command.IkScriptCommand.Wait_Fade();
                };
            };
        };
    }
}
