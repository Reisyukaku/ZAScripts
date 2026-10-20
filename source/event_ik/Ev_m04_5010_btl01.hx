package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C1526EFFD2D1A9708")
@:expose("C1526EFFD2D1A9708")
class Ev_m04_5010_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped this.CreateBattleNpc("npc_main_ga_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.slot11, 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.slot11, "serious", "npc_main_ga_leader");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([18.75, 0.73, -10.28]), lua.Table.create([15.96, -55.61, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([19.22, 0.73, -9.59]), lua.Table.create([15.96, -55.61, 0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        untyped this.FE3D21257A15678CA();
        untyped this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "Ev_m04_5010_btl01", "main_04_01", untyped this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped this.FECCD6BC3CF2CA19B();
    }
}
