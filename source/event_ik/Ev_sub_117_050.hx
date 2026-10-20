package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("C746923DD807E5632")
@:expose("C746923DD807E5632")
class Ev_sub_117_050 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = [];
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub117_001", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_genga", 1.53, 0.0, -2.1, -14.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 12.52, 0.01, 15.06, -130.77);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", 7.45, 0.0, 6.1, 154.92);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([6.4, 1.79, 5.35]), lua.Table.create([-10.69, -139.04, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 10.88, 0.01, 13.57, 0.5));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_sub117_001", 12.42);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_genga", 10.77, 0.0, 3.57, -92.02);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.41, 0.78, 7.25]), lua.Table.create([-24.55, -21.54, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("main_genga", 6.06, 0.0, 5.22, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(4.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([6.92, 0.33, 7.33]), lua.Table.create([-3.71, 22.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([6.92, 0.86, 7.33]), lua.Table.create([-3.71, 22.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("main_genga", 22.46));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 7.59, 0.03, 10.47, -167.27);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", 7.45, 0.0, 6.1, 9.92);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([9.48, 2.15, 10.85]), lua.Table.create([-16.91, 35.85, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, lua.Table.create([9.25, 1.99, 10.5]), lua.Table.create([-16.82, 35.77, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 7.48, 0.03, 9.04, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_255_talk_01", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "main_genga", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([7.72, 1.57, 7.07]), lua.Table.create([-22.19, 34.35, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var animationHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("main_genga", 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_255_talk_02", "sub_117");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_genga", 6.11, 0.0, 5.38, 22.46);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_sub117_001", 7.45, 0.0, 6.1, 9.92);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([8.41, 1.5, 10.02]), lua.Table.create([-8.1, 26.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("main_genga", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_117_255_talk_03", "sub_117", "npc_sub117_001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("main_genga", 6.0, 0.0, 5.57, 22.46);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([5.29, 0.33, 7.37]), lua.Table.create([18.06, -45.8, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub117_001", "main_genga", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("main_genga", "npc_sub117_001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_sub117_001", "rejoice_big_mc");
        main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
