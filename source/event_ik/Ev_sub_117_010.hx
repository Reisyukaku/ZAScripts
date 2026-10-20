package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C74771BDD808A85F6")
@:expose("C74771BDD808A85F6")
class Ev_sub_117_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity("npc_main_ju_leader", false);
        var fB628218BResult:Dynamic = cppbindings.C5090F7B8.fB628218B();
        var getFlagValueResult:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sub_117_010");
        if ((true == fB628218BResult))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -687.79, 6.13, -517.32, 162.45);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -687.22, 6.15, -519.3, -14.29);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ju_leader", "head");
            var fObj_LookAt_Obj:Dynamic = main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
            fObj_LookAt_Obj("npc_main_ju_leader", "Player", "head");
            if ((false == getFlagValueResult))
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.32, 8.08, -516.18]), lua.Table.create([-17.24, 11.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var camera_Move_Angle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var sceneVector:Dynamic = lua.Table.create([-687.32, 7.77, -516.18]);
                var sceneVector2:Dynamic = lua.Table.create([-17.24, 11.74, 0.0]);
                var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                camera_Move_Angle(2.0, sceneVector, sceneVector2, 40.0, 0, cameraEase, null, null, null, null, null);
            }
            else
            {
                var camera_Move_Angle2:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var sceneVector3:Dynamic = lua.Table.create([-687.32, 7.77, -516.18]);
                var sceneVector4:Dynamic = lua.Table.create([-17.24, 11.74, 0.0]);
                var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                camera_Move_Angle2(0.0, sceneVector3, sceneVector4, 40.0, 0, cameraEase2, null, null, null, null, null);
            };
        }
        else
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -686.08, 6.13, -512.55, -148.41);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_ju_leader", -686.58, 6.13, -513.68, 23.09);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_ju_leader", "head");
            var fObj_LookAt_Obj2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
            fObj_LookAt_Obj2("npc_main_ju_leader", "Player", "head");
            if ((false == getFlagValueResult))
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-685.02, 7.98, -512.15]), lua.Table.create([-12.33, 57.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var camera_Move_Angle3:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var sceneVector5:Dynamic = lua.Table.create([-685.02, 7.68, -512.15]);
                var sceneVector6:Dynamic = lua.Table.create([-12.33, 57.58, -0.0]);
                var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                camera_Move_Angle3(2.0, sceneVector5, sceneVector6, 40.0, 0, cameraEase3, null, null, null, null, null);
            }
            else
            {
                var camera_Move_Angle4:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var sceneVector7:Dynamic = lua.Table.create([-685.02, 7.68, -512.15]);
                var sceneVector8:Dynamic = lua.Table.create([-12.33, 57.58, 0.0]);
                var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                camera_Move_Angle4(0.0, sceneVector7, sceneVector8, 40.0, 0, cameraEase4, null, null, null, null, null);
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        if ((false == getFlagValueResult))
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_010_talk_01", "sub_117", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_010_talk_02", "sub_117", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        else
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_010_talk_03", "sub_117", "npc_main_ju_leader");
        var menuLabels:Dynamic = (["msg_Ev_sub_117_010_select_01", "msg_Ev_sub_117_010_select_02"]);
        var menuSelection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        if ((0 == menuSelection))
        {
            if ((true == fB628218BResult))
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.09, 7.48, -517.96]), lua.Table.create([-17.24, 11.74, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var camera_Move_Angle5:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var sceneVector9:Dynamic = lua.Table.create([-687.12, 7.43, -518.12]);
                var sceneVector10:Dynamic = lua.Table.create([-17.24, 11.74, 0.0]);
                var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                camera_Move_Angle5(1.0, sceneVector9, sceneVector10, 40.0, 0, cameraEase5, null, null, null);
            }
            else
            {
                main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-685.72, 7.59, -513.16]), lua.Table.create([-12.33, 57.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                var camera_Move_Angle6:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var sceneVector11:Dynamic = lua.Table.create([-685.84, 7.56, -513.23]);
                var sceneVector12:Dynamic = lua.Table.create([-12.33, 57.58, 0.0]);
                var cameraEase6:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                camera_Move_Angle6(1.0, sceneVector11, sceneVector12, 40.0, 0, cameraEase6, null, null, null);
            };
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_010_talk_05", "sub_117", "npc_main_ju_leader");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            if ((1 == menuSelection))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_010_talk_04", "sub_117", "npc_main_ju_leader");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.25);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
            }
            else
            {
            };
        };
        untyped this.m_resultParam = menuSelection;
    }
}
