package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDD9C9024B208C9D8")
@:expose("CDD9C9024B208C9D8")
class Ev_m06_2910 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main06_0001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", 13.99, 0.01, 16.18, 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main06_0001", 12.69, 0.0, 13.71, (-153.14));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main06_0001", "sad");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("npc_main06_0001", lua.Table.create([0.55, 1.6, 1.57]));
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_GENGAA_1", lua.Table.create([(-0.46), 0.01, 4.68]), 94.66, 94, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_GENGAA_2", lua.Table.create([2.35, 0.01, 4.4]), (-86.95), 94, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("dyn_GOOSU", lua.Table.create([2.55, 0.02, 2.18]), 16.98, 92, 0, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_TRANSITION_OUT");
        var playerMovement = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("Player", 13.99, 0.01, 13.63, 1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.01, 2.27, 15.88]), lua.Table.create([(-26.33), (-0.61), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(2.0, lua.Table.create([14.01, 1.97, 15.27]), lua.Table.create([(-26.33), (-0.61), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(playerMovement);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([12.26, 1.56, 11.24]), lua.Table.create([(-7.62), (-157.21), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main06_0001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main06_0001", 28);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2910_talk_01", "main_06_01", "npc_main06_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos("Player", lua.Table.create([0.55, 1.6, 1.57]));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Turn("Player", (-130.0)));
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([14.75, 1.73, 14.59]), lua.Table.create([(-5.72), 50.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(3.0, lua.Table.create([14.44, 1.69, 14.34]), lua.Table.create([(-5.72), 50.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([4.52, 1.22, 6.18]), lua.Table.create([(-10.3), 50.56, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main06_0001");
        var resetAnimation = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main06_0001");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2910_talk_02", "main_06_01", "npc_main06_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimation);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([15.06, 1.42, 14.82]), lua.Table.create([(-5.24), 52.49, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        var npcTurn = main.event.ik.command.IkScriptCommand.FObj_Set_Turn("npc_main06_0001", 88.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main06_0001", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main06_0001", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(npcTurn);
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main06_0001");
        var explanationAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main06_0001", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2910_talk_03", "main_06_01", "npc_main06_0001");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(explanationAnimation);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_main06_0001");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_main06_0001", 16.02, (-0.0), 9.83, 1.0);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main06_0001", "normal");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_main06_0001", 16.02, (-0.0), 9.83, 46.69));
        main.event.ik.command.IkScriptCommand.Destroy_CreateCharacter();
    }
}
