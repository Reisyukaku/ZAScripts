package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C20C4EFF0D3C74BC3")
@:expose("C20C4EFF0D3C74BC3")
class GameOverEventBegin extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_START");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
        var textResource:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/pokemoncenter");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResource);
        this.Await(function():StdTypes.Bool return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResource));
        var hasConsciousPokemon:StdTypes.Bool = false;
        var count:StdTypes.Int = main.event.ik.command.IkScriptCommand.GetPokemonCount_Party();
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayIndex2:StdTypes.Int = count;
            while ((arrayIndex < arrayIndex2)) {
                var index:StdTypes.Int = arrayIndex++;
                var pokemon:cppbindings.CDB937D14 = main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(index);
                pokemon.f0DE6FCA9();
                pokemon.fB00EF8D7();
                if (!pokemon.fFEA012DE()) {
                    hasConsciousPokemon = true;
                    break;
                };
            };
        };
        var message:String = (if (hasConsciousPokemon) {
            "msg_gameover_gameover_03";
        } else {
            "msg_gameover_gameover_02";
        });
        main.event.ik.command.IkScriptCommand.ShowMessage(2, message, "pokemoncenter");
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_ALL");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.PlayerFullRecovery();
        main.event.ik.command.IkScriptCommand.PokemonAllRecovery();
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResource);
    }
}
