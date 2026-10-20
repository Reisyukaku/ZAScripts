package main.event.ik;

@:keep
@:chunk("main")
@:hashAbi("C051A4F1726DB4DE1")
@:expose("C051A4F1726DB4DE1")
class CoroutineExecutor
{
    @:abiSlot(1)
    public var m_coroutine:ti.Coroutine;

    public function new(?func:Dynamic, ?name:Dynamic)
    {
        if (name == null)
        {
            name = "CoroutineExecutor";
        }
        m_coroutine = new ti.Coroutine(func, name);
    }

    @:hashAbi("FEB6685558281F194")
    public function Update(?arg0:Dynamic):Dynamic
    {
        if (lua.Coroutine.status(m_coroutine.m_coroutine) != Dead)
        {
            var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(m_coroutine.m_coroutine, null);
            if (!resume.success)
            {
                throw new haxe.Exception((("!Error ocurred in coroutine[" + Std.string(m_coroutine.Name)) + "]: ") + Std.string(resume.result));
            };
            return false;
        };
        return true;
    }

    @:hashAbi("FA5B8258582A90EF3")
    public function IsFinished():Dynamic
    {
        return m_coroutine == null || lua.Coroutine.status(m_coroutine.m_coroutine) == Dead;
    }
}
