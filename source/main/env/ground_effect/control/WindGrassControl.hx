package main.env.ground_effect.control;

import main.env.ground_effect.control.GroundEffectControlBase;

@:keep
@:chunk("main")
@:hashAbi("C2A471B048BC98EF4")
@:expose("C2A471B048BC98EF4")
class WindGrassControl extends GroundEffectControlBase
{
    @:abiSlot(20)
    public var m_generator:main.env.ground_effect.control.generator.WindGrassEffectGenerator;

    public function new(?owner:Dynamic, ?config:Dynamic, ?generator:Dynamic)
    {
        super(owner, config, generator);
    }

    @:hashAbi("F7A3D296366E973CB")
    public override function Initialize():Dynamic
    {
        super.Initialize();
        this.m_generator = (cast this.m_effectGenerator);
        this.m_raycastRequester.f770D9A62("attr_kusamura");
        return null;
    }

    @:hashAbi("F669F56455D737060")
    public override function calcInstaniatePos(?result:cppbindings.C712737ED):Dynamic
    {
        return this.m_generator.OnCalcGeneratePosition(result);
    }
}
