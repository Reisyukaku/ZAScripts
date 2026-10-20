package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C3CFD5BC023B48891")
@:expose("C3CFD5BC023B48891")
class Ev_m09_1100 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_m09_1100_replace", true);
        main.event.ik.command.IkScriptCommand.UpdateReplace();
        main.event.ik.command.IkScriptCommand.WaitReplace();
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_secretary", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_friend_f", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_friend_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_pokemon_floette", false);
        var firstTextResourcePath:Dynamic = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/demo_30");
        main.event.ik.command.TextResourceManager.LoadTextResource(firstTextResourcePath);
        this.Await((function():Dynamic {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(firstTextResourcePath);
        }));
        var secondTextResourcePath:Dynamic = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/demo_31");
        main.event.ik.command.TextResourceManager.LoadTextResource(secondTextResourcePath);
        this.Await((function():Dynamic {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(secondTextResourcePath);
        }));
        this.PlayDemo("ik_demo/ev/d030/d030.trtml");
        main.event.ik.command.TextResourceManager.UnloadTextResource(firstTextResourcePath);
        main.event.ik.command.TextResourceManager.UnloadTextResource(secondTextResourcePath);
        cppbindings.C5090F7B8.f92941AC0("flag_Ev_m09_1100_replace", false);
    }
}
