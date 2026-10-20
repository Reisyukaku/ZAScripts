package main.event.ik;

@:keep
@:chunk("main")
@:hashAbi("CCBD0F2C5308FCEEF")
@:expose("CCBD0F2C5308FCEEF")
class ObjectTemplateData
{
    @:abiSlot(1)
    public var slot1:Dynamic;

    @:abiSlot(2)
    public var slot2:Dynamic;

    @:abiSlot(3)
    public var slot3:Dynamic;

    public function new()
    {
        slot3 = false;
        slot2 = null;
        slot1 = null;
    }

    @:hashAbi("F90BBC6B0190BF053")
    public function Init(?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic):Dynamic
    {
        var path:String = arg0;
        var pathComponents:Array<String> = path.split("/");
        var template:{ public var f900312E7(default, null) : Dynamic; } = cppbindings.C451059A3.f5776B6C6((((path + "_/") + pathComponents[(pathComponents.length - 1)]) + ".trsot"));
        while (!lua.abi.Host.truthy(template.f900312E7())) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        var scene:Dynamic = cppbindings.C682D8E4F.fEF94D11D("event_script");
        this.slot1 = untyped (cast scene : Dynamic).f68159593((Std.string(arg1) + "_CreateObjectTemplate"), template);
        while ((!lua.abi.Host.truthy(untyped (cast this.slot1 : Dynamic).f9D8BC178()) || !lua.abi.Host.truthy(untyped (cast this.slot1 : Dynamic).f48F8C7FF()))) {
            main.event.ik.command.IkScriptCommand.Suspend();
        };
        untyped (cast this.slot1 : Dynamic).f8F2B0552(arg2[1], arg2[2], arg2[3]);
        untyped (cast this.slot1 : Dynamic).f24032F87(cppbindings.CD5675BA5.fFA44D7AF(arg3, 0, 0));
        this.slot2 = cppbindings.CECB91E31.fB41FD22F(this.slot1);
        untyped (cast this.slot2 : Dynamic).f6754453E(false);
        cppbindings.C56DE81E7.f2697A3DD(this.slot2, 1, true);
        this.slot3 = true;
        return null;
    }

    public function FE1C4760380E2F0FC():Dynamic
    {
        slot2.f6754453E(true);
        return null;
    }

    @:hashAbi("F1C2AA00ADAC52EC5")
    public function Destroy():Void
    {
        slot1.fCDCB600D(true);
    }
}
