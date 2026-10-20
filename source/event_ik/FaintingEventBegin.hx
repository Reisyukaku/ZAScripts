package event_ik;

import main.event.ik.command.IkScriptCommand;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CD50319E94DF2C525")
@:expose("CD50319E94DF2C525")
class FaintingEventBegin extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var partyLost:StdTypes.Bool = ("ZaPlayerPartyNotCanBattle" == untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC());
        if (!partyLost) {
            cppbindings.CDDCCFBA7.f1B77253E("player_defeat_cnt", 1);
            main.event.ik.command.IkScriptCommand.PostEventGlobal("PLAY_BA_SYS_PL_DEAD");
        };
        var faintingAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 147);
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("common/gameover");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        main.event.ik.command.IkScriptCommand.Wait_Time(2.0);
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        if (!partyLost) {
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_START_SHORT_FADE");
        } else {
            ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_START");
        };
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 2.0);
        if (!partyLost) {
            ext.gf.audio.SoundCommand.PostEventGlobal("PLAY_ME_IK_M_GAMEOVER");
        };
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        this.Await(function():Dynamic {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(faintingAnimation);
        var gameoverAnimation:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 148);
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "BTL_STRID_STD_LoseEnd", "gameover");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(gameoverAnimation);
        main.event.ik.command.IkScriptCommand.PlayerFullRecovery();
        main.event.ik.command.IkScriptCommand.PokemonAllRecovery();
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
