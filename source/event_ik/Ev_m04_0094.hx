package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C5030032778449EA7")
@:expose("C5030032778449EA7")
class Ev_m04_0094 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath:Dynamic = untyped main.event.ik.command.TextResourceManager.GetTextResourcePath(lua.abi.Host.concat(Std.string("script/"), Std.string("megashards")));
        untyped main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        this.Await((function():Dynamic
        {
            return untyped main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        }));
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("Player", "npc_main_t1_i003_002", "head");
        main.event.ik.command.IkScriptCommand.FObj_LookAt_Obj("npc_main_t1_i003_002", "Player", "head");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Pos_Ang("Player", -4.65, 0.61, 7.3, 0.0));
        main.event.ik.command.IkScriptCommand.Camera_Move_Angle_Fov(0.0, lua.Table.create([-5.6, 2.01, 6.18]), lua.Table.create([-2.87, -151.06, -0.14]), 30.0, 0, main.event.ik.command.IkScriptCommand.EaseCameraType._new((cast(3, Int))), null, null, null);
        main.event.ik.command.IkScriptCommand.Wait_Camera();
        main.event.ik.command.IkScriptCommand.Fade_In("transition_fade_inout");
        main.event.ik.command.IkScriptCommand.Wait_Fade();
        main.event.ik.command.IkScriptCommand.Wait_Time(0.2);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_002", 32);
        main.event.ik.command.IkScriptCommand.Wait_Time(0.3);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0094_talk_01", "main_04_01", "npc_main_t1_i003_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0094_talk_02", "main_04_01", "npc_main_t1_i003_002");
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        var resetAnimation:Dynamic = main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("npc_main_t1_i003_002");
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0094_talk_03", "main_04_01", "npc_main_t1_i003_002");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(resetAnimation);
        main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main_t1_i003_002", 18);
        main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m04_0094_talk_04", "main_04_01", "npc_main_t1_i003_002");
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m04_0094_seelct_01", "msg_Ev_m04_0094_seelct_02"], 0, true, false);
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (0 == selection)
        {
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("Player", 18));
        }
        else
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "megashards_talk_02", "megashards", "npc_main_t1_i003_002");
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout");
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        untyped this.m_resultParam = selection;
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
