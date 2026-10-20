package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CEEB1BF11978C9C08")
@:expose("CEEB1BF11978C9C08")
class Ev_m07_5310 extends BaseMainScenario
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

    @:abiSlot(13)
    public var slot13:Dynamic;

    @:abiSlot(14)
    public var slot14:Dynamic;

    @:abiSlot(15)
    public var slot15:Dynamic;

    @:abiSlot(16)
    public var slot16:Dynamic;

    @:abiSlot(17)
    public var slot17:Dynamic;

    public function new()
    {
        this.slot17 = "dyn_jipu";
        this.slot16 = "dyn_kara";
        this.slot15 = "dyn_muku";
        this.slot14 = "dyn_siro";
        this.slot13 = "dyn_tara";
        this.slot12 = "dyn_kana";
        this.slot11 = "dyn_hal";
        this.slot10 = "dyn_yuka";
        this.slot9 = "dyn_riv";
        this.slot8 = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m", "npc_main_pa_boss", "npc_main_pa_leader", "npc_main_ga_boss", "npc_main_ga_leader", "npc_main_ju_boss", "npc_main_ju_leader", "npc_main_co_boss", "npc_main_co_leader"]);
        main.event.ik.command.IkScriptCommand.SC20D8767783F61D2();
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m07_5310 = this;
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot16, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot10, lua.Table.create([15.87, 0.03, (-14.28)]), 180.0, "npc_main_pa_boss");
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.slot11, lua.Table.create([19.91, 0.02, (-12.01)]), (-126.5), "npc_main_pa_leader");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot8, 15.83, 0.03, (-14.5), 0.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot16, 15.47, 0.03, (-12.82), 180.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot10, 14.76, 0.02, (-16.02), 36.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.slot11, 19.91, 0.02, (-12.01), (-126.5));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([14.87, 1.73, (-15.49)]), lua.Table.create([(-0.58), (-155.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([14.87, 1.2, (-15.49)]), lua.Table.create([(-0.58), (-155.45), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_END");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot16, 22);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5310_talk_01", "main_07_01", this.slot16);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot16, "rejoice_big", "npc_main_co_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot16, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5310_talk_02", "main_07_01", this.slot16);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.slot16, 12.05, 0.03, (-8.85), 0.5);
        this.TimeWait(2.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.68, 1.47, (-13.31)]), lua.Table.create([(-6.57), 5.36, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 14);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m07_5310_talk_03", "main_07_01", this.slot10, null, null, (function():Dynamic
        {
            scenario.TimeWait(1.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(scenario.slot8, "normal", scenario.slot8);
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario.slot8, scenario.slot10);
            return null;
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5310_talk_04", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.18, 1.35, (-15.51)]), lua.Table.create([(-7.48), (-144.81), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.18, 1.48, (-15.51)]), lua.Table.create([(-7.48), (-144.81), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5310_talk_05", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.slot11, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.37, 1.14, (-15.09)]), lua.Table.create([3.26, 33.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([15.37, 1.3, (-15.09)]), lua.Table.create([3.26, 33.48, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot10, 20);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m07_5310_talk_06", "main_07_01", this.slot10);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        this.TimeWait(0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
