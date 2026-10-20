package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C11C621234AE7574F")
@:expose("C11C621234AE7574F")
class Ev_m05_1100_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped this.CreateBattleNpc("npc_main05_0001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.slot11, 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.slot11, "serious", "npc_main05_0001");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.06, 7.13, -510.81]), lua.Table.create([20.68, 14.21, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-686.44, 7.13, -510.97]), lua.Table.create([20.68, 14.21, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        untyped this.FE3D21257A15678CA();
        untyped this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m05_1100_btl01", "main_05_01", untyped this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
    }
}
