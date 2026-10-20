package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C51401B917E814551")
@:expose("C51401B917E814551")
class Ev_sys_kakera extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("F3D2BC949D2E00A34")
    public override function OnCreate():Dynamic
    {
        untyped this.Participants = (["npc_main_t1_i003_002"]);
        return null;
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 1);
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj_LookAt("Player", "npc_main_t1_i003_002");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_t1_i003_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_t1_i003_002", "Player", "head");
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath("script/megashards");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "megashards_talk_01", "megashards", "npc_main_t1_i003_002");
        var selection:Dynamic = untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["megashards_seelct_01", "megashards_seelct_02"]), 0, true, false, null, null, "megashards");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
        }
        else if (1 == selection)
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "megashards_talk_02", "megashards", "npc_main_t1_i003_002");
        };
        untyped this.m_resultParam = selection;
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
