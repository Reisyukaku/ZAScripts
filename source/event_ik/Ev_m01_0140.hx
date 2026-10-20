package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C6404E473C47061E0")
@:expose("C6404E473C47061E0")
class Ev_m01_0140 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("Player", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main_rival_m", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main01_0004", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main01_0005", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("npc_main01_0006", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main10400_poke_1", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main10400_poke_2", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Visibility("main10400_poke_3", false);
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/demo_04");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        this.PlayDemo("ik_demo/ev/d004/d004.trtml");
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
