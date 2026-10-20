package event_ik;

import main.event.ik.base.BaseSubQuest;

@:keep
@:chunk("event_ik")
@:hashAbi("CF14211D82BE22B19")
@:expose("CF14211D82BE22B19")
class Ev_sub_112_010 extends BaseSubQuest
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_sub112_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_MUTE_T1000");
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", (-504.72), 0.16, (-769.06), 128.01);
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_sub112_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_sub112_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([(-503.99), 1.01, (-771.47)]), lua.Table.create([7.14, 179.94, 0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 0.25);
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_010_talk_01", "sub_112", "npc_sub112_002");
        untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_Ev_sub_112_010_select_01", "msg_Ev_sub_112_010_select_02"]), 0, false, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_010_talk_02", "sub_112", "npc_sub112_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_010_talk_03", "sub_112", "npc_sub112_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_010_talk_04", "sub_112", "npc_sub112_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_010_talk_05", "sub_112", "npc_sub112_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_sub_112_010_talk_06", "sub_112", "npc_sub112_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_AUDIENCE_RESET_T3000");
    }
}
