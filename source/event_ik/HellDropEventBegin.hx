package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C4C1BD44E901054ED")
@:expose("C4C1BD44E901054ED")
class HellDropEventBegin extends BaseEvent
{
    public function new()
    {
        super();
    }
    @:hashAbi("F9D5677973CCA2F41")
    public override function IsSkipCommonCreateAndEnd():Bool
    {
        return true;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0.5);
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_START");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.PlayerFullRecovery();
        main.event.ik.command.IkScriptCommand.PokemonAllRecovery();
    }
}
