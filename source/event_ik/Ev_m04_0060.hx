package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C504E7527785E5DEC")
@:expose("C504E7527785E5DEC")
class Ev_m04_0060 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        var isCharaFoundResult:Dynamic = cppbindings.C56DE81E7.f4C7B9250("npc_pokemon_dedenne1");
        if (lua.abi.Host.truthy(isCharaFoundResult)) {
            var fObjSetVisibility:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
            fObjSetVisibility("npc_pokemon_dedenne1", false);
        };
        var isCharaFoundResult2:Dynamic = cppbindings.C56DE81E7.f4C7B9250("npc_pokemon_dedenne2");
        if (lua.abi.Host.truthy(isCharaFoundResult2)) {
            var fObjSetVisibility2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Visibility;
            fObjSetVisibility2("npc_pokemon_dedenne2", false);
        };
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -270.01, 0.38, -225.61, 131.22);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DEDENNE_01", lua.Table.create([-267.34, 0.31, -228.67]), -54.28, 702, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon("DEDENNE_02", lua.Table.create([-266.83, 0.31, -227.95]), -54.28, 702, 0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_SECRETARY", lua.Table.create([-265.95, 0.34, -230.55]), -52.32, "npc_main_secretary");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("npc_ol_f_03", lua.Table.create([-262.67, 0.33, -231.57]), -57.52, "npc_ol_f_03");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", lua.Table.create([-270.63, 0.38, -226.52]), 121.727, "npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_SECRETARY", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_ol_f_03", false);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-267.37, 1.41, -226.47]), lua.Table.create([-27.32, -10.52, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DEDENNE_01", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_01", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("DEDENNE_02", 25);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_02", "main_04_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var moveToPosXYZAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("DEDENNE_01", -258.58, 1.32, -236.24, 2.0);
        var moveToPosXYZAction2:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("DEDENNE_02", -256.84, 1.32, -233.85, 2.0);
        var moveToPosXYZAction3:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_ol_f_03", -267.9, 0.37, -227.79, 0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_ol_f_03", true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-271.48, 1.75, -225.28]), lua.Table.create([-4.32, -54.77, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))), 0);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_ol_f_03", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "npc_ol_f_03", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_03", "main_04_01", "npc_ol_f_03");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("DEDENNE_01", -52.569);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn("DEDENNE_02", -52.569);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ol_f_03", -267.95, 0.35, -227.94, -54.16);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-266.7, 1.91, -227.97]), lua.Table.create([-8.69, 108.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("dyn_SECRETARY", true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_04", "main_04_01", "npc_ol_f_03");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_05", "main_04_01", "dyn_main_rival_m");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_06", "main_04_01", "npc_ol_f_03");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_SECRETARY", -268.45, 0.33, -228.65, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-267.81, 0.6, -229.95]), lua.Table.create([4.77, -83.73, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ol_f_03", -267.6, 0.34, -227.93, -57.52);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-269.49, 1.82, -228.73]), lua.Table.create([4.78, -95.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ol_f_03", "dyn_SECRETARY", "head");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_ol_f_03", 21);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_07", "main_04_01", "dyn_SECRETARY");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "dyn_SECRETARY", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_SECRETARY", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_08", "main_04_01", "dyn_SECRETARY");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("npc_ol_f_03");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -270.11, 0.35, -225.61, 125.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -270.69, 0.34, -226.22, 115.23);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_ol_f_03", -267.85, 0.34, -227.94, -50.02);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_SECRETARY", -268.45, 0.34, -228.65, -51.18);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-271.41, 1.61, -224.81]), lua.Table.create([-1.46, -41.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_SECRETARY", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0060_talk_09", "main_04_01", "dyn_SECRETARY");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_SECRETARY");
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_ol_f_03", "dyn_SECRETARY", "head");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("dyn_SECRETARY", -278.99, 0.33, -240.46, 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.3, lua.Table.create([-271.54, 1.61, -224.92]), lua.Table.create([-1.46, -41.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
    }
}
