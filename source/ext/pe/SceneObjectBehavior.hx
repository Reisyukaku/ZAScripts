package ext.pe;

@:keep
@:chunk("main")
@:hashAbi("CDC3F92928A2194E6")
@:expose("CDC3F92928A2194E6")
class SceneObjectBehavior
{
    @:abiSlot(1)
    public var SceneObject:Dynamic;

    public function new(sceneObject:Dynamic)
    {
        this.SceneObject = sceneObject;
        ext.pe.SceneObjectBehaviorManager.AddBehavior(sceneObject, this);
    }

    @:hashAbi("F7C68FEDB79AB6396")
    public function Setup(context:Dynamic):Void
    {
    }

    @:hashAbi("FE94F3E13286232CF")
    public function PreUpdate(context:Dynamic):Void
    {
        var component:StdTypes.Null<cppbindings.CCF781FB6> = cppbindings.CCF781FB6.fB41FD22F(this.SceneObject);
        if ((component != null)) {
            component.fF327F826(true);
        };
    }

    @:hashAbi("F20A40E2F8B95D5F6")
    public function PostUpdate(context:Dynamic):Void
    {
        var component:StdTypes.Null<cppbindings.CCF781FB6> = cppbindings.CCF781FB6.fB41FD22F(this.SceneObject);
        if ((component != null)) {
            component.f0F5E6083(true);
        };
    }

    @:hashAbi("F1C2AA00ADAC52EC5")
    public function Destroy():Void
    {
    }
}
