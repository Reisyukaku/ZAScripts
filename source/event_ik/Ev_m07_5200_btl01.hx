package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C2AFF5D99E0CAE728")
@:expose("C2AFF5D99E0CAE728")
class Ev_m07_5200_btl01 extends BaseBattleTalkEvent
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
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([15.75, 1.28, -8.05]), lua.Table.create([13.7, -144.42, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([14.97, 1.28, -7.49]), lua.Table.create([13.7, -144.42, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        untyped this.FE3D21257A15678CA();
        untyped this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m07_5200_btl01", "main_07_01", untyped this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped this.FECCD6BC3CF2CA19B();
    }
}
