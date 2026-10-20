package event_ik;

import main.event.ik.base.BaseMainScenario;

@:keep
@:chunk("event_ik")
@:hashAbi("C37C0CF0BFD926A0A")
@:expose("C37C0CF0BFD926A0A")
class Ev_sys_tryagain_mega extends BaseMainScenario
{
    @:abiSlot(8)
    public var mstxt:Dynamic;

    @:abiSlot(9)
    public var isMegaAbusoru:Dynamic;

    public function new()
    {
        untyped (this)[9] = false;
        untyped (this)[8] = "field_event";
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        ext.gf.audio.SoundCommand.ExecuteBGMCommand("SYS_GAMEOVER_START");
        isMegaAbusoru = "spn_boss_0359_01" == cppbindings.C56DE81E7.f2D16DB2F();
        if (lua.abi.Host.truthy(cppbindings.C56DE81E7.f86907004()))
        {
            if (!lua.abi.Host.truthy(isMegaAbusoru))
            {
                m_resultParam = 2;
                return;
            }
        }
        var textResourcePath = main.event.ik.command.TextResourceManager.GetTextResourcePath("script/" + Std.string(mstxt));
        main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
        Await(function():Dynamic
        {
            return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
        });
        var selection:Dynamic = ShowRootContextMenu();
        main.event.ik.command.IkScriptCommand.HideMessageWindow();
        if (selection == 0)
        {
            cppbindings.C56DE81E7.f7F1CB100(true);
            selection = 1;
        }
        else if (selection == 1)
        {
            cppbindings.C56DE81E7.f7F1CB100(true);
            cppbindings.C56DE81E7.f095D3688(true);
        }
        m_resultParam = selection;
        main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
    }
    @:hashAbi("F77426626602B5E40")
    public function ShowRootContextMenu():Dynamic
    {
        var choices = ["msg_fld_rematch_select_01"];
        if (lua.abi.Host.truthy(F2E764B027D0372A8()))
        {
            choices.push("msg_fld_rematch_select_02");
        }
        if (!lua.abi.Host.truthy(isMegaAbusoru))
        {
            choices.push("msg_fld_rematch_select_03");
        }
        if (lua.abi.Host.truthy(isMegaAbusoru))
        {
            choices.push("msg_fld_rematch_select_07");
        }
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fld_rematch_01", mstxt);
        var selection:Dynamic = main.event.ik.command.IkScriptCommand.ShowContextMenu(choices, null, !lua.abi.Host.truthy(isMegaAbusoru), null, null, null, mstxt);
        if (choices[selection] == "msg_fld_rematch_select_07")
        {
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fld_rematch_03", mstxt);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fld_rematch_04", mstxt);
            main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fld_rematch_05", mstxt);
            main.event.ik.command.IkScriptCommand.HideMessageWindow();
            main.event.ik.command.IkScriptCommand.Wait_Time(0.6);
            return ShowRootContextMenu();
        }
        if (choices[selection] == "msg_fld_rematch_select_02")
        {
            selection = ShowConfirmContextMenu();
            if (selection == 2)
            {
                return ShowRootContextMenu();
            }
            var answer:Float = selection;
            selection = 1 - answer;
        }
        else if (choices[selection] == "msg_fld_rematch_select_03")
        {
            selection = 2;
        }
        return selection;
    }
    @:hashAbi("FC7FF0587D4EB7B78")
    public function ShowConfirmContextMenu():Dynamic
    {
        main.event.ik.command.IkScriptCommand.ShowMessage(2, "msg_fld_rematch_02", this.mstxt);
        return untyped main.event.ik.command.IkScriptCommand.ShowContextMenu((["msg_fld_rematch_select_04", "msg_fld_rematch_select_05", "msg_fld_rematch_select_06"]), null, true, null, null, null, this.mstxt);
    }
    public function F2E764B027D0372A8():Dynamic
    {
        return untyped (lua.abi.Host.global("c56DE81E7"))["fAD65EBBE"]();
        
    }
}
