package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3D13541226E64BFB")
@:expose("C3D13541226E64BFB")
class Ev_m10_9540 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    public function new()
    {
        untyped (this)[11] = "main_Yveltal";
        untyped (this)[10] = "dyn_guris";
        untyped (this)[9] = "dyn_guri";
        untyped (this)[8] = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_nu_boss_m", "npc_main_nu_boss_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = this;
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.ExecuteBGMCommand("SYS_SE_BLOCK_STRONG_LOOP_ON");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([-544.27, 19.22, -350.61]), 180.0, "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([-544.27, 19.22, -350.61]), 180.0, "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot8, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot9, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot10, false);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_big_mc", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_big_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, -544.27, 19.22, -350.61, -135.95);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, -541.21, 18.84, -350.02, -104.45);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, -540.8, 18.84, -350.55, -96.45);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-544.01, 20.85, -351.54]), lua.Table.create([-7.55, 162.8, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([-544.01, 20.67, -351.54]), lua.Table.create([-7.55, 162.8, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END_EV_WILD");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 20);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 31);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 31);
        this.TimeWait(0.5);
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T0");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "surprise", this.slot8);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot8, 80.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.38, 20.4, -348.65]), lua.Table.create([-5.06, 56.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_01", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m10_9540_select_01", "msg_Ev_m10_9540_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 18);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal", this.slot8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var slot9Animation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot10);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.16, 20.47, -349.88]), lua.Table.create([-6.34, -72.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "normal", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal", this.slot8);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot9Animation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 28);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9540_talk_02", "main_10_01", this.slot9, null, null, (function():Dynamic {
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(1.5);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "normal", "npc_main_nu_boss_f");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[9], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "sad2", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_03", "main_10_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_04", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.38, 20.4, -348.65]), lua.Table.create([-5.06, 56.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot9, 172, null, 1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_05", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 19);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_06", "main_10_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-542.16, 20.47, -349.88]), lua.Table.create([-6.34, -72.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "smile_bitter", "npc_main_nu_boss_m");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_07", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot10, "rejoice_big_mc", "npc_main_nu_boss_f");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9540_talk_08", "main_10_01", this.slot10, null, null, (function():Dynamic {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[10], 18);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9540_talk_09", "main_10_01", this.slot9, null, null, (function():Dynamic {
            untyped (cast scenario : Dynamic).F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[10], "rejoice_small_mc", "npc_main_nu_boss_f");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_10", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot10);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-539.38, 20.4, -348.65]), lua.Table.create([-5.06, 56.97, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, StdTypes.Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_OneShot(this.slot10, 32, null, 4.68);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9540_talk_11", "main_10_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_10_04");
        this.TimeWait(0.5);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.PostEventGlobal("PLAY_SS_COMMON_RECOVERY");
        cppbindings.C56DE81E7.fFB3A9D11();
        this.TimeWait(2.0);
    }
}
