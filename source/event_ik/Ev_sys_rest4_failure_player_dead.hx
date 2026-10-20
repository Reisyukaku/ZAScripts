package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C09CB65D0F5B22DA8")
@:expose("C09CB65D0F5B22DA8")
class Ev_sys_rest4_failure_player_dead extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_t1_i004d_0001"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        cppbindings.CDDCCFBA7.f1B77253E("player_defeat_cnt", 1);
        main.event.ik.command.IkScriptCommand.PostEventGlobal("PLAY_BA_SYS_PL_DEAD");
        var animationHandle:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 147);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_START_SHORT_FADE");
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
        ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_GAMEOVER");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        animationHandle = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 148);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_restaurant_01_talk_15", "restaurant");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(animationHandle);
        main.event.ik.command.IkScriptCommand.PlayerFullRecovery();
        main.event.ik.command.IkScriptCommand.PokemonAllRecovery();
    }
}
