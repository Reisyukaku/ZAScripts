package main.event.ik.command;

import cppbindings.C478EFED3 as ActionRequestHandle;

@:keep
@:chunk("main")
@:hashAbi("CC4253ED1558F7943")
@:expose("CC4253ED1558F7943")
class ActionHandle
{
    @:abiSlot(1)
    public var hdl:ActionRequestHandle;

    @:abiSlot(2)
    public var name:String;

    @:abiSlot(3)
    public var actionName:String;

    public function new(?_hdl:Dynamic, ?_name:Dynamic, ?_actName:Dynamic)
    {
        this.actionName = "";
        this.name = "";
        this.hdl = null;
        this.hdl = _hdl;
        this.name = _name;
        this.actionName = _actName;
    }
}
