package event_ik;

import main.event.ik.base.BaseBattleTalkEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CD227CD028AF29BED")
@:expose("CD227CD028AF29BED")
class Ev_m02_0030_btl01 extends BaseBattleTalkEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        this.CreateBattleNpc("npc_main_rival_m");
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.slot11, 2);
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate(this.slot11, "battle", "npc_main_rival_m");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_M24DB_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_M24DB_T500");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-667.36), 1.15, (-882.52)]), lua.Table.create([10.05, 71.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.3, lua.Table.create([(-667.15), 1.15, (-883.14)]), lua.Table.create([10.05, 71.67, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        this.FE3D21257A15678CA();
        this.StartBattleLineEff();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, this.GetRivalText(), "main_02_01", this.slot11);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.OpenTips("tips_1020");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_BATTLE_SYSTEM_RESET_T500");
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_PM_RESET_T1000_DELAY500");
        main.event.ik.command.IkScriptCommand.Wait_Camera();
    }

    @:hashAbi("F513FE6669D290F42")
    public function GetRivalText():Dynamic
    {
        var initialChoice = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_INITIAL_SELECT_POKEMON");
        if (initialChoice == 1)
        {
            return "msg_Ev_m02_0030_btl01_talk_02";
        }
        if (initialChoice == 2)
        {
            return "msg_Ev_m02_0030_btl01_talk_03";
        }
        return "msg_Ev_m02_0030_btl01_talk_01";
    }
}
