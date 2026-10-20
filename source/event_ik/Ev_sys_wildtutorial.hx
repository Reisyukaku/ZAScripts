package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("CAC3B62B6F9567F4E")
@:expose("CAC3B62B6F9567F4E")
class Ev_sys_wildtutorial extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.Camera_SetEasy_AnyAngle_Template("npc_main_rival_m", 6);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.9);
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        var eventMode:Dynamic = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        if ((("0" == eventMode))) {
            cppbindings.CDDCCFBA7.f1B77253E("player_defeat_cnt", 1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0136a_talk_20", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        eventMode = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        if ((("1" == eventMode))) {
            cppbindings.CDDCCFBA7.f1B77253E("battle_defeat_cnt", 1);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m02_0136a_talk_10", "main_02_01", "npc_main_rival_m");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        };
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", true);
    }
}
