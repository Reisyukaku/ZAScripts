package main.util.tween;

@:keep
@:chunk("main")
@:hashAbi("C76FFE4A5570DA48F")
@:expose("C76FFE4A5570DA48F")
class TweenCatmullRomOption
{
    @:abiSlot(1)
    public var dividedCount:Int;

    @:abiSlot(2)
    public var closed:Bool;

    @:abiSlot(3)
    public var isLockAt:Bool;

    public function new()
    {
        isLockAt = false;
        closed = false;
        dividedCount = 30;
    }
}
