package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C9692925FD6D55A21")
@:expose("C9692925FD6D55A21")
class Ev_m05_2202 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_MUTE_T1000");
        var choice1:Dynamic = "msg_Ev_m05_2200_select_04";
        var choice2:Dynamic = "msg_Ev_m05_2200_select_05";
        var choice3:Dynamic = "msg_Ev_m05_2200_select_06";
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([30.16, -0.25, -100.03]), -164.85, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([28.52, -0.25, -99.7]), 136.31, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_KUREHFI", lua.Table.create([34.46, 0.37, -92.13]), -91.21, 707, 0, 0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 30.05, -0.24, -103.19, 173.93);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.74, 1.29, -102.35]), lua.Table.create([-9.1, 26.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", false);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_04", "main_05_01", "dyn_main_detective");
        var menuIndex:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m05_2200_select_04", "msg_Ev_m05_2200_select_05", "msg_Ev_m05_2200_select_06", "msg_Ev_m05_2200_select_07"], 0, false, false);
        switch (menuIndex)
        {
            case 0:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH01");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.92, -103.58]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 0.9, -103.91]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_05", "main_05_01");
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                choice1 = "msg_Ev_m05_2200_select_05";
                choice2 = "msg_Ev_m05_2200_select_06";
                choice3 = "msg_Ev_m05_2200_select_07";
                menuIndex = 0;
            case 1:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH02");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.8, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 1.12, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_06", "main_05_01");
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                choice2 = "msg_Ev_m05_2200_select_06";
                choice3 = "msg_Ev_m05_2200_select_07";
                menuIndex = 0;
            case 2:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.6, 1.49, -104.16]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([29.73, 1.4, -103.93]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                var playerAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_07", "main_05_01");
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                choice3 = "msg_Ev_m05_2200_select_07";
                menuIndex = 0;
            case 3:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH03");
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.21, 0.4, -103.51]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.8, lua.Table.create([30.81, 0.4, -103.52]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_16", "main_05_01");
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                menuIndex = 0;
        }
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.74, 1.29, -102.35]), lua.Table.create([-9.1, 26.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_04", "main_05_01", "dyn_main_detective");
        var menuIndex2:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu([choice1, choice2, choice3], menuIndex, false, false);
        switch (menuIndex2)
        {
            case 0:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                switch (choice1)
                {
                    case "msg_Ev_m05_2200_select_07":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH03");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.21, 0.4, -103.51]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.8, lua.Table.create([30.81, 0.4, -103.52]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_16", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_06":
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.6, 1.49, -104.16]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([29.73, 1.4, -103.93]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        var playerAnimation2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_07", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation2);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                    case "msg_Ev_m05_2200_select_05":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH02");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.8, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 1.12, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_06", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_04":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH01");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.92, -103.58]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 0.9, -103.91]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_05", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                }
                choice1 = choice2;
                choice2 = choice3;
                menuIndex2 = 0;
            case 1:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                switch (choice2)
                {
                    case "msg_Ev_m05_2200_select_07":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH03");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.21, 0.4, -103.51]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.8, lua.Table.create([30.81, 0.4, -103.52]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_16", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_06":
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.6, 1.49, -104.16]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([29.73, 1.4, -103.93]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        var playerAnimation3 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_07", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation3);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                    case "msg_Ev_m05_2200_select_05":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH02");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.8, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 1.12, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_06", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_04":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH01");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.92, -103.58]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 0.9, -103.91]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_05", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                }
                choice2 = choice3;
                menuIndex2 = 0;
            case 2:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                switch (choice3)
                {
                    case "msg_Ev_m05_2200_select_07":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH03");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.21, 0.4, -103.51]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.8, lua.Table.create([30.81, 0.4, -103.52]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_16", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_06":
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.6, 1.49, -104.16]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([29.73, 1.4, -103.93]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        var playerAnimation4 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_07", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation4);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                    case "msg_Ev_m05_2200_select_05":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH02");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.8, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 1.12, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_06", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_04":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH01");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.92, -103.58]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 0.9, -103.91]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_05", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                }
                menuIndex2 = 0;
        }
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.74, 1.29, -102.35]), lua.Table.create([-9.1, 26.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_04", "main_05_01", "dyn_main_detective");
        var menuIndex3:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu([choice1, choice2], menuIndex2, false, false);
        switch (menuIndex3)
        {
            case 0:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                switch (choice1)
                {
                    case "msg_Ev_m05_2200_select_07":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH03");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.21, 0.4, -103.51]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.8, lua.Table.create([30.81, 0.4, -103.52]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_16", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_06":
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.6, 1.49, -104.16]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([29.73, 1.4, -103.93]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        var playerAnimation5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_07", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation5);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                    case "msg_Ev_m05_2200_select_05":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH02");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.8, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 1.12, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_06", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_04":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH01");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.92, -103.58]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 0.9, -103.91]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_05", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                }
                choice1 = choice2;
                menuIndex3 = 0;
            case 1:
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                switch (choice2)
                {
                    case "msg_Ev_m05_2200_select_07":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH03");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.21, 0.4, -103.51]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.8, lua.Table.create([30.81, 0.4, -103.52]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_16", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_06":
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.6, 1.49, -104.16]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([29.73, 1.4, -103.93]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        var playerAnimation6 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_07", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation6);
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                    case "msg_Ev_m05_2200_select_05":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH02");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.8, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 1.12, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_06", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                    case "msg_Ev_m05_2200_select_04":
                        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH01");
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.92, -103.58]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 0.9, -103.91]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_05", "main_05_01");
                        main.event.ik.command.IkScriptCommand.Wait_Camera();
                }
                menuIndex3 = 0;
        }
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.74, 1.29, -102.35]), lua.Table.create([-9.1, 26.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_04", "main_05_01", "dyn_main_detective");
        if (main.event.ik.command.IkScriptCommand.ShowContextMenu([choice1], menuIndex3, false, false) == 0)
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            switch (choice1)
            {
                case "msg_Ev_m05_2200_select_07":
                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH03");
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.21, 0.4, -103.51]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.8, lua.Table.create([30.81, 0.4, -103.52]), lua.Table.create([-19.39, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_16", "main_05_01");
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                case "msg_Ev_m05_2200_select_06":
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([29.6, 1.49, -104.16]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.8, lua.Table.create([29.73, 1.4, -103.93]), lua.Table.create([-19.37, -150.93, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    var playerAnimation7 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 28);
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_07", "main_05_01");
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerAnimation7);
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player");
                case "msg_Ev_m05_2200_select_05":
                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH02");
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.8, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 1.12, -103.62]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_06", "main_05_01");
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                case "msg_Ev_m05_2200_select_04":
                    ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2202_CAMERAWHOOSH01");
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.01, 0.92, -103.58]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
                    main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([30.01, 0.9, -103.91]), lua.Table.create([-2.75, 0.38, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
                    main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_Ev_m05_2200_talk_05", "main_05_01");
                    main.event.ik.command.IkScriptCommand.Wait_Camera();
            }
        }
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([30.74, 1.29, -102.35]), lua.Table.create([-9.1, 26.08, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_detective", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_main_ju_boss", true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", 5.49));
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_ju_boss", 29.27, -0.24, -100.96, 160.53);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_detective", 30.42, -0.25, -101.1, -168.22));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([28.88, 1.35, -104.8]), lua.Table.create([-9.22, -162.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_10", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_11", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m05_2200_select_01", "msg_Ev_m05_2200_select_02", "msg_Ev_m05_2200_select_03"], 0, false, false);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_12", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_KUREHFI", 32.87, 0.36, -91.39, 2.0));
        var turnToPlayer = main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_KUREHFI", "Player");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_CLOSE_UP_KEY");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([32.33, 0.7, -92.75]), lua.Table.create([0.0, -159.37, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnToPlayer);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_KUREHFI");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", -2.46);
        var bossTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", 5.53);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Pos("Player", lua.Table.create([32.87, 0.37, -91.39]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_ju_boss", "dyn_KUREHFI", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([28.88, 1.35, -104.8]), lua.Table.create([-9.22, -162.54, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new(cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_KUREHFI", 23.05, 0.36, -87.69, 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.5);
        var bossAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 2);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_13", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(bossAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("dyn_main_detective", "Player");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2200_talk_14", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_POS_RESET_T3000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
    }
}
