package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CDEF84BD3F07862EE")
@:expose("CDEF84BD3F07862EE")
class Ev_m06_2510_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.CreateBattleNpc("npc_main_ju_leader");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 1);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "anger", "npc_main_ju_leader");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-647.18), 0.87, (-198.08)]), lua.Table.create([26.03, (-94.55), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-647.24), 0.87, (-197.44)]), lua.Table.create([26.03, (-94.55), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.FE3D21257A15678CA();
        this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 14);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_2510_btl01", "main_06_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        this.FECCD6BC3CF2CA19B();
    }
}
