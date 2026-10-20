package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CB938BC5FEA75BE27")
@:expose("CB938BC5FEA75BE27")
class Ev_m05_2600 extends BaseMainScenario
{
    @:abiSlot(8)
    public var PLAYER:Dynamic;

    @:abiSlot(9)
    public var DYN_MACHI:Dynamic;

    @:abiSlot(10)
    public var DYN_SIRO:Dynamic;

    @:abiSlot(11)
    public var DYN_MUKU:Dynamic;

    @:abiSlot(12)
    public var POKE_SHAN:Dynamic;

    @:abiSlot(13)
    public var FLD_SHAN:Dynamic;

    public function new()
    {
        this.FLD_SHAN = "npc_pokemon_chandela";
        this.POKE_SHAN = "poke_shan";
        this.DYN_MUKU = "dyn_muku";
        this.DYN_SIRO = "dyn_siro";
        this.DYN_MACHI = "dyn_machi";
        this.PLAYER = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_detective", "npc_main_ju_boss", "npc_main_ju_leader", "SYANDERA"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.DYN_MACHI, (lua.Table.create([(-40.31), 6.01, (-271.46)]) : Dynamic), (untyped -100.0), "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.DYN_SIRO, (lua.Table.create([(-40.31), 6.01, (-271.46)]) : Dynamic), (untyped -100.0), "npc_main_ju_boss");
        (untyped main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic)(this.DYN_MUKU, (lua.Table.create([(-40.31), 6.01, (-271.46)]) : Dynamic), (untyped -100.0), "npc_main_ju_leader");
        (untyped main.event.ik.command.IkScriptCommand.Create_NpcPokemon)(this.POKE_SHAN, (lua.Table.create([(-40.31), 6.01, (-271.46)]) : Dynamic), (untyped -100.0), 609, 0, 0);
        (untyped main.event.ik.command.IkScriptCommand.Wait_CreateCharacter)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.FLD_SHAN, false);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.PLAYER, (untyped -40.69), 5.21, (untyped -274.7), (untyped -0.87));
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.DYN_SIRO, (untyped -39.05), 5.2, (untyped -274.73), 0.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.DYN_MACHI, (untyped -41.49), 5.47, (untyped -274.08), 0.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.DYN_MUKU, (untyped -39.95), 6.0, (untyped -263.16), 38.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang)(this.POKE_SHAN, (untyped -37.94), 6.05, (untyped -260.06), (untyped -157.5));
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.PLAYER, (untyped -40.32), 6.01, (untyped -271.53), 0.5);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-41.1), 8.3, (-274.21)]) : Dynamic), (lua.Table.create([(-8.4), (-166.03), 0.0]) : Dynamic), 40.0, 0, cameraEase);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase2:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([(-41.1), 7.5, (-274.21)]) : Dynamic), (lua.Table.create([(-8.4), (-166.03), 0.0]) : Dynamic), 40.0, 0, cameraEase2);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_RESET");
        (untyped main.event.ik.command.IkScriptCommand.Fade_In)("transition_fade_inout", 0.1, true);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        this.TimeWait(1.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.DYN_SIRO, (untyped -38.91), 6.0, (untyped -269.06), 2.0);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ)(this.DYN_MACHI, (untyped -41.39), 6.0, (untyped -269.52), 0.5);
        var cameraEase3:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-40.21), 7.74, (-264.57)]) : Dynamic), (lua.Table.create([(-5.24), 1.37, 0.0]) : Dynamic), 40.0, 0, cameraEase3);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase4:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(2, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([(-40.2), 7.76, (-264.32)]) : Dynamic), (lua.Table.create([(-5.24), 1.37, 0.0]) : Dynamic), 40.0, 0, cameraEase4);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(1, "msg_Ev_m05_2600_talk_01", "main_05_01", this.DYN_SIRO, true, true);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase5:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-40.32), 7.12, (-264.46)]) : Dynamic), (lua.Table.create([(-3.47), (-164.63), 0.0]) : Dynamic), 40.0, 0, cameraEase5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase6:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.0, (lua.Table.create([(-40.32), 7.27, (-264.46)]) : Dynamic), (lua.Table.create([(-3.47), (-164.63), 0.0]) : Dynamic), 40.0, 0, cameraEase6);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.DYN_MUKU, this.PLAYER, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.DYN_MUKU, 157.5);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_02", "main_05_01", this.DYN_MUKU, false);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        var cameraEase7:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-40.73), 7.2, (-261.41)]) : Dynamic), (lua.Table.create([(-2.91), (-10.76), 0.0]) : Dynamic), 40.0, 0, cameraEase7);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.DYN_MACHI, this.DYN_MUKU, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.DYN_MACHI, 491);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_03", "main_05_01", this.DYN_MACHI);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.DYN_SIRO, 27);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_04", "main_05_01", this.DYN_SIRO);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        var cameraEase8:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-41.31), 7.39, (-268.21)]) : Dynamic), (lua.Table.create([(-5.82), (-5.53), 0.0]) : Dynamic), 40.0, 0, cameraEase8, ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)), ((null : Dynamic)));
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var animationAction:Dynamic = (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.DYN_MACHI, 1);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.DYN_SIRO);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT_0S");
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)(animationAction);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.DYN_MACHI, this.PLAYER, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.DYN_MACHI, 32, null, 3.0);
        var dialogueChoices:Dynamic = [null, null, null, null];
        untyped dialogueChoices[0] = "msg_Ev_m05_2600_select_01";
        untyped dialogueChoices[1] = "msg_Ev_m05_2600_select_02";
        untyped dialogueChoices[2] = (("msg_Ev_m05_2600_select_03" : Dynamic));
        untyped dialogueChoices[3] = (("msg_Ev_m05_2600_select_04" : Dynamic));
        var arrayResult:Dynamic = dialogueChoices;
        var dialogueSelection:Dynamic = ((0 : Dynamic));
        while (((0 == dialogueSelection) || (2 == dialogueSelection)))
        {
            var sceneCallback:Dynamic = function():Dynamic
            {
                var timeWait:Dynamic = untyped scenario.F32FAD7D4DF3ACA95;
                timeWait(scenario, 0.7);
                (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)((untyped scenario[8]), (untyped scenario[9]), "head");
                return null;
            };
            (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m05_2600_talk_05", "main_05_01", this.DYN_MACHI, ((null : Dynamic)), ((null : Dynamic)), sceneCallback);
            var menuSelection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu)(arrayResult, ((0 : Dynamic)), ((false : Dynamic)), ((false : Dynamic)));
            dialogueSelection = menuSelection;
            if (0 == dialogueSelection)
            {
                (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.DYN_MACHI, 32, null, 3.0);
                var showMessage:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                var dYN_MACHI:Dynamic = this.DYN_MACHI;
                showMessage(((0 : Dynamic)), (("msg_Ev_m05_2600_talk_06" : Dynamic)), (("main_05_01" : Dynamic)), dYN_MACHI);
            }
            else
            {
                if (1 == dialogueSelection)
                {
                    (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.DYN_MACHI, "rejoice_small", "npc_main_detective");
                    (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.DYN_MACHI);
                    var showMessage2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                    var dYN_MACHI2:Dynamic = this.DYN_MACHI;
                    showMessage2(((0 : Dynamic)), (("msg_Ev_m05_2600_talk_07" : Dynamic)), (("main_05_01" : Dynamic)), dYN_MACHI2);
                }
                else
                {
                    if (2 == dialogueSelection)
                    {
                        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
                        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.DYN_MACHI, 32, null, 3.0);
                        var showMessage3:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                        var dYN_MACHI3:Dynamic = this.DYN_MACHI;
                        showMessage3(((0 : Dynamic)), (("msg_Ev_m05_2600_talk_08" : Dynamic)), (("main_05_01" : Dynamic)), dYN_MACHI3);
                    }
                    else
                    {
                        if (3 == dialogueSelection)
                        {
                            (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.DYN_MACHI, "rejoice_small", "npc_main_detective");
                            (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.DYN_MACHI);
                            var showMessage4:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessage;
                            var dYN_MACHI4:Dynamic = this.DYN_MACHI;
                            showMessage4(((0 : Dynamic)), (("msg_Ev_m05_2600_talk_09" : Dynamic)), (("main_05_01" : Dynamic)), dYN_MACHI4);
                        }
                        else
                        {
                        };
                    };
                };
            };
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        };
        var cameraEase9:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-40.02), 7.64, (-273.44)]) : Dynamic), (lua.Table.create([(-4.4), (-179.63), 0.0]) : Dynamic), 40.0, 0, cameraEase9);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn)(this.DYN_SIRO, (untyped -132.0));
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_10", "main_05_01", this.DYN_SIRO);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.DYN_MACHI, "normal", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.DYN_MACHI, 28);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_11", "main_05_01", this.DYN_MACHI);
        var cameraEase10:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-39.99), 7.24, (-264.82)]) : Dynamic), (lua.Table.create([(-2.72), (-179.63), 0.0]) : Dynamic), 40.0, 0, cameraEase10);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        var cameraEase11:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(2.5, (lua.Table.create([(-39.99), 7.27, (-264.48)]) : Dynamic), (lua.Table.create([(-2.72), (-179.63), 0.0]) : Dynamic), 40.0, 0, cameraEase11);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_NPC_MUTE_T0");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.DYN_SIRO, this.DYN_MUKU);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_12", "main_05_01", this.DYN_MACHI);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot)(this.DYN_MUKU, 32, null, 5.0);
        (untyped ext.gf.audio.SoundCommand.PostEventGlobal)("SET_BUS_VOLUME_NPC_RESET_T0");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_13", "main_05_01", this.DYN_MUKU);
        (untyped main.event.ik.command.IkScriptCommand.ShowMessage)(0, "msg_Ev_m05_2600_talk_14", "main_05_01", this.DYN_MUKU);
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.DYN_MUKU);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.DYN_MACHI, this.PLAYER, "head");
        var cameraEase12:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-40.98), 7.31, (-267.8)]) : Dynamic), (lua.Table.create([(-3.68), 1.55, 0.0]) : Dynamic), 40.0, 0, cameraEase12);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.DYN_MACHI, "serious", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Reset_Animation)(this.DYN_MACHI);
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj)(this.DYN_MACHI, this.PLAYER, "head");
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj)(this.DYN_MACHI, this.PLAYER);
        this.TimeWait(0.5);
        var cameraEase13:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        (untyped main.event.ik.command.IkScriptCommand.Camera_Move_Angle)(0.0, (lua.Table.create([(-40.76), 7.54, (-270.32)]) : Dynamic), (lua.Table.create([(-9.19), 141.11, 0.0]) : Dynamic), 40.0, 0, cameraEase13);
        (untyped main.event.ik.command.IkScriptCommand.Wait_Camera)();
        (untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate)(this.DYN_MACHI, "confident", "npc_main_detective");
        (untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction)(0, "msg_Ev_m05_2600_talk_15", "main_05_01", this.DYN_MACHI, null, null, (function():Dynamic
        {
            return null;
        }));
        (untyped main.event.ik.command.IkScriptCommand.HideMessageWindow)();
        (untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.DYN_MACHI, 74);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Animation)(this.PLAYER, 74);
        this.TimeWait(0.5);
        (untyped main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick)();
        (untyped main.event.ik.command.IkScriptCommand.FObj_LookAt_End)(this.PLAYER);
        this.TimeWait(1.5);
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("EV_STOP_LYER_EVENT");
        (untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand)("SYS_SE_BLOCK_WITHOUT_ENV");
        (untyped main.event.ik.command.IkScriptCommand.Fade_Out)("transition_fade_inout", 0.1, true);
        (untyped main.event.ik.command.IkScriptCommand.FObj_Set_Visibility)(this.FLD_SHAN, true);
    }
}
