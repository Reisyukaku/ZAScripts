package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5030012778449B41")
@:expose("C5030012778449B41")
class Ev_m04_0092 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 1.11, 0.03, -10.85, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", 2.13, 0.03, -10.85, 180.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.59, 1.47, -10.85]), lua.Table.create([-0.44, -1.35, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([1.59, 1.19, -10.85]), lua.Table.create([-0.44, -1.35, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        var moveHandle1 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 1.11, 0.03, -13.07, 0.5);
        var moveHandle2 = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main_rival_m", 2.13, 0.03, -13.05, 0.5);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0092_talk_01", "main_04_01", "npc_main_t1_i003_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle1);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveHandle2);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_t1_i003_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_002", 29);
        var turnHandle3 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", -16.35);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        var turnHandle4 = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main_rival_m", -1.03);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([1.93, 1.45, -14.27]), lua.Table.create([-4.19, 167.61, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(turnHandle4);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-3.66, 1.87, 5.76]), lua.Table.create([-2.45, 165.63, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_t1_i003_002"));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        var animationHandle5 = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_002", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0092_talk_02", "main_04_01", "npc_main_t1_i003_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var positionHandle6 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 0.9, 0.01, -8.85, 0.0);
        var positionHandle7 = main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -0.21, 0.01, -10.0, 41.95);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle6);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(positionHandle7);
    }
}
