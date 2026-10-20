package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C340AB11221AD74D4")
@:expose("C340AB11221AD74D4")
class Ev_m10_9400 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_MAS:Dynamic;

    @:abiSlot(10)
    public var CHR_GURI:Dynamic;

    @:abiSlot(11)
    public var CHR_GURIS:Dynamic;

    public function new()
    {
        untyped (this)[11] = "dyn_guris";
        untyped (this)[10] = "dyn_guri";
        untyped (this)[9] = "dyn_mas";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_secretary", "npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m10_9400 = this;
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MAS, lua.Table.create([0.0, 0.01, -2.4]), 180.0, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURI, lua.Table.create([0.0, 0.01, -2.4]), 180.0, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_GURIS, lua.Table.create([0.0, 0.01, -2.4]), 180.0, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MAS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURI, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_MAS, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURI, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURIS, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -0.27, 0.01, -5.98, -5.73);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MAS, -0.89, 0.01, -1.21, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURI, -0.31, 0.01, -6.61, 2.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_GURIS, -0.98, 0.0, -5.26, -0.97);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, -0.54, 0.01, -2.93, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-3.79, 3.56, -9.01]), lua.Table.create([-9.46, -156.43, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-3.79, 1.88, -9.01]), lua.Table.create([-9.46, -156.43, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(0, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 1);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.48, 1.57, -4.13]), lua.Table.create([1.01, -155.61, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-1.48, 1.28, -4.13]), lua.Table.create([1.01, -155.61, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURI, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_GURIS, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MAS, 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_01", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURI, -0.31, 0.01, -4.91, 0.5);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_GURIS, -0.98, 0.0, -4.03, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.75, 1.66, -0.13]), lua.Table.create([-10.86, -26.82, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-1.75, 1.66, -0.13]), lua.Table.create([-9.09, -21.1, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MAS, 32, null, 3.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_02", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_03", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.24, 1.52, -2.12]), lua.Table.create([-3.44, -23.07, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_GURIS, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURIS, 32, null, 4.68);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9400_talk_04", "main_10_01", this.CHR_GURIS, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_GURI, scenario.CHR_PLY, "head");
            scenario.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn(scenario.CHR_PLY, -42.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PLY, scenario.CHR_GURIS, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_05", "main_10_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_GURI, 32, null, 3.85);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_06", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_07", "main_10_01", this.CHR_GURI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.48, 1.28, -4.13]), lua.Table.create([1.01, -155.61, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9400_talk_08", "main_10_01", this.CHR_MAS, null, null, (function():Dynamic
        {
            scenario.TimeWait(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PLY, scenario.CHR_MAS, "head");
            return null;
        }));
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m10_9400_select_01", "msg_Ev_m10_9400_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_MAS, 32, null, 3.8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_09", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_10", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_11", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.75, 1.66, -0.13]), lua.Table.create([-10.86, -26.82, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9400_talk_12", "main_10_01", this.CHR_GURI, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario.CHR_GURI, 18);
            scenario.TimeWait(0.7);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PLY, scenario.CHR_GURI, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_GURIS, 28);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_13", "main_10_01", this.CHR_GURIS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-1.59, 1.28, -4.08]), lua.Table.create([1.01, -153.23, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9400_talk_14", "main_10_01", this.CHR_MAS, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(scenario.CHR_MAS, 32, null, 3.8);
            scenario.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PLY, scenario.CHR_MAS, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_15", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-0.82, 1.69, -2.62]), lua.Table.create([-2.63, -169.29, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([-0.76, 1.68, -2.31]), lua.Table.create([-2.63, -169.29, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MAS, 141.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MAS, lua.Table.create([1.01, 1.5, 6.47]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9400_talk_16", "main_10_01", this.CHR_MAS);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
    }
}
