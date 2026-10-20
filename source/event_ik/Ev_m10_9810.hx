package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCB42B311E6176759")
@:expose("CCB42B311E6176759")
class Ev_m10_9810 extends BaseMainScenario
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
        this.slot11 = "npc_pokemon_zygarde";
        this.slot10 = "dyn_ziga";
        this.slot9 = "dyn_f";
        this.slot8 = "Player";
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
        var scenario:Dynamic = null;
        var key:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        key = "poke_touch_ef";
        main.event.ik.command.IkScriptCommand.CreateEffect("field/event/goo_touch/goo_touch_01", key);
        this.Await((function():Dynamic
        {
            return main.event.ik.command.IkScriptCommand.IsSetUpEffect(key);
        }));
        main.event.ik.command.IkScriptCommand.SetEffectWorldPosition(key, (-499.31), (-1.0), (-504.6));
        main.event.ik.command.IkScriptCommand.SetEffectWorldRotation(key, 0, 180.0, 0);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-500.47), (-1.46), (-509.82)]), 0.0, "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot10, lua.Table.create([(-499.55), (-1.52), (-503.78)]), (-134.94), 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot8, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot10, false);
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot10, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-499.25), (-1.49), (-505.31), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, (-499.55), (-1.52), (-503.78), 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-499.94), (-1.47), (-508.89), 0.0);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.16), 0.09, (-506.22)]), lua.Table.create([(-11.84), (-152.06), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-500.16), (-0.48), (-506.22)]), lua.Table.create([(-11.84), (-152.06), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 200);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.83), (-0.57), (-505.06)]), lua.Table.create([(-11.84), (-152.06), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.81), (-0.55), (-504.42)]), lua.Table.create([(-9.99), (-41.25), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-502.01), (-0.97), (-505.27)]), lua.Table.create([0.74, (-103.52), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-501.46), (-0.91), (-505.14)]), lua.Table.create([0.74, (-103.53), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot8, 248);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 117);
        this.TimeWait(0.7);
        main.event.ik.command.IkScriptCommand.PlayEffect(key);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot10, "head");
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_small_mc", "npc_main_f");
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-499.6), (-1.48), (-506.99), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.12), (-0.76), (-503.85)]), lua.Table.create([10.66, (-34.22), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-500.12), (-0.76), (-503.85)]), lua.Table.create([10.66, (-22.89), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9810_talk_01", "main_10_01", this.slot9, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[8], "surprise_mc", scenario[8]);
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[10], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[8], "normal", scenario[8]);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(scenario[8]));
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[9]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.96), (-0.01), (-506.12)]), lua.Table.create([10.66, (-22.89), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_02", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9810_talk_03", "main_10_01", this.slot9, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 74);
            scenario.F32FAD7D4DF3ACA95(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.66), (-0.16), (-504.38)]), lua.Table.create([2.61, (-14.94), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[8], 74);
            main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(scenario[9]);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.StartItemGetSequence("ITEMID_ZIGARUDEKYUUBU", 1);
            main.event.ik.command.IkScriptCommand.OpenTips("tips_1040");
            return null;
        }));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.74), 0.23, (-506.19)]), lua.Table.create([(-23.22), (-170.78), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(6.0, lua.Table.create([(-499.76), 0.01, (-505.68)]), lua.Table.create([(-23.22), (-170.78), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m10_9810_talk_04", "main_10_01", this.slot9, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[10], "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.96), (-0.01), (-506.12)]), lua.Table.create([10.66, (-22.89), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot8, this.slot9, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, lua.Table.create([(-499.95), 1.52, (-506.17)]));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_05", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.66), (-0.16), (-504.38)]), lua.Table.create([2.61, (-14.94), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_06", "main_10_01", this.slot9);
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m10_9810_select_01", "msg_Ev_m10_9810_select_02"]), 0, true, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var cameraVector:Dynamic = lua.Table.create([10.66, (-22.89), 0.0]);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.96), (-0.01), (-506.12)]), cameraVector, 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(0.5);
        var slot9:Dynamic = this.slot9;
        main.event.ik.command.IkScriptCommand.FObj_CloseEye(slot9);
        if (0 == (selection : Dynamic))
        {
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 18);
            var slot92:Dynamic = this.slot9;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_07", "main_10_01", slot92);
            var hideMessageWindow:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
            hideMessageWindow();
        }
        else
        {
            if (1 == (selection : Dynamic))
            {
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot9, 19);
                var slot93:Dynamic = this.slot9;
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_08", "main_10_01", slot93);
                var hideMessageWindow2:Dynamic = untyped main.event.ik.command.IkScriptCommand.HideMessageWindow;
                hideMessageWindow2();
            };
        };
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot9, "rejoice_big_mc", "npc_main_f");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_09", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.33), 0.75, (-508.08)]), lua.Table.create([(-22.42), (-157.83), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(20.0, lua.Table.create([(-500.81), 0.5, (-507.94)]), lua.Table.create([(-17.26), (-140.88), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_10", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_11", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.6), 0.23, (-506.31)]), lua.Table.create([(-22.97), (-170.08), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(8.0, lua.Table.create([(-499.75), 0.13, (-506.26)]), lua.Table.create([(-17.44), (-162.06), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_12", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.87), (-0.5), (-504.41)]), lua.Table.create([10.45, (-20.13), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([(-499.5), (-0.5), (-504.3)]), lua.Table.create([10.45, (-8.1), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_13", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_14", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_15", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.48), 0.04, (-506.08)]), lua.Table.create([8.77, 5.8, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_16", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.slot9, (-162.34));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-500.87), 0.48, (-507.82)]), lua.Table.create([(-18.25), (-139.28), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m10_9810_talk_17", "main_10_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-504.09), (-0.78), (-519.81), 0.5);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.61), (-0.31), (-504.22)]), lua.Table.create([3.23, (-9.38), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(10.0, lua.Table.create([(-499.99), (-0.36), (-502.71)]), lua.Table.create([0.3, (-5.79), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.TimeWait(4.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot8, true);
        main.event.ik.command.IkScriptCommand.PlayQuestAchievementUI("main_10_05");
    }
}
