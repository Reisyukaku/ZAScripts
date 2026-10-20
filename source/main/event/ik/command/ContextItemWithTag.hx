package main.event.ik.command;

@:keep
@:chunk("main")
@:hashAbi("CA59A1FBF882A6C3F")
@:expose("CA59A1FBF882A6C3F")
class ContextItemWithTag
{
    @:abiSlot(1)
    public var label:String;

    @:abiSlot(2)
    public var mstxt:String;

    @:abiSlot(3)
    public var type:Int;

    @:abiSlot(4)
    public var bufId:Int;

    @:abiSlot(5)
    public var wazaId:Int;

    @:abiSlot(6)
    public var itemId:String;

    @:abiSlot(7)
    public var number:Null<Int>;

    @:abiSlot(8)
    public var digit:UInt;

    @:abiSlot(9)
    public var dispType:Int;

    @:abiSlot(10)
    public var codeType:Int;

    public function new()
    {
        codeType = 1;
        dispType = 0;
        digit = 0;
        number = 0;
        itemId = "";
        wazaId = 0;
        bufId = 0;
        type = 1;
        mstxt = "";
        label = "";
    }
}
