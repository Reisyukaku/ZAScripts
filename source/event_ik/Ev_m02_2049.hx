package event_ik;

import main.event.ik.base.BaseMainScenario;

import main.event.ik.command.IkScriptCommand;
import ext.gf.audio.SoundCommand;

@:keep
@:chunk("event_ik")
@:hashAbi("CC63635AB850DB789")
@:expose("CC63635AB850DB789")
class Ev_m02_2049 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_M12DB_T0");
        var playerPosition = IkScriptCommand.FObj_Set_Pos_Ang("Player", -713.68, 0.01, -891.18, -76.3);
        var rivalPosition = IkScriptCommand.FObj_Set_Pos_Ang("npc_main_rival_m", -714.86, 0.0, -890.88, 105.74);
        IkScriptCommand.Wait_FObj_Action(playerPosition);
        IkScriptCommand.Wait_FObj_Action(rivalPosition);
        IkScriptCommand.FObj_LookAt_Obj("npc_main_rival_m", "Player", "head");
        IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_rival_m", "head");
        SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_RESET");
        IkScriptCommand.Fade_In("transition_fade_inout", 3.0);
        IkScriptCommand.Wait_Fade();
        var rivalAnimation = IkScriptCommand.FObj_Set_Animation("npc_main_rival_m", 22);
        IkScriptCommand.ShowMessage(0, "msg_Ev_m02_2049_talk_01", "main_02_01", "npc_main_rival_m");
        IkScriptCommand.HideMessageWindow();
        IkScriptCommand.Wait_FObj_Action(rivalAnimation);
        SoundCommand.PostEventGlobal("SET_BUS_VOLUME_ENV_ALL_RESET_T2000");
        SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_INIT");
    }
}
