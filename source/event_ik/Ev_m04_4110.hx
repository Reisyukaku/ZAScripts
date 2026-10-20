package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CC3A8CE4839146340")
@:expose("CC3A8CE4839146340")
class Ev_m04_4110 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_PYU:Dynamic;

    @:abiSlot(10)
    public var CHR_OTAKU:Dynamic;

    @:abiSlot(11)
    public var CHR_SHOP:Dynamic;

    public function new()
    {
        this.CHR_SHOP = "npc_A03_z01_01_0003";
        this.CHR_OTAKU = "dyn_otaku";
        this.CHR_PYU = "dyn_pyu";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_friend_m", "npc_main04_0004", "npc_A03_z01_01_0003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Dynamic = null;
        scenario = this;
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_OTAKU, lua.Table.create([(-328.23), 0.15, (-544.75)]), 17.0, "npc_main04_0004");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_PYU, lua.Table.create([(-334.26), 0.15, (-540.52)]), (-157.2), "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_PYU, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_PYU, 70);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SHOP, (-327.77), 0.14, (-543.3), (-169.44));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-334.26), 0.15, (-540.52), (-157.2));
        main.event.ik.command.IkScriptCommand.CreateCafeDrink("ob0011_00_normal_02", null, lua.Table.create([(-334.73), 0.89, (-540.98)]), 180);
        main.event.ik.command.IkScriptCommand.WaitCreateCafeObjAll();
        main.event.ik.command.IkScriptCommand.VisibleCafeObjAll();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_OTAKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_OTAKU, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-329.07), 0.15, (-547.73), 30.22);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_OTAKU, 32);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-329.94), 1.31, (-546.22)]), lua.Table.create([(-2.57), (-134.6), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(1.2, lua.Table.create([(-330.36), 1.51, (-548.53)]), lua.Table.create([(-2.57), (-134.6), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_OTAKU, this.CHR_PLY);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_OTAKU, (-328.66), 0.14, (-545.88), 0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_01", "main_04_01", this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_02", "main_04_01", this.CHR_OTAKU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_OTAKU, (-322.57), 0.17, (-550.43), 2.0);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_MUTE_T3000");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_OTAKU, "head");
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-329.34), 0.15, (-547.51), 30.22);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-328.69), 1.59, (-548.31)]), lua.Table.create([(-6.22), 125.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-328.41), 1.59, (-547.9)]), lua.Table.create([(-6.22), 125.06, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_03", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_PYU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_PLY, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-333.16), 1.42, (-541.35)]), lua.Table.create([(-15.49), 118.25, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-333.44), 0.15, (-541.96), (-46.28));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([(-332.39), 1.69, (-542.04)]), lua.Table.create([(-18.5), 111.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_04", "main_04_01", this.CHR_PYU);
        (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_4110_select_01", "msg_Ev_m04_4110_select_02"]), 0, false, false));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_05", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-333.39), 1.39, (-541.22)]), lua.Table.create([(-15.47), 112.0, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m04_4110_talk_06", "main_04_01", this.CHR_PYU, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[9]);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 175);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", "npc_main_friend_m");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-334.2), 1.35, (-539.97)]), lua.Table.create([(-1.52), (-7.7), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_07", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_08", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-332.39), 1.69, (-542.04)]), lua.Table.create([(-18.5), 111.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_09", "main_04_01", this.CHR_PYU);
        var selection:Dynamic = (untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m04_4110_select_03", "msg_Ev_m04_4110_select_04"]), 0, false, false));
        var cameraVector:Dynamic = lua.Table.create([(-333.39), 1.39, (-541.22)]);
        var cameraVector2:Dynamic = lua.Table.create([(-15.47), 112.0, 0.0]);
        var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, cameraVector, cameraVector2, 40.0, 0, cameraEase, null);
        var waitCamera:Dynamic = untyped main.event.ik.command.IkScriptCommand.Wait_Camera;
        waitCamera();
        if (0 == selection)
        {
            var showMessageWithDisplayingAction:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction;
            var cHRPYU:Dynamic = this.CHR_PYU;
            var callback:Dynamic = function():Dynamic
            {
                main.event.ik.command.IkScriptCommand.FObj_CloseEye(scenario[9]);
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 175);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "normal", "npc_main_friend_m");
                return null;
            };
            showMessageWithDisplayingAction(0, "msg_Ev_m04_4110_talk_10", "main_04_01", cHRPYU, null, null, callback);
        }
        else
        {
            var showMessageWithDisplayingAction2:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction;
            var cHRPYU2:Dynamic = this.CHR_PYU;
            var callback2:Dynamic = function():Dynamic
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "rejoice_big", "npc_main_friend_m");
                main.event.ik.command.IkScriptCommand.FObj_Set_Animation(scenario[9], 174);
                main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario[9], "rejoice_small", "npc_main_friend_m");
                return null;
            };
            showMessageWithDisplayingAction2(0, "msg_Ev_m04_4110_talk_11", "main_04_01", cHRPYU2, null, null, callback2);
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.CHR_PYU, "normal", "npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-332.39), 1.69, (-542.04)]), lua.Table.create([(-18.5), 111.39, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_12", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_13", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-333.14), 0.15, (-543.94), (-46.28));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-333.31), 0.54, (-542.17)]), lua.Table.create([15.57, 144.7, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SHOP, (-327.77), 0.14, (-543.3), (-94.15));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_SHOP, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_14", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-329.34), 1.56, (-544.85)]), lua.Table.create([(-6.23), (-134.16), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_SHOP, 18);
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_PYU, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation_Immediately(this.CHR_PYU, 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SHOP, (-327.77), 0.14, (-543.3), (-169.44));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PYU, (-328.77), 0.15, (-545.22), 25.71);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-329.49), 0.15, (-547.0), 35.14);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-330.62), 1.6, (-547.52)]), lua.Table.create([(-8.05), (-128.46), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_NPC_RESET_T500");
        var setAnimationAction:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PYU, 18);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setAnimationAction);
        var setTurnToObjAction:Dynamic = (main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PYU, this.CHR_PLY));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PYU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(setTurnToObjAction);
        var moveToPosXYZAction:Dynamic = (main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PYU, (-329.22), 0.15, (-546.04), 0.5));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_15", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(moveToPosXYZAction);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PYU, 74);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_PLY, 74);
        main.event.ik.command.IkScriptCommand.StartItemGetSequenceAuto();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4110_talk_16", "main_04_01", this.CHR_PYU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
