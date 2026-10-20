package event_ik;

import main.event.ik.base.BaseEvent;

@:keep
@:chunk("event_ik")
@:hashAbi("C874B11942EE9BF14")
@:expose("C874B11942EE9BF14")
class RoyaleEndDemoPlay extends BaseEvent
{
    public function new()
    {
        super();
    }

    @:hashAbi("FD8D5F3745B4B5174")
    override public function mainBody():Void
    {
        var fadeMode:Dynamic = untyped (cast this.m_eventScriptParam : Dynamic).f73EE8FEC();
        if ((fadeMode == "withFade")) {
            main.event.ik.command.IkScriptCommand.FadeOutType(7);
            main.event.ik.command.IkScriptCommand.SC5474EFF39852D51("transition_fade_inout");
            var fadeScene:StdTypes.Null<Dynamic> = cppbindings.C56DE81E7.f43ACAE39(0);
            main.event.ik.command.IkScriptCommand.UnloadFadeAnimationScene(fadeScene);
            main.event.ik.command.IkScriptCommand.ReturnPartnerPoke();
            main.event.ik.command.IkScriptCommand.Suspend();
            cppbindings.C56DE81E7.f8C1701EE();
            cppbindings.C56DE81E7.fB773E582(4, 0, 5);
        } else {
            main.event.ik.command.IkScriptCommand.Fade_Out("transition_fade_inout", 0);
            main.event.ik.command.IkScriptCommand.Wait_Fade();
        };
        cppbindings.C56DE81E7.fD9E4D9DC();
        cppbindings.C56DE81E7.fD59F060C(false);
        var position:lua.Table<Int, Float> = (cast main.event.ik.command.IkScriptCommand.FObj_Get_Pos("Player"));
        var angle:StdTypes.Null<Dynamic> = main.event.ik.command.IkScriptCommand.FObj_Get_Angle("Player");
        var mapName:Dynamic = main.event.ik.command.IkScriptCommand.GetCurrentMapName();
        if ((mapName == null)) {
            mapName = "t1";
        };
        cppbindings.C56DE81E7.f86B27023(1);
        this.Suspend();
        while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.f0162B8B1())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var demoPath:String = "ik_demo/ee/ee801/ee801.trtml";
        if ((cppbindings.C56DE81E7.f0B974793() == 0)) {
            demoPath = "ik_demo/ee/ee802/ee802.trtml";
        };
        this.PlayDemo(demoPath, false);
        cppbindings.C56DE81E7.fBE7DF2C6();
        var remaining:Dynamic = cppbindings.C56DE81E7.f0B974793();
        if ((remaining != 0)) {
            this.Suspend();
            while (!lua.abi.Host.truthy(cppbindings.C56DE81E7.fC65E3809())) {
                this.Suspend();
            };
        };
        cppbindings.C56DE81E7.fEB163E0F();
        main.event.ik.command.IkScriptCommand.EventMapChange(mapName, (cast position)[1], (cast position)[2], (cast position)[3], 0, angle, 0);
        cppbindings.C56DE81E7.f1BE43319();
    }
}
