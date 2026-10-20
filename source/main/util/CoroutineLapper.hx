package main.util;

import ext.pe.SceneObjectBehavior;

@:keep
@:chunk("main")
@:hashAbi("C652C225D53D1B872")
@:expose("C652C225D53D1B872")
class CoroutineLapper extends SceneObjectBehavior
{
    @:abiSlot(2)
    public var m_scriptComponent:cppbindings.CCF781FB6;

    @:abiSlot(3)
    public var m_col:Array<ti.Coroutine>;

    @:abiSlot(4)
    public var m_elapsedSeconds:Float;

    @:hashAbi("S7D1E199BBD384D72")
    public static var instance:CoroutineLapper;

    public function new(?obj:Dynamic)
    {
        super(obj);
        m_elapsedSeconds = 0;
        m_col = [];
        instance = this;
    }

    @:hashAbi("S511DEF29717431A3")
    public static function get_instance():Dynamic
    {
        return instance;
    }

    @:hashAbi("F7C68FEDB79AB6396")
    public override function Setup(context:Dynamic):Void
    {
        this.m_scriptComponent = cppbindings.CCF781FB6.fB41FD22F(this.SceneObject);
    }

    @:hashAbi("F6BB6C94367FB8083")
    public function Regist(?func:Dynamic, ?errorMessage:Dynamic):Dynamic
    {
        var ownerSnapshot:main.util.CoroutineLapper = this;
        var coroutine:ti.Coroutine = new ti.Coroutine(func, ("CoroutineLapper." + Std.string(errorMessage)));
        if ((this.m_scriptComponent != null)) {
            this.m_scriptComponent.f71FAA9DF(false);
        };
        this.m_col.push(coroutine);
        return function():Dynamic {
            return ownerSnapshot.Unregist(coroutine);
        };
    }

    @:hashAbi("F15FE998D8B2A4634")
    public function Unregist(?col:Dynamic):Dynamic
    {
        return m_col.remove(col);
    }

    @:hashAbi("FE94F3E13286232CF")
    public override function PreUpdate(context:Dynamic):Void
    {
        var timer:cppbindings.C7F7A5192 = untyped (cast context : Dynamic).f88E57203();
        this.m_elapsedSeconds = timer.fC0E2CAD0();
        if ((this.m_col.length == 0)) {
            if ((this.m_scriptComponent != null)) {
                this.m_scriptComponent.f71FAA9DF(true);
            };
            return;
        };
        var active:Array<ti.Coroutine> = [];
        {
            var arrayIndex:StdTypes.Int = 0;
            var arrayValues:Array<ti.Coroutine> = this.m_col;
            while ((arrayIndex < arrayValues.length)) {
                var coroutine:ti.Coroutine = arrayValues[arrayIndex];
                ++arrayIndex;
                if ((coroutine == null)) {
                    continue;
                };
                if ((lua.Coroutine.status(coroutine.m_coroutine) == (cast "suspended"))) {
                    var resume:lua.Coroutine.CoroutineResume<Dynamic> = lua.Coroutine.resume(coroutine.m_coroutine, null);
                    if (!resume.success) {
                        throw new haxe.Exception(((("!Error ocurred in coroutine[" + Std.string(coroutine.Name)) + "]: ") + Std.string(resume.result)));
                    };
                    active.push(coroutine);
                } else {
                    lua.Coroutine.status(coroutine.m_coroutine);
                };
            };
        };
        this.m_col = active;
    }

    @:hashAbi("F1C2AA00ADAC52EC5")
    public override function Destroy():Void
    {
        super.Destroy();
        m_col = null;
        instance = null;
    }
}
