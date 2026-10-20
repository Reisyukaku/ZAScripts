package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C455906C47EF53A86")
@:expose("C455906C47EF53A86")
class Ev_sys_kaifuku extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/npc_event");
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.SB0C5B91E6DF243A1("npc_Kaifuku_01", false);
        main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -509.74, 0.01, -205.61, -28.0);
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle(0.0, lua.Table.create([-509.96, 1.37, -205.22]), lua.Table.create([0.0, 150.66, -0.0]), 40.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))));
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        if (false == main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_sys_kaifuku"))
        {
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_Kaifuku_01", "rejoice_small_mc");
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_A04_z03_01_talk_0031", "npc_event", "npc_Kaifuku_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_Kaifuku_01", "normal");
            main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
            main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_Kaifuku_01", "rejoice_small_mc");
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_A04_z03_01_talk_0030", "npc_event", "npc_Kaifuku_01");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.FObj_Set_AutoBlink("npc_Kaifuku_01", false);
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            main.event.ik.command.IkScriptCommand.PokemonRecoveryQuick();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.5);
            untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_Kaifuku_01", "rejoice_small_mc");
        };
        main.event.ik.command.IkScriptCommand.WordSet_Name_Mons(2, (cast(main.event.ik.command.IkScriptCommand.GetPlayerPartyUnitParam(0).f0DE6FCA9(), Int)));
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_A04_z03_01_talk_0032", "npc_event", "npc_Kaifuku_01");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.8);
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
