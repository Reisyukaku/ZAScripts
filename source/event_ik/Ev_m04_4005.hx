package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CBB02BE48342F503D")
@:expose("CBB02BE48342F503D")
class Ev_m04_4005 extends BaseSubQuest
{
    @:abiSlot(8)
    public var CHR_MOB:Dynamic;

    @:abiSlot(9)
    public var CHR_PLY:Dynamic;

    public function new()
    {
        this.CHR_PLY = "npc_main04_0003";
        this.CHR_MOB = "Player";
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main04_0003"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var firstMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("1" == firstMode)))
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4005_talk_01", "main_04_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB, untyped -90.0, 0.15, untyped -387.65, 166.0);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
            main.event.ik.command.IkScriptCommand.Wait_Time(4.0);
        };
        var secondMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if ((("2" == secondMode)))
        {
            main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj(this.CHR_PLY, this.CHR_MOB, "head");
            main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj(this.CHR_PLY, this.CHR_MOB);
            main.event.ik.command.IkScriptCommand.ShowMessage(1, "msg_Ev_m04_4005_talk_03", "main_04_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_MUTE_T0");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.1, true);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_MOB, -90.0, 0.15, -387.65, 166.0);
            main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang(this.CHR_PLY, untyped -89.09, 0.14, untyped -390.36, untyped -14.26);
            untyped main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        };
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-87.52, 1.44, -385.03]), lua.Table.create([-5.05, 27.02, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_WITHOUT_ENV_RESET_T0");
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.1, true);
        this.TimeWait(0.5);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_4005_talk_02", "main_04_01", "npc_main04_0003");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ResetToFieldCamera(0.7);
        main.event.ik.command.IkScriptCommand.Wait_ResetToFieldCamera();
    }
}
