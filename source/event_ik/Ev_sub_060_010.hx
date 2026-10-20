package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C316B183AB1C1E427")
@:expose("C316B183AB1C1E427")
class Ev_sub_060_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub060_001", "npc_pokemon_sub060_2"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub060_001", -10.48, 3.02, -89.44, 81.57);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_sub060_2", -11.24, 3.02, -90.64, 78.17);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -8.42, 3.02, -89.75, -79.22);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var workValue:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_QUEST_60");
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("npc_sub060_001", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Ang_To_Obj("Player", "npc_sub060_001");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub060_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub060_001", "head");
        var cameraVector:Dynamic = lua.Table.create([-7.08, 4.41, -91.57]);
        var cameraVector2:Dynamic = lua.Table.create([-5.39, 129.22, 0.0]);
        var cameraEase:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase);
        untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (((10 == workValue)))
        {
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "smile");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_010_talk_01", "sub_060", "npc_sub060_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.22, 6.17, -94.08]), lua.Table.create([-12.88, 126.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(5.0, lua.Table.create([-2.92, 6.17, -97.78]), lua.Table.create([-12.88, 126.19, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_010_talk_02", "sub_060", "npc_sub060_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-7.08, 4.41, -91.57]), lua.Table.create([-5.39, 129.22, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "confident");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_010_talk_03", "sub_060", "npc_sub060_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraMoveAngle:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector3:Dynamic = lua.Table.create([-8.53, 3.51, -91.27]);
            var cameraVector4:Dynamic = lua.Table.create([6.74, 121.53, -0.0]);
            var cameraEase2:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle(0.0, cameraVector3, cameraVector4, 40.0, 0, cameraEase2, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
        }
        else
        {
            var cameraMoveAngle2:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector5:Dynamic = lua.Table.create([-8.53, 3.51, -91.27]);
            var cameraVector6:Dynamic = lua.Table.create([6.74, 121.53, -0.0]);
            var cameraEase3:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle2(0.0, cameraVector5, cameraVector6, 40.0, 0, cameraEase3, null, null, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "confident");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_020_talk_01", "sub_060", "npc_sub060_001");
        var menuLabels:Dynamic = (["msg_Ev_sub_060_020_select_01", "msg_Ev_sub_060_020_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        if (((0 == (selection : Dynamic))))
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraMoveAngle3:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
            var cameraVector7:Dynamic = lua.Table.create([-7.08, 4.41, -91.57]);
            var cameraVector8:Dynamic = lua.Table.create([-5.39, 129.22, 0.0]);
            var cameraEase4:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            cameraMoveAngle3(0.0, cameraVector7, cameraVector8, 40.0, 0, cameraEase4, null, null, null);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "smile");
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 174);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_sub_060_020_talk_03", "sub_060", "npc_sub060_001");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_01");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
        }
        else
        {
            if (((1 == (selection : Dynamic))))
            {
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var cameraMoveAngle4:Dynamic = main.event.ik.command.IkScriptCommand.Camera_Move_Angle;
                var cameraVector9:Dynamic = lua.Table.create([-7.08, 4.41, -91.57]);
                var cameraVector10:Dynamic = lua.Table.create([-5.39, 129.22, 0.0]);
                var cameraEase5:Dynamic = main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
                cameraMoveAngle4(0.0, cameraVector9, cameraVector10, 40.0, 0, cameraEase5, null, null, null);
                main.event.ik.command.IkScriptCommand.Wait_Camera();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub060_001", "sad");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_sub060_001", 175);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_060_020_talk_02", "sub_060", "npc_sub060_001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        untyped this.m_resultParam = selection;
    }
}
