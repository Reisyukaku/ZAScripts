package main.util.tween;

import cppbindings.CDD53B308 as TweenQuaternion;
import cppbindings.C3FB42236 as GameObject;
import main.system.coroutine.BaseCoroutineObject;

@:keep
@:chunk("main")
@:hashAbi("C4DAB8BD72937B594")
@:expose("C4DAB8BD72937B594")
class TweenRotationUtill extends BaseCoroutineObject
{
    @:abiSlot(5)
    public var obj:GameObject;

    @:abiSlot(6)
    public var tween:TweenQuaternion;

    public function new(obj:GameObject)
    {
        super(obj.fE9C29DA1());
        this.obj = obj;
        this.tween = cppbindings.CDD53B308.f101D811F();
    }

    @:hashAbi("F9EF8B08DA4FDA9E4")
    public override function mainCoroutineFunc():Dynamic
    {
        return null;
    }
}
