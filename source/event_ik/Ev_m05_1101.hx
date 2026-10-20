package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C10220C66640AC33A")
@:expose("C10220C66640AC33A")
class Ev_m05_1101 extends BaseMainScenario
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/main_05_01");
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        main.event.ik.command.IkScriptCommand.Camera_Easy_Normal("Player", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("Player", "npc_main05_0001");
        main.event.ik.command.IkScriptCommand.FObj_Set_Turn_To_Obj("npc_main05_0001", "Player");
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action();
        main.event.ik.command.IkScriptCommand.S522136910C73A819("Player");
        main.event.ik.command.IkScriptCommand.S522136910C73A819("npc_main05_0001");
        var secondAttempt:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m05_1100_2nd");
        var completed:Dynamic = main.event.ik.command.IkScriptCommand.GetFlagValue("flag_Ev_m05_1101");
        if ((false == secondAttempt))
        {
            if ((true == completed))
            {
                var entryMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
                if (("1" == entryMode))
                {
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 19));
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1101_talk_02", "main_05_01", "npc_main05_0001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped this.m_resultParam = 2;
                }
                else
                {
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1101_talk_01", "main_05_01", "npc_main05_0001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    var greetingAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 18);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1101_talk_03", "main_05_01", "npc_main05_0001");
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(greetingAnimation);
                };
            };
            if ((false == completed))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1101_talk_01", "main_05_01", "npc_main05_0001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                var entryMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
                if (("1" == entryMode))
                {
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 19));
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1101_talk_02", "main_05_01", "npc_main05_0001");
                    main.event.ik.command.IkScriptCommand.HideMessageWindow();
                    untyped this.m_resultParam = 2;
                }
                else
                {
                    var greetingAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 18);
                    main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1101_talk_03", "main_05_01", "npc_main05_0001");
                    main.event.ik.command.IkScriptCommand.Wait_FObj_Action(greetingAnimation);
                };
            };
        };
        var resumeMode:Dynamic = untyped m_eventScriptParam.f73EE8FEC();
        if (("1" != resumeMode))
        {
            untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_BGM_04_LOW");
            var battleAnimation = main.event.ik.command.IkScriptCommand.FObj_Set_Animation("npc_main05_0001", 20);
            main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_10", "main_05_01", "npc_main05_0001");
            var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(["msg_Ev_m05_1100_select_03", "msg_Ev_m05_1100_select_04"], 0, true, false);
            main.event.ik.command.IkScriptCommand.Wait_FObj_Action(battleAnimation);
            if ((0 == selection))
            {
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_09", "main_05_01", "npc_main05_0001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_CMN_VS_READY_03");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_VS_READY");
                main.event.ik.command.IkScriptCommand.FadeOutType(7);
                untyped this.m_resultParam = selection;
            }
            else
            {
                untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "sad2");
                main.event.ik.command.IkScriptCommand.ShowMessage(0, "msg_Ev_m05_1100_talk_08", "main_05_01", "npc_main05_0001");
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("EV_STOP_LYER_EVENT_LOW");
                untyped ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_SE_BLOCK_WITHOUT_ENV");
                untyped this.m_resultParam = selection;
            };
        };
        untyped main.event.ik.command.IkScriptCommand.SetFacialTemplate("npc_main05_0001", "normal");
        untyped main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
}
