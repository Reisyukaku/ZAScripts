package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C6BED7189DB23B9EF")
@:expose("C6BED7189DB23B9EF")
class Ev_m04_3620_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped this.CreateBattleNpc("npc_main_friend_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(untyped this.slot11, 491);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(untyped this.slot11, "serious", "npc_main_friend_m");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-667.62, 0.81, -882.3]), lua.Table.create([21.69, 57.9, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([-667.26, 0.81, -882.87]), lua.Table.create([21.69, 57.9, -0.0]), 40.0, 0, (main.event.ik.command.IkScriptCommand.EaseCameraType._new((untyped cast(2, Int)))));
        untyped this.FE3D21257A15678CA();
        untyped this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_3620_btl01", "main_04_01", untyped this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
    }
}
