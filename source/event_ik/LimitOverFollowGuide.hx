package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("CE3260ACF4F394086")
@:expose("CE3260ACF4F394086")
class LimitOverFollowGuide extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    public override function mainBody():Void
    {
        var phase:Dynamic = main.event.ik.command.IkScriptCommand.GetWorkValue("SYS_WORK_PHASE");
        if (((((untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC() != "") && (untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72() != "")) && (untyped (cast this.m_eventScriptParam : Dynamic).fB581866B() != "")) && (untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5() != ""))) {
            var textResourcePath:String = main.event.ik.command.TextResourceManager.GetTextResourcePath(((Std.string(untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC()) + "/") + Std.string(untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72())));
            main.event.ik.command.TextResourceManager.LoadTextResource(textResourcePath);
            this.Await(function():Dynamic {
                return main.event.ik.command.TextResourceManager.IsCompleteLoadingTextResource(textResourcePath);
            });
            if ((phase == 32300)) {
                main.event.ik.command.IkScriptCommand.CreateRotomPhone("Player");
                main.event.ik.command.IkScriptCommand.StartRotomPhoneSequence("Player");
                main.event.ik.command.IkScriptCommand.ShowMessage((cast(Std.parseFloat(untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5()), StdTypes.Int)), untyped (cast this.m_eventScriptParam : Dynamic).fB581866B(), untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72());
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
                main.event.ik.command.IkScriptCommand.PutAwayRotomPhone("Player");
                main.event.ik.command.IkScriptCommand.WaitAnimeRotomPhoneToPutAway("Player");
                main.event.ik.command.IkScriptCommand.TerminateRotomPhoneAll();
            };
            if ((phase != 32300)) {
                main.event.ik.command.IkScriptCommand.ShowMessage((cast(Std.parseFloat(untyped (cast this.m_eventScriptParam : Dynamic).f792B86F5()), StdTypes.Int)), untyped (cast this.m_eventScriptParam : Dynamic).fB581866B(), untyped (cast this.m_eventScriptParam : Dynamic).fBF448F72());
                main.event.ik.command.IkScriptCommand.HideMessageWindow();
            };
            main.event.ik.command.TextResourceManager.UnloadTextResource(textResourcePath);
        };
        var player:Dynamic = main.event.ik.command.IkScriptCommand.GetCharacterAccessorEvent("Player");
        var guide:cppbindings.Vec3 = cppbindings.C56DE81E7.fAFFCA1B3(cppbindings.C56DE81E7.f15CF4437());
        var guideX:Dynamic = guide.x;
        var guidePosition:Dynamic = (if ((guideX == null)) {
            null;
        } else {
            lua.Table.create([guide.x, guide.y, guide.z]);
        });
        if ((guidePosition == null)) {
            cppbindings.C56DE81E7.f15CF4437();
            return;
        };
        main.event.ik.command.IkScriptCommand.FObj_Move_To_PosXYZ_Navi("Player", guidePosition[1], guidePosition[2], guidePosition[3]);
        var elapsed:StdTypes.Float = 0.0;
        do {
            var current:cppbindings.Vec3 = untyped (cast player : Dynamic).f7360ED03();
            if (!(cppbindings.C7A48E3FC.fCAD0B5F8(current.x, current.y, current.z, guidePosition[1], guidePosition[2], guidePosition[3]) >= 196.0)) {
                break;
            };
            elapsed = (elapsed + this.Suspend());
        } while (!(elapsed >= 6.0));
        main.event.ik.command.IkScriptCommand.Wait_FObj_Action(main.event.ik.command.IkScriptCommand.FObj_Reset_Animation("Player"));
    }
}
