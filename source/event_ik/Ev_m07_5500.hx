package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CFF2E9B11A0A6B247")
@:expose("CFF2E9B11A0A6B247")
class Ev_m07_5500 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    @:abiSlot(10)
    public var CHR_YUKA:Dynamic;

    @:abiSlot(11)
    public var CHR_HAL:Dynamic;

    @:abiSlot(12)
    public var CHR_TARA:Dynamic;

    @:abiSlot(13)
    public var CHR_KANA:Dynamic;

    @:abiSlot(14)
    public var CHR_SIRO:Dynamic;

    @:abiSlot(15)
    public var CHR_MUKU:Dynamic;

    @:abiSlot(16)
    public var CHR_KARA:Dynamic;

    @:abiSlot(17)
    public var CHR_JIPU:Dynamic;

    public function new()
    {
        this.CHR_JIPU = "npc_main_co_leader";
        this.CHR_KARA = "npc_main_co_boss";
        this.CHR_MUKU = "npc_main_ju_leader";
        this.CHR_SIRO = "npc_main_ga_leader";
        this.CHR_KANA = "npc_main_ga_leader";
        this.CHR_TARA = "npc_main_ga_boss";
        this.CHR_HAL = "npc_main_pa_leader";
        this.CHR_YUKA = "npc_main_pa_boss";
        this.CHR_RIV = "div_riv";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_boss", "npc_main_pa_leader", "npc_main_ga_boss", "npc_main_ga_leader", "npc_main_ju_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_YUKA, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5500_talk_01", "main_07_01", this.CHR_YUKA);
        var menuLabels:Dynamic = (["msg_Ev_m07_5500_select_01", "msg_Ev_m07_5500_select_02"]);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(menuLabels, 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (((0 == (selection : Dynamic))))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_FADE_OUT_1_5S_SUS");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_RIV, lua.Table.create([15.75, 0.03, -4.91]), 180.0, "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
            main.event.ik.command.IkScriptCommand.FObj_Set_CollisionAndGravity(this.CHR_YUKA, false);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_HAL, 2);
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_KANA, 1);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.83, 0.03, -14.5, 0.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, 15.68, 0.03, -12.23, 180.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_HAL, 18.82, 0.02, -7.03, -150.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_TARA, 14.87, 0.03, -0.8, -179.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, 26.43, 0.02, -7.69, -118.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KANA, 15.62, 0.03, -0.61, 172.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_SIRO, 13.05, 0.03, -1.84, 166.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MUKU, 13.8, 0.03, -0.7, 171.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_KARA, 26.13, 0.03, -6.38, -125.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JIPU, 27.25, 0.03, -4.6, -125.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_PS_BGM_06_SUS");
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.71, 1.81, -13.35]), lua.Table.create([-6.92, 179.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.71, 1.49, -13.35]), lua.Table.create([-6.92, 179.57, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.5, true);
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_CHARA_ALL_RESET_T0");
            this.TimeWait(1.0);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5500_talk_09", "main_07_01", this.CHR_YUKA);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.35, 0.97, -13.89]), lua.Table.create([9.33, -162.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.5, lua.Table.create([14.81, 0.66, -16.47]), lua.Table.create([9.33, -162.69, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_YUKA, 14);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5500_talk_17", "main_07_01", this.CHR_YUKA);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.61, 2.37, -12.04]), lua.Table.create([3.87, -90.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_YUKA, "head");
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_YUKA, this.CHR_PLY, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_YUKA, 15.8, 0.03, -9.76, 180.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.83, 0.03, -14.5, 0.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([10.01, 0.49, -12.05]), lua.Table.create([3.87, -90.11, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            this.TimeWait(0.5);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_YUKA, 15.8, 0.03, -11.77, 0.5);
            this.TimeWait(0.3);
            main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_PLY, 15.84, 0.03, -12.29, 0.5);
            this.TimeWait(1.2);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.16, 1.45, -12.05]), lua.Table.create([0.35, -90.09, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.PlayAdventRotomSequence(this.CHR_PLY, this.CHR_YUKA);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 15.84, 0.03, -12.59, 0.3);
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.06, 0.89, -11.4]), lua.Table.create([16.68, -41.58, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5500_talk_03", "main_07_01", this.CHR_YUKA);
            untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_m07_5500_select_03", "msg_Ev_m07_5500_select_04", "msg_Ev_m07_5500_select_05"]), 0, false, false);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            var cameraEase:Dynamic = (untyped main.event.ik.command.IkScriptCommand.EaseCameraType._new)((cast(3, Int)));
            main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.21, 1.09, -13.2]), lua.Table.create([9.1, -145.64, 0.0]), 40.0, 0, cameraEase);
            main.event.ik.command.IkScriptCommand.Wait_Camera();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5500_talk_04", "main_07_01", this.CHR_YUKA);
            var cHRYUKA:Dynamic = this.CHR_YUKA;
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5500_talk_05", "main_07_01", cHRYUKA);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_02");
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
            untyped main.event.ik.command.IkScriptCommand.S5947B527097768D0(4);
        }
        else
        {
            if (((1 == (selection : Dynamic))))
            {
                var cHRYUKA2:Dynamic = this.CHR_YUKA;
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5500_talk_02", "main_07_01", cHRYUKA2);
                untyped main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
        };
        untyped this.m_resultParam = selection;
    }
}
