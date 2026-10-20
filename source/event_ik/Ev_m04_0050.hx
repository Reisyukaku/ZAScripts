package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C505887277866D107")
@:expose("C505887277866D107")
class Ev_m04_0050 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -270.01, 0.38, -225.61, 131.22);
        var sceneVector:Dynamic = untyped lua.abi.Host.emptyTable();
        untyped sceneVector[1] = -270.63;
        untyped sceneVector[2] = 0.38;
        untyped sceneVector[3] = (untyped -226.52 : Dynamic);
        untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic("dyn_main_rival_m", sceneVector, (untyped 121.727 : Dynamic), (untyped "npc_main_rival_m" : Dynamic));
        untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var getFlagValueResult:Dynamic = untyped main.event.ik.command.IkScriptCommand.GetFlagValue((untyped "flag_Ev_m04_0050" : Dynamic));
        if (false == getFlagValueResult)
        {
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -270.0, 0.35, -225.6, 133.72);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -270.61, 0.34, -226.51, 118.73);
            var sceneVector2:Dynamic = lua.Table.create([-272.25, 1.25, -222.42]);
            var sceneVector3:Dynamic = lua.Table.create([14.95, -44.34, 0.0]);
            var cameraEase:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector2, sceneVector3, 40.0, 0, cameraEase);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector4:Dynamic = lua.Table.create([-272.25, 0.65, -222.42]);
            var sceneVector5:Dynamic = lua.Table.create([14.95, -44.34, (-0.0)]);
            var cameraEase2:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.4, sceneVector4, sceneVector5, 40.0, 0, cameraEase2);
            untyped main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0050_talk_01", "main_04_01", "dyn_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -270.63, 0.35, -226.52, 121.727);
            var sceneVector6:Dynamic = lua.Table.create([-269.23, 1.6, -225.35]);
            var sceneVector7:Dynamic = lua.Table.create([-0.15, 68.88, (-0.0)]);
            var cameraEase3:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector6, sceneVector7, 40.0, 0, cameraEase3);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector8:Dynamic = lua.Table.create([-269.16, 1.6, -225.52]);
            var sceneVector9:Dynamic = lua.Table.create([-0.15, 68.88, (-0.0)]);
            var cameraEase4:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.5, sceneVector8, sceneVector9, 40.0, 0, cameraEase4);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_dedenne1", -263.52, 0.31, -231.59, -54.28);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_dedenne2", -262.95, 0.32, -230.64, -54.28);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0050_talk_02", "main_04_01", "dyn_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            var sceneVector10:Dynamic = lua.Table.create([-268.93, 1.45, -225.93]);
            var sceneVector11:Dynamic = lua.Table.create([-16.48, -38.74, 0.0]);
            var cameraEase5:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector10, sceneVector11, 40.0, 0, cameraEase5);
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("dyn_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End("Player");
            untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_dedenne1", -267.34, 0.31, -228.67, 2.0);
            untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_dedenne2", -266.83, 0.31, -227.95, 2.0);
            untyped main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_dedenne1", 10);
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0050_talk_03", "main_04_01");
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -270.47, 0.35, -225.93, 123.89);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -269.91, 0.35, -225.13, 138.15);
            untyped main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromNpcID("npc_pokemon_dedenne2", 11);
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0050_talk_04", "main_04_01");
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var sceneVector12:Dynamic = lua.Table.create([-270.46, 2.17, -223.27]);
            var sceneVector13:Dynamic = lua.Table.create([-21.91, -21.9, 0.0]);
            var cameraEase6:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector12, sceneVector13, 40.0, (untyped 0 : Dynamic), untyped cameraEase6, (untyped null : Dynamic), (untyped null : Dynamic), (untyped null : Dynamic));
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_dedenne1", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_dedenne2", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0050_talk_05", "main_04_01", "dyn_main_rival_m");
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_0050_select_01", "msg_Ev_m04_0050_select_02"]), 0, false, (untyped false : Dynamic));
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn("dyn_main_rival_m", 42.89);
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.1);
            var fObj_LookAt_Obj:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
            untyped fObj_LookAt_Obj((untyped "Player" : Dynamic), (untyped "dyn_main_rival_m" : Dynamic), (untyped "head" : Dynamic));
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "npc_pokemon_dedenne1", "head");
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_dedenne1", -261.21, 0.31, -233.44, -52.569);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_dedenne2", -260.45, 0.31, -232.35, -52.569);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_dedenne1", -267.34, 0.31, -228.67, 2.0);
            untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ("npc_pokemon_dedenne2", -266.83, 0.31, -227.95, 2.0);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("dyn_main_rival_m", -270.47, 0.35, -225.93, 42.89);
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -269.91, 0.36, -225.13, 138.15);
            var sceneVector14:Dynamic = lua.Table.create([-270.46, 2.17, -223.27]);
            var sceneVector15:Dynamic = lua.Table.create([-21.91, -21.9, 0.0]);
            var cameraEase7:Dynamic = untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int)));
            untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, sceneVector14, sceneVector15, (untyped 40.0 : Dynamic), (untyped 0 : Dynamic), untyped cameraEase7, (untyped null : Dynamic), (untyped null : Dynamic), (untyped null : Dynamic));
            untyped main.event.ik.command.IkScriptCommand.Wait_Camera();
            untyped main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
            untyped main.event.ik.command.IkScriptCommand.Wait_Fade();
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("dyn_main_rival_m", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "dyn_main_rival_m", "head");
            untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_pokemon_dedenne1", "Player", "head");
            untyped main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
            var fObj_LookAt_Obj2:Dynamic = untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj;
            untyped fObj_LookAt_Obj2((untyped "npc_pokemon_dedenne2" : Dynamic), (untyped "Player" : Dynamic), (untyped "head" : Dynamic));
        };
        untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0050_talk_06", "main_04_01", "dyn_main_rival_m");
        var menuLabels:Dynamic = untyped (["msg_Ev_m04_0050_select_03", "msg_Ev_m04_0050_select_04"]);
        var menuSelection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, (untyped 0 : Dynamic), (untyped true : Dynamic), (untyped false : Dynamic));
        if (0 == untyped menuSelection)
        {
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, (untyped "msg_Ev_m04_0050_talk_08" : Dynamic), (untyped "main_04_01" : Dynamic), (untyped "dyn_main_rival_m" : Dynamic));
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_EV_WILD");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            var fadeOutType:Dynamic = untyped main.event.ik.command.IkScriptCommand.FadeOutType;
            untyped fadeOutType((untyped 7 : Dynamic));
        }
        else
        {
            untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation("dyn_main_rival_m", 2);
            untyped main.event.ik.command.IkScriptCommand.ShowMessage(0, (untyped "msg_Ev_m04_0050_talk_07" : Dynamic), (untyped "main_04_01" : Dynamic), (untyped "dyn_main_rival_m" : Dynamic));
            untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            untyped main.event.ik.command.IkScriptCommand.Fade_Out((untyped "transition_fade_inout" : Dynamic));
            var wait_Fade:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Fade;
            untyped wait_Fade();
        };
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_dedenne1", -261.21, 0.31, -233.44, -52.569);
        untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("npc_pokemon_dedenne2", -260.45, 0.31, -232.35, -52.569);
        untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped this.m_resultParam = untyped menuSelection;
    }
}
