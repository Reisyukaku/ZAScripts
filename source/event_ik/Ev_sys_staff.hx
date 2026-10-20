package event_ik;

@:keep
@:chunk("event_ik")
@:hashAbi("C855B2A4172EE6CFE")
@:expose("C855B2A4172EE6CFE")
class Ev_sys_staff extends main.event.ik.base.BaseSystemEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_staffroll_01"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        FBA1C1BF976296FD5();
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("npc_staffroll_01", "Player");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_staffroll_01");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_staffroll_01", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_staffroll_01", "Player", "head");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_staffrollreplay_talk_01", "staffrollreplay", "npc_staffroll_01");
        var selection = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_staffrollreplay_select_01", "msg_staffrollreplay_select_02"], 0, true, false);
        if (selection == 0)
        {
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_staffrollreplay_talk_05", "staffrollreplay", "npc_staffroll_01");
            if (main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_staffrollreplay_select_03", "msg_staffrollreplay_select_04"], 0, true, false) == 0)
            {
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_staffrollreplay_talk_02", "staffrollreplay", "npc_staffroll_01");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 1.0);
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_MUTE_T1000");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SYS_STAFF_READY");
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.Wait_Time(1.0);
                main.event.ik.command.IkScriptCommand.StartCreditUISequence();
                main.event.ik.command.IkScriptCommand.Wait_Time(3.0);
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_SYS_STAFF_FINISH");
                untyped ext.gf.audio.SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T3000");
                main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout", 2.0);
                main.event.ik.command.IkScriptCommand.Wait_Fade();
                main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_staffrollreplay_talk_04", "staffrollreplay", "npc_staffroll_01");
            }
            else
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_staffrollreplay_talk_03", "staffrollreplay", "npc_staffroll_01");
            };
        }
        else if (selection == 1)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_staffrollreplay_talk_03", "staffrollreplay", "npc_staffroll_01");
        };
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
    }
}
