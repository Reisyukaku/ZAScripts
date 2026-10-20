package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CA708E05FDFEA1368")
@:expose("CA708E05FDFEA1368")
class Ev_m05_2010 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(10)
    public var CHR_MACHI:Dynamic;

    public function new()
    {
        this.CHR_MACHI = "dyn_machi";
        this.CHR_SIRO = "dyn_siro";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_ju_boss", "npc_main_detective"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_MUTE_T500");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_PUNCH_AFTER");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_SIRO, lua.Table.create([(-254.13), 0.12, (-866.75)]), 167.642, "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_MACHI, lua.Table.create([(-254.13), 0.12, (-866.75)]), 167.642, "npc_main_detective");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-266.12), 0.14, (-876.66), 36.91);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MACHI, (-267.0), 0.12, (-876.28), 32.39);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, (-267.54), 0.12, (-874.87), 56.56);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-266.92), 2.85, (-875.44)]), lua.Table.create([(-3.31), (-123.69), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_EV_M05_2010_ICE_BUILD");
        main.event.ik.command.IkScriptCommand.Fade_Out("White", 0.3, true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.Fade_In("White", 0.3, true);
        this.TimeWait(1.0);
        var cameraVector:Dynamic = lua.Table.create([(-0.3), (-124.78), (-0.0)]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-269.54), 1.52, (-877.36)]), cameraVector, 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        var eventParameters:Dynamic = this.m_eventScriptParam;
        var getEventMode:Dynamic = untyped (cast eventParameters : Dynamic).f73EE8FEC;
        var getEventModeResult:Dynamic = getEventMode(eventParameters);
        if (("0" == getEventModeResult)) { } else {
            if (("1" == getEventModeResult)) {
                var showMessage:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessage;
                var cHRMACHI:Dynamic = this.CHR_MACHI;
                showMessage(0, "msg_Ev_m05_2010_talk_15", "main_05_01", cHRMACHI);
            } else {
                if (("2" == getEventModeResult)) {
                    var showMessage2:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessage;
                    var cHRMACHI2:Dynamic = this.CHR_MACHI;
                    showMessage2(0, "msg_Ev_m05_2010_talk_17", "main_05_01", cHRMACHI2);
                } else {
                    var eventParameters3:Dynamic = this.m_eventScriptParam;
                    var getEventMode2:Dynamic = untyped (cast eventParameters3 : Dynamic).f73EE8FEC;
                    getEventMode2(eventParameters3);
                };
            };
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var findSceneResult:Dynamic = cppbindings.C682D8E4F.fEF94D11D("event_script");
        var findSceneObject:Dynamic = untyped (cast findSceneResult : Dynamic).fD4E64AB7;
        var findSceneObjectResult:Dynamic = findSceneObject(findSceneResult, this.CHR_SIRO);
        ext.gf.audio.SoundCommand.PostEvent3DObject("PLAY_SS_EV_M05_2010_FOLEY_SWISH_M_RND", findSceneObjectResult);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_SIRO, 32, null, 3.0);
        var cameraVector2:Dynamic = lua.Table.create([(-273.65), (-0.59), (-880.87)]);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_05", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_SIRO, cameraVector2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_SIRO, (-134.0));
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_MACHI, cameraVector2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MACHI, (-114.5));
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, cameraVector2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_PLY, (-100.0));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-270.08), 1.31, (-879.22)]), lua.Table.create([(-5.61), (-137.53), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_10", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-276.84), (-0.08), (-887.21)]), lua.Table.create([(-14.16), (-150.99), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.PlayAnimeFieldObj("t1_g02_1_dungeon_entrance_replace01", "t1_g02_1_dungeon_water01", "down", "trigger");
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_WATER_FLOWS");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_STATE_ENV_EV_M05_2010_AFTER");
        this.TimeWait(10.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-269.93), 1.42, (-877.49)]), lua.Table.create([1.02, (-125.29), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SIRO, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_18", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2010_talk_11", "main_05_01", this.CHR_SIRO, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[10], "head");
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[9], "head");
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(0.2);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_SIRO, "normal", "npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_12", "main_05_01", this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_SIRO);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_SIRO, (-268.14), 0.12, (-867.8), 2.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-269.17), 1.42, (-878.57)]), lua.Table.create([1.02, (-125.28), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_MACHI, (-102.5));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_SIRO, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_SIRO, "head");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-267.73), 1.63, (-877.41)]), lua.Table.create([(-9.15), (-132.83), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 2);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_2010_talk_13", "main_05_01", this.CHR_MACHI);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_MACHI, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_MACHI, 1);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MACHI, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m05_2010_talk_14", "main_05_01", this.CHR_MACHI, null, null, (function():Dynamic {
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(1.5);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[8], 18);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_SKILLS_RESET_T500");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
