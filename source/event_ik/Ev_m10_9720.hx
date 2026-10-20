package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C4DA12E12300ED207")
@:expose("C4DA12E12300ED207")
class Ev_m10_9720 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_F:Dynamic;

    @:abiSlot(10)
    public var POKE_ZIGA:Dynamic;

    public function new()
    {
        untyped (this)[10] = "dyn_ziga";
        untyped (this)[9] = "dyn_f";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M6DB_T1000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_F, lua.Table.create([-657.65, 0.8, -869.66]), 0.0, "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.POKE_ZIGA, lua.Table.create([-665.99, 0.03, -876.89]), -134.94, 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_F, 1);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_F, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, -661.99, 0.01, -874.84, -146.64);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_F, -664.92, 0.02, -879.21, 35.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, -665.26, 0.03, -881.03, 38.86);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-658.2, 2.52, -873.47]), lua.Table.create([-3.7, 60.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([-658.2, 1.23, -873.47]), lua.Table.create([-3.7, 60.95, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.CHR_F, 32, null, 2.68);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9720_talk_01", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9720_talk_02", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-664.07, 1.77, -878.61]), lua.Table.create([-4.91, 55.7, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_F, 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9720_talk_03", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.CHR_F);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_F, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.PlayPokeVoiceFromDevNo2D(718, 1, 9);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9720_talk_04", "main_10_01", null, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_End(scenario[9]);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "surprise2", "npc_main_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.POKE_ZIGA, "head");
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.POKE_ZIGA, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_F, 67.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-662.59, 0.62, -879.11]), lua.Table.create([15.91, 84.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, true);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_ZIGA, -662.59, 0.03, -877.38, 0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.POKE_ZIGA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.POKE_ZIGA, -662.56, 0.03, -877.25, 20.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-664.94, 1.75, -881.32]), lua.Table.create([-11.21, -161.74, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-661.82, 0.84, -875.87]), lua.Table.create([-1.73, 30.28, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9720_talk_05", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.POKE_ZIGA);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_ZIGA, -662.27, 0.02, -877.51, 2.0);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-660.73, 1.54, -873.93]), lua.Table.create([-12.97, 41.91, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.POKE_ZIGA, -661.44, 0.02, -878.25, 2.0);
        this.TimeWait(0.1);
        var zigaLeaveEffEffectKey:Dynamic = "ziga_leave_eff";
        main.event.ik.command.IkScriptCommand.CreateLocaterEffect("field/event/z_move/z_move_disapp", zigaLeaveEffEffectKey, this.POKE_ZIGA, "event_script");
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(zigaLeaveEffEffectKey);
        }));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_0718_MOVE_FAST");
        main.event.ik.command.IkScriptCommand.PlayEffect(zigaLeaveEffEffectKey);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.POKE_ZIGA, false);
        this.TimeWait(0.3);
        var cameraPosition:Dynamic = lua.Table.create([-657.12, 1.01, -882.13]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_F, cameraPosition);
        this.TimeWait(0.2);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, cameraPosition);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-664.16, 1.87, -878.38]), lua.Table.create([-12.97, 41.91, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9720_talk_06", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_F, "surprise2", "npc_main_f");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_F, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9720_talk_07", "main_10_01", this.CHR_F);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-660.84, 1.36, -874.35]), lua.Table.create([-3.13, 52.41, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([-660.43, 1.34, -874.03]), lua.Table.create([-3.13, 52.41, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9720_talk_08", "main_10_01", this.CHR_F, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[9], scenario[8], "head");
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_F, cameraPosition);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, cameraPosition);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9720_talk_09", "main_10_01", this.CHR_F, null, null, (function():Dynamic
        {
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.RemoveAllTagEffect();
    }
}
