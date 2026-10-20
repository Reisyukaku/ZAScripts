package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C0E3A812440FB3A1A")
@:expose("C0E3A812440FB3A1A")
class Ev_m05_3000_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped this.CreateBattleNpc("npc_main_ju_boss");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.slot11, 491);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-687.21, 7.37, -510.16]), lua.Table.create([14.84, 16.77, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-686.33, 7.37, -510.42]), lua.Table.create([14.84, 16.77, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        untyped this.FE3D21257A15678CA();
        untyped this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.slot11, 346);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_3000_btl01", "main_05_01", untyped this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped this.FECCD6BC3CF2CA19B();
    }
}
