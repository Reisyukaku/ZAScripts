package main.system.coroutine;

import ext.pe.SceneObjectBehavior;

@:keep
@:chunk("main")
@:hashAbi("C9B7AA48465803203")
@:expose("C9B7AA48465803203")
class BaseCoroutineBehaviour extends SceneObjectBehavior
{
    @:abiSlot(2)
    public var m_preUpdateCoroutine:ti.Coroutine;

    @:abiSlot(3)
    public var m_postUpdateCoroutine:ti.Coroutine;

    @:abiSlot(4)
    public var DeltaTime:Dynamic;

    public function new(?obj:Dynamic)
    {
        super(obj);
        var owner:cppbindings.C016374C1 = this.SceneObject;
        var sceneName:String = owner.f462C9B70().fE9C29DA1();
        var namedObject:cppbindings.C016374C1 = this.SceneObject;
        var name:String = ((Std.string(sceneName) + ".") + Std.string(namedObject.fE9C29DA1()));
        this.m_preUpdateCoroutine = new ti.Coroutine(this.preUpdateCoroutine, name);
        this.m_postUpdateCoroutine = new ti.Coroutine(this.postUpdateCoroutine, name);
    }

    @:hashAbi("FE94F3E13286232CF")
    public override function PreUpdate(context:Dynamic):Void
    {
        var timer:cppbindings.C7F7A5192 = untyped (cast context : Dynamic).f88E57203();
        this.DeltaTime = timer.fC0E2CAD0();
        if ((this.m_preUpdateCoroutine == null)) {
            super.PreUpdate(context);
            return;
        };
        var coroutine:ti.Coroutine = this.m_preUpdateCoroutine;
        var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, context);
        if (!resume.success) {
            throw new haxe.Exception(((("!Error ocurred in coroutine[" + Std.string(coroutine.Name)) + "]: ") + Std.string(resume.result)));
        };
    }

    @:hashAbi("F20A40E2F8B95D5F6")
    public override function PostUpdate(context:Dynamic):Void
    {
        if (m_postUpdateCoroutine == null)
        {
            super.PostUpdate(context);
            return;
        }
        var coroutine = m_postUpdateCoroutine;
        var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, context);
        if (!resume.success)
        {
            throw new haxe.Exception("!Error ocurred in coroutine[" + Std.string(coroutine.Name) + "]: " + Std.string(resume.result));
        }
    }

    @:hashAbi("FC4F2A9B9939B80FF")
    public function preUpdateCoroutine(?context:Dynamic):Dynamic
    {
        while (true)
        {
            OnPreUpdate(context);
            suspend();
        }
        return null;
    }

    @:hashAbi("F8EF193657E11BD00")
    public function postUpdateCoroutine(?context:Dynamic):Dynamic
    {
        while (true)
        {
            OnPostUpdate(context);
            suspend();
        }
        return null;
    }

    @:hashAbi("F8996DF23037F23E3")
    public function suspend():Dynamic
    {
        ti.Coroutine.yield();
        return null;
    }

    @:hashAbi("FDCB19E22FE1BB508")
    public function OnPreUpdate(?context:Dynamic):Dynamic
    {
        m_preUpdateCoroutine = null;
        return null;
    }

    @:hashAbi("F7B6FA087F939EA93")
    public function OnPostUpdate(?context:Dynamic):Dynamic
    {
        m_postUpdateCoroutine = null;
        return null;
    }
}
