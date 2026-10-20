package main.event.ik;

import ext.pe.SceneObjectBehavior;

@:keep
@:chunk("main")
@:hashAbi("CB839ACD05BAC1FD4")
@:expose("CB839ACD05BAC1FD4")
class DemoObjectBehavior extends SceneObjectBehavior
{
    public function new(?obj:Dynamic)
    {
        super(obj);
    }

    @:hashAbi("F7C68FEDB79AB6396")
    public override function Setup(context:Dynamic):Void
    {
        main.event.ik.command.IkScriptCommand.S95C437713D4FE833(untyped this.SceneObject);
    }
}
