package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CA32510B931CB8EB5")
@:expose("CA32510B931CB8EB5")
class Ev_m02_2090_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.CreateBattleNpc("npc_trainer_rankZ_rankup");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "serious", "npc_trainer_rankZ_rankup");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-866.52), 1.35, (-831.18)]), lua.Table.create([11.98, (-5.28), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-865.83), 1.35, (-831.11)]), lua.Table.create([11.98, (-5.28), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.FE3D21257A15678CA();
        this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2090_btl01", "main_02_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
    }
}
