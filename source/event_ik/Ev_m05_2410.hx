package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC9420C5FF32DA8F4")
@:expose("CC9420C5FF32DA8F4")
class Ev_m05_2410 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_detective", "npc_main_ju_boss"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_ON_HALF");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_detective", lua.Table.create([20.85, 3.01, (-269.22)]), (-24.34), "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_ju_boss", lua.Table.create([21.69, 3.01, (-271.6)]), 139.86, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_detective", false);
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("dyn_main_ju_boss", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 28.55, 3.02, (-270.55), (-91.04));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_detective", lua.Table.create([15.1, 5.95, (-260.56)]));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_ju_boss", lua.Table.create([14.03, 5.95, (-278.23)]));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([28.3, 6.41, (-273.37)]), lua.Table.create([(-17.01), 111.65, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([30.64, 6.45, (-273.11)]), lua.Table.create([(-17.01), 111.65, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 24.33, 3.02, (-270.27), 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("dyn_main_detective", lua.Table.create([14.03, 5.95, (-278.23)]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2410_talk_01", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var animationHandle1 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_ju_boss", 28);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([22.93, 5.05, (-272.42)]), lua.Table.create([(-11.41), 134.33, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2410_talk_02", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([20.91, 4.42, (-268.09)]), lua.Table.create([(-3.37), 1.98, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([21.12, 4.42, (-268.1)]), lua.Table.create([(-3.37), 1.98, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_detective", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2410_talk_03", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("dyn_main_ju_boss"));
        var turnHandle2 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", (-21.64));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle2);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([21.81, 4.89, (-270.5)]), lua.Table.create([(-1.38), 5.58, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2410_talk_04", "main_05_01", "dyn_main_ju_boss");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([21.29, 4.27, (-267.73)]), lua.Table.create([(-1.38), 5.58, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", 157.95);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "dyn_main_ju_boss", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2410_talk_05", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([25.94, 3.97, (-272.06)]), lua.Table.create([1.92, 115.84, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([26.41, 3.85, (-272.29)]), lua.Table.create([1.92, 115.84, 0.02]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_detective", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_detective", 103.2);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_ju_boss", 66.39);
        main.event.ik.command.IkScriptCommand.WordSet_Name_Player(1);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2410_talk_06", "main_05_01", "dyn_main_detective");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("EV_CMN_ZONE_WILD_VS_BLOCK_OFF");
    }
}
