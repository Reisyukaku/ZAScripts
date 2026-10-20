package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C8BBAB061CC6E902F")
@:expose("C8BBAB061CC6E902F")
class ExecuteShopEvent extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var shopType = Std.parseInt(m_eventScriptParam.f73EE8FEC());
        if (shopType == null)
        {
            return;
        }
        // The latest script checks this native field itself, without calling it.
        var coordinationState:Dynamic = cppbindings.C56DE81E7.fA1E99554;
        if ((shopType == 11 || shopType == 16) && lua.abi.Host.truthy(coordinationState))
        {
            var coordinationText = main.event.ik.command.TextResourceManager.GetTextResourcePath(Std.string("script/") + Std.string("coordination"));
            main.event.ik.command.TextResourceManager.LoadTextResource(coordinationText);
            this.Await(function():Dynamic
            {
                return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(coordinationText);
            });
            main.event.ik.command.IkScriptCommand.ShowMessageWindow(2, "msg_coordination_talk_13", "coordination");
            var answer:Dynamic = main.event.ik.command.IkScriptCommand.ShowMessageAndContext("msg_coordination_talk_12", "coordination", null, ["msg_coordination_select_05", "msg_coordination_select_06"], null, 2);
            if (answer == 1)
            {
                main.event.ik.command.TextResourceManager.UnloadTextResource(coordinationText);
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                return;
            }
            cppbindings.C56DE81E7.f1DC39B3A();
            main.event.ik.command.TextResourceManager.UnloadTextResource(coordinationText);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
        }
        var coordinationShop = shopType == 11 || shopType == 16 || shopType == 8 || shopType == 9;
        if (coordinationShop)
        {
            cppbindings.C56DE81E7.f1C078070();
        }
        var fadeType = "transition_fade_inout";
        var useFade = true;
        // Each comparison deliberately queries the current parameter object again.
        if (m_eventScriptParam.fB581866B() == "White")
        {
            fadeType = "White";
        }
        else if (m_eventScriptParam.fB581866B() == "Black")
        {
            fadeType = "transition_fade_inout";
        }
        else if (m_eventScriptParam.fB581866B() == "None")
        {
            useFade = false;
        }
        else
        {
            m_eventScriptParam.fB581866B();
            return;
        }
        if (m_eventScriptParam.f2E8493BA() != "")
        {
            var message:Array<String> = (m_eventScriptParam.f2E8493BA() : String).split(",");
            var textPath = message[0].split("/");
            var resource = main.event.ik.command.TextResourceManager.GetTextResourcePath(message[0]);
            main.event.ik.command.TextResourceManager.LoadTextResource(resource);
            this.Await(function():Dynamic
            {
                return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(resource);
            });
            main.event.ik.command.IkScriptCommand.ShowMessageWindow(0, message[1], textPath[1]);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.TextResourceManager.UnloadTextResource(resource);
        }
        m_eventScriptParam.fBF448F72();
        m_eventScriptParam.f792B86F5();
        m_eventScriptParam.fF7A48116();
        m_eventScriptParam.f3B0E8188();
        m_eventScriptParam.fE22E9324();
        if (m_eventScriptParam.f792B86F5() == "None")
        {
            m_eventScriptParam.fE16CC678("");
        }
        if (m_eventScriptParam.fF7A48116() == "None")
        {
            m_eventScriptParam.f6FE3C19B("");
        }
        if (useFade)
        {
            main.event.ik.command.IkScriptCommand.OpenAnyShopWithFadeAndSE(cast(shopType, Int), m_eventScriptParam.fBF448F72(), fadeType, m_eventScriptParam.f792B86F5(), m_eventScriptParam.fF7A48116(), m_eventScriptParam.f3B0E8188(), m_eventScriptParam.fE22E9324());
        }
        else
        {
            main.event.ik.command.IkScriptCommand.OpenAnyShopWithSE(cast(shopType, Int), m_eventScriptParam.fBF448F72(), m_eventScriptParam.f792B86F5(), m_eventScriptParam.fF7A48116(), m_eventScriptParam.f3B0E8188(), m_eventScriptParam.fE22E9324());
        }
        if (coordinationShop)
        {
            cppbindings.C56DE81E7.f3F560E75();
        }
    }
}
