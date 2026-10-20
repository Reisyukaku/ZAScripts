package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CCADD1DB65DBBD0B8")
@:expose("CCADD1DB65DBBD0B8")
class Ev_m03_0036 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_RIV:Dynamic;

    public function new()
    {
        this.CHR_RIV = "npc_main_rival_m";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_rival_m"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var scenario:Ev_m03_0036 = this;
        var lookTarget:Dynamic = lua.Table.create([(-644.44), 25.0, (-785.0)]);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, (-646.63), 16.38, (-790.06), (-19.87));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_RIV, (-646.96), 16.38, (-788.37), 169.38);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_RIV, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-647.72), 17.29, (-791.84)]), lua.Table.create([9.95, (-152.83), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-647.93), 17.29, (-791.73)]), lua.Table.create([9.95, (-152.83), (-0.0)]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_RIV, false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation(this.CHR_RIV, 200);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0036_talk_01", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation(this.CHR_RIV));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_RIV, lookTarget);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_RIV, 46.0);
        main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink(this.CHR_RIV, true);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(2.0, lua.Table.create([(-647.58), 17.54, (-791.06)]), lua.Table.create([10.99, (-153.23), 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Pos(this.CHR_PLY, lookTarget);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m03_0036_talk_02", "main_03_01", this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.ShowMessageWithDisplayingAction(0, "msg_Ev_m03_0036_talk_03", "main_03_01", this.CHR_RIV, null, null, (function():Dynamic
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_RIV, scenario.CHR_PLY, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(scenario.CHR_RIV, scenario.CHR_PLY);
            scenario.TimeWait( 1.0);
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(scenario.CHR_PLY, scenario.CHR_RIV, "head");
            return null;
        }));
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_RIV);
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ(this.CHR_RIV, (-650.47), 16.27, (-783.36), 2.0);
        this.TimeWait(1.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5, true);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility(this.CHR_RIV, false);
    }
}
