package ext.pe;

@:keep
@:chunk("main")
@:hashAbi("C3B091777E3EC94A5")
@:expose("C3B091777E3EC94A5")
class SceneObjectBehaviorManager
{
    @:hashAbi("S3AB27FFAF33EFD2D")
    public static var s_behaviorMap:haxe.ds.IntMap<SceneObjectBehavior> = new haxe.ds.IntMap();

    @:hashAbi("S816A9F7B93725A56")
    public static function AddBehavior(sceneObject:cppbindings.C016374C1, behavior:SceneObjectBehavior):Void
    {
        ext.pe.SceneObjectBehaviorManager.s_behaviorMap.set(sceneObject.fB3CF1DEB(), behavior);
    }

    @:hashAbi("S9946B6DB257AEBC4")
    public static function GetBehaviorFromSceneObject(sceneObject:cppbindings.C016374C1):SceneObjectBehavior
    {
        return ext.pe.SceneObjectBehaviorManager.s_behaviorMap.get(sceneObject.fB3CF1DEB());
    }

    @:hashAbi("S7C68FEDB79AB6396")
    public static function Setup(objectId:Int, context:Dynamic):Void
    {
        var behavior = s_behaviorMap.get(objectId);
        if (behavior != null) behavior.Setup(context);
    }

    @:hashAbi("SE94F3E13286232CF")
    public static function PreUpdate(objectId:Int, context:Dynamic):Void
    {
        var behavior = s_behaviorMap.get(objectId);
        if (behavior != null) behavior.PreUpdate(context);
    }

    @:hashAbi("S20A40E2F8B95D5F6")
    public static function PostUpdate(objectId:Int, context:Dynamic):Void
    {
        var behavior = s_behaviorMap.get(objectId);
        if (behavior != null) behavior.PostUpdate(context);
    }

    @:hashAbi("S1C2AA00ADAC52EC5")
    public static function Destroy(objectId:Int):Void
    {
        var behavior = s_behaviorMap.get(objectId);
        if (behavior != null) behavior.Destroy();
        s_behaviorMap.remove(objectId);
    }
}
