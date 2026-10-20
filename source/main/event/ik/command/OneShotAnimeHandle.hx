package main.event.ik.command;

import cppbindings.C478EFED3 as ActionRequestHandle;

@:keep
@:chunk("main")
@:hashAbi("C761A52BA84E3CB59")
@:expose("C761A52BA84E3CB59")
class OneShotAnimeHandle
{
    @:abiSlot(1)
    public var objName:String;

    @:abiSlot(2)
    public var isResetRequested:Bool;

    @:abiSlot(3)
    public var resetHandle:ActionRequestHandle;

    @:abiSlot(4)
    public var isFinished:Bool;

    @:abiSlot(5)
    public var animType:Int;

    public function new()
    {
        this.animType = 0;
        this.isFinished = false;
        this.resetHandle = null;
        this.isResetRequested = false;
        this.objName = "";
    }
}
