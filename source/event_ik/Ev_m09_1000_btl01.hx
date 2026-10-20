package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CB044A6DD332FE228")
@:expose("CB044A6DD332FE228")
class Ev_m09_1000_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.CreateBattleNpc("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 491);
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-499.81), 0.67, (-574.08)]), lua.Table.create([20.58, (-142.72), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-500.36), 0.67, (-573.66)]), lua.Table.create([20.58, (-142.72), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.FE3D21257A15678CA();
        this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m09_1000_btl01", "main_09_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
    }
}
