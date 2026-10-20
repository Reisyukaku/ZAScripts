package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CDE5568AED4A80464")
@:expose("CDE5568AED4A80464")
class Ev_m09_3000 extends BaseMainScenario
{
    @:abiSlot(8)
    public var slot8:Dynamic;

    @:abiSlot(9)
    public var slot9:Dynamic;

    @:abiSlot(10)
    public var slot10:Dynamic;

    @:abiSlot(11)
    public var slot11:Dynamic;

    @:abiSlot(12)
    public var slot12:Dynamic;

    public function new()
    {
        this.slot12 = "npc_pokemon_zygarde";
        this.slot11 = "dyn_ziga";
        this.slot10 = "dyn_riv";
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
        var scenario:Dynamic = this;
        main.event.ik.command.IkScriptCommand.S726C2890C3D75149("t1_lb_tower", "t1_lb_tower", true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot12, false);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "serious", this.slot8);
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot9, lua.Table.create([(-411.35), 36.09, (-420.25)]), (-134.94), "npc_main_f");
        main.event.ik.command.IkScriptCommand.Create_NpcPokemon(this.slot11, lua.Table.create([(-411.35), 36.09, (-420.25)]), (-134.94), 718, 1, 0);
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.slot11, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, (-401.1), 36.09, (-432.0), (-113.45));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-393.4), 36.09, (-430.22), (-110.83));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot9, (-407.06), 36.09, (-428.45), 132.66);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        var cameraPosition:Dynamic = lua.Table.create([(-477.67), 135.51, (-480.36)]);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot8, cameraPosition);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot8, (-404.31), 36.09, (-433.59), 1.0);
        var slot11Movement:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot11, (-405.24), 36.09, (-434.88), 2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-407.02), 36.82, (-435.36)]), lua.Table.create([7.29, (-111.47), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-407.02), 36.67, (-435.36)]), lua.Table.create([7.29, (-111.47), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_M09_3000");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 1.0, true);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(slot11Movement);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot11, cameraPosition);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-402.56), 36.42, (-433.36)]), lua.Table.create([13.66, 68.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-402.56), 36.53, (-433.36)]), lua.Table.create([32.82, 68.62, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-404.89), 37.55, (-434.62)]), lua.Table.create([(-6.95), (-160.14), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        main.event.ik.command.IkScriptCommand.CreateRotomPhone(this.slot8);
        main.event.ik.command.IkScriptCommand.SD6D113514F022E54(this.slot8);
        main.event.ik.command.IkScriptCommand.TakeOutRotomPhone(this.slot8);
        main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToTakeOut(this.slot8);
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3000_talk_04", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-406.52), 37.45, (-434.94)]), lua.Table.create([32.24, 54.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, (-405.36), 36.09, (-434.93), 43.55);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot11, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3000_talk_05", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-404.63), 37.97, (-432.31)]), lua.Table.create([(-26.92), 0.58, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(3, "msg_Ev_m09_3000_talk_06", "main_09_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 17);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_07", "main_09_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot9, (-406.69), 36.09, (-430.16), 0.5);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-406.71), 36.41, (-428.43)]), lua.Table.create([(-1.79), (-12.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-406.71), 36.58, (-428.43)]), lua.Table.create([(-1.79), (-12.19), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m09_3000_talk_08", "main_09_01", this.slot9, null, null, (function():Dynamic
        {
            scenario.F32FAD7D4DF3ACA95(1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[11], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[11], scenario[9]);
            scenario.F32FAD7D4DF3ACA95(0.3);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario[8], scenario[9], "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario[8], scenario[9]);
            main.event.ik.command.IkScriptCommand.PutAwayRotomPhone(scenario[8]);
            main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway(scenario[8]);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.FObj_Stop_LipSync(this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-406.27), 37.74, (-431.25)]), lua.Table.create([(-4.32), 147.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-406.27), 37.82, (-431.25)]), lua.Table.create([(-4.32), 147.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot11, "head");
        this.TimeWait(1.0);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_09", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-405.5), 37.31, (-433.25)]), lua.Table.create([(-19.03), (-1.94), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-405.49), 37.24, (-433.44)]), lua.Table.create([(-19.03), (-1.94), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_10", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-402.15), 36.34, (-429.16)]), lua.Table.create([17.35, 53.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(3.0, lua.Table.create([(-401.72), 36.17, (-428.85)]), lua.Table.create([17.35, 53.81, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, cameraPosition);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot11, cameraPosition);
        this.TimeWait(0.3);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot8, cameraPosition);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_11", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot9);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot11);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.slot8);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_12", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-406.27), 37.82, (-431.25)]), lua.Table.create([(-4.32), 147.16, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_13", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.slot9, lua.Table.create([(-406.67), 39.0, (-430.25)]));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_14", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-404.44), 37.54, (-432.71)]), lua.Table.create([(-8.96), 8.96, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-404.4), 37.54, (-432.72)]), lua.Table.create([(-8.96), 8.96, (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "serious", this.slot8);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.slot9, this.slot8, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m09_3000_talk_15", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-404.5), 37.03, (-435.1)]), lua.Table.create([5.25, 156.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(4.0, lua.Table.create([(-404.23), 36.97, (-435.7)]), lua.Table.create([5.25, 156.14, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_SS_COMMON_CAMERA_WHOOSH02");
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_3000_talk_16", "main_09_01", this.slot9);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0, true);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot8, "normal", this.slot8);
        main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
        main.event.ik.command.IkScriptCommand.S726C2890C3D75149("t1_lb_tower", "t1_lb_tower", false);
    }
}
