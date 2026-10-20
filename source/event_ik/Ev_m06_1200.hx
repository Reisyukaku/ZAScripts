package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CA8EFF11E4BBA7227")
@:expose("CA8EFF11E4BBA7227")
class Ev_m06_1200 extends BaseMainScenario
{
    @:abiSlot(8)
    public var CHR_PLY:Dynamic;

    @:abiSlot(9)
    public var CHR_JIPU:Dynamic;

    @:abiSlot(10)
    public var CHR_DEU:Dynamic;

    public function new()
    {
        this.CHR_DEU = "npc_main_friend_f";
        this.CHR_JIPU = "npc_main_co_leader";
        this.CHR_PLY = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_co_leader", "npc_main_friend_f"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Create_Npc_Dynamic(this.CHR_DEU, lua.Table.create([14.96, 0.0, (-19.08)]), (-174.52), "npc_main_friend_f");
        main.event.ik.command.IkScriptCommand.Wait_CreateCharacter();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_JIPU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_DEU, this.CHR_JIPU, "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_JIPU, this.CHR_PLY, "head");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, 14.96, 0.01, (-17.14), (-175.0));
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_JIPU, 14.96, 0.0, (-19.08), 0.41);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_DEU, 14.23, 0.0, (-16.7), 175.33);
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([16.28, 1.16, (-15.09)]), lua.Table.create([0.0, 30.59, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(2, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m06_1200_talk_01", "main_06_01", this.CHR_JIPU);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.FObj_LookAt_End(this.CHR_JIPU);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn(this.CHR_JIPU, 172.52);
        main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
    }
}
