package main.system.coroutine;

@:keep
@:chunk("main")
@:hashAbi("CE9041C201AA7E53F")
@:expose("CE9041C201AA7E53F")
class BaseCoroutineObject
{
    @:abiSlot(1)
    public var slot1:Dynamic;

    @:abiSlot(2)
    public var Name:Dynamic;

    @:abiSlot(3)
    public var JobContext:Dynamic;

    @:abiSlot(4)
    public var m_mainCoroutine:ti.Coroutine;

    public function new(?name:Dynamic)
    {
        Name = name;
        m_mainCoroutine = new ti.Coroutine(mainCoroutineFunc, name);
    }

    @:hashAbi("FEB6685558281F194")
    public function Update(?context:Dynamic):Dynamic
    {
        JobContext = context;
        var coroutine = m_mainCoroutine;
        var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, context);
        if (!resume.success)
        {
            throw new haxe.Exception((("!Error ocurred in coroutine[" + coroutine.Name) + "]: ") + Std.string(resume.result));
        };
        return get_StateInternal() == InternalState.Finished;
    }

    @:hashAbi("FA5B8258582A90EF3")
    public function IsFinished():Dynamic
    {
        return get_StateInternal() == InternalState.Finished;
    }

    @:hashAbi("F9EF8B08DA4FDA9E4")
    public function mainCoroutineFunc():Dynamic
    {
        return null;
    }

    @:hashAbi("F8996DF23037F23E3")
    public function suspend():Dynamic
    {
        ti.Coroutine.yield();
        return null;
    }

    @:hashAbi("F8DC8F70F656F2F35")
    public function timeWait(?second:Dynamic):Dynamic
    {
        var elapsed:StdTypes.Float = 0.0;
        while ((elapsed < second)) {
            ti.Coroutine.yield();
            var timer:cppbindings.C7F7A5192 = untyped (cast this.JobContext : Dynamic).f88E57203();
            elapsed += timer.fC0E2CAD0();
        };
        return null;
    }

    @:hashAbi("FD079E1CF944CF798")
    public function get_StateInternal():Dynamic
    {
        if (m_mainCoroutine == null)
        {
            return InternalState.Finished;
        }
        return switch (lua.Coroutine.status(m_mainCoroutine.m_coroutine))
        {
            case Dead: InternalState.Finished;
            case Normal | Running: InternalState.Running;
            case Suspended: InternalState.Suspended;
            default: InternalState.Unknown;
        };
    }

    @:hashAbi("F2C08B3718BC65B49")
    public function LogInfo(?message:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("F0DA3AEF0C3C42403")
    public function LogWarning(?message:Dynamic):Dynamic
    {
        return null;
    }

    @:hashAbi("FA754F9CFA5FCF7B5")
    public function LogError(?message:Dynamic):Dynamic
    {
        return null;
    }
}
