package main.env.ground_effect.control.generator;

import main.env.ground_effect.control.generator.EffectGeneratorBase;

@:keep
@:chunk("main")
@:hashAbi("C13A53B75C424EC5B")
@:expose("C13A53B75C424EC5B")
class CameraEffectGenerator extends EffectGeneratorBase
{
    @:abiSlot(2)
    public var slot2:Dynamic;

    @:abiSlot(3)
    public var Property:main.env.ground_effect.CameraEffectGenerate;

    public function new(?config:Dynamic)
    {
        super(config);
    }

    @:hashAbi("FED89B77B7E80512A")
    public override function SetProperty(?ps:Dynamic):Dynamic
    {
        Property = new main.env.ground_effect.CameraEffectGenerate(ps);
        return null;
    }

    @:hashAbi("FC72763F5ABB22644")
    public override function CheckInstanceNum(?instanceNum:Dynamic):Dynamic
    {
        return instanceNum >= Property.InstanceMax;
    }

    @:hashAbi("F9AA4F70E3E01F86F")
    public override function OnGenerate(?camera:Dynamic):Dynamic
    {
        return null;
    }
}
